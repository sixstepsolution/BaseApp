using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Mapings;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using C8.eServices.Mvc.Helpers;
using System.Text;
using System.Threading;
using C8.eServices.Mvc.Models;
using C8.eServices.Mvc.Models.Comm;
using C8.eServices.Mvc.Keys;
using RestSharp;
using System.Web.Script.Serialization;
using C8.eServices.Mvc.ViewModels;
using GoogleMaps.LocationServices;

namespace C8.eServices.Mvc.Controllers
{
    public class WayleaveAccountController : Controller
    {
        public string encp = "spgencpassp";
        private eServicesDbContext db = new eServicesDbContext();
        private WayleaveDbContext dbWayleave = new WayleaveDbContext();
        // GET: WayleaveAccount
        [HttpGet]
        public ActionResult Index()
        {
            //if (Session["wayleaveaccountId"] == null)
            //{
            //    // if IsAuthenticated is false return to login code here....
            //    return Redirect("../Home/WayleaveLogin");

            //}
            IEnumerable<ApplicationInputModel> members = null;
            ViewBag.ApplicationData = members;
            ViewBag.ApplicationDataCount = 0;
            ViewBag.applicationNo = "";
            ViewBag.appStartDate = "";
            ViewBag.appEndDate = "";
            //ViewBag.appOverDueStatus = "";
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["Api_Url"].ToString());
                ApplicationInputClaimModel inpuclaims = new ApplicationInputClaimModel();
                inpuclaims.created_by = Convert.ToInt32(Session["wayleaveaccountId"] != null ? Session["wayleaveaccountId"].ToString() : "0");
                //inpuclaims.isAdmin = "N";
                var myContent = JsonConvert.SerializeObject(inpuclaims);
                var buffer = System.Text.Encoding.UTF8.GetBytes(myContent);
                var byteContent = new ByteArrayContent(buffer);
                byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
                //Called Member default GET All records  
                //GetAsync to send a GET request   
                // PutAsync to send a PUT request  
                ///var result = client.PostAsync("", byteContent).Result
                //Thread.Sleep(5000);
                var responseTask = client.PostAsync("get-applications-with-counts", byteContent);
                //Thread.Sleep(50000);
                responseTask.Wait();
                Thread.Sleep(5000);
                //To store result of web api response.   
                var result = responseTask.Result;

                //If success received   
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<IList<ApplicationInputModel>>();
                    readTask.Wait();

                    members = readTask.Result;
                    ViewBag.ApplicationData = members;
                    ViewBag.ApplicationDataCount = members.Count();
                }
                else
                {
                    //Error response received 
                    ViewBag.ApplicationDataCount = 0;
                    members = Enumerable.Empty<ApplicationInputModel>();
                    ModelState.AddModelError(string.Empty, "Server error try after some time.");
                }
            }
            return View();
        }
        [HttpPost]
        public ActionResult Index(string application_no, DateTime? date_requested_from, DateTime? date_requested_to)
        {
            //if (Session["wayleaveaccountId"] == null)
            //{
            //    // if IsAuthenticated is false return to login code here....
            //    return Redirect("../Home/WayleaveLogin");

            //}
            IEnumerable<ApplicationInputModel> members = null;
            ViewBag.ApplicationData = members;
            ViewBag.ApplicationDataCount = 0;
            ViewBag.applicationNo = "";
            ViewBag.appStartDate = "";
            ViewBag.appEndDate = "";
            //ViewBag.appOverDueStatus = "";
            if (!String.IsNullOrEmpty(application_no))
            {
                ViewBag.applicationNo = application_no;
            }
            if (date_requested_from!=null)
            {
                ViewBag.appStartDate = date_requested_from.Value.Year + "-" + date_requested_from.Value.Month + "-" + date_requested_from.Value.Day;
            }
            if (date_requested_to!=null)
            {
                ViewBag.appEndDate = date_requested_to.Value.Year + "-" + date_requested_to.Value.Month + "-" + date_requested_to.Value.Day;
            }
            //if (!String.IsNullOrEmpty(OverdueStatus))
            //{
            //    ViewBag.appOverDueStatus = OverdueStatus;
            //}
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["Api_Url"].ToString());
                ApplicationInputClaimModel inpuclaims = new ApplicationInputClaimModel();
                inpuclaims.application_no = application_no;
                inpuclaims.date_requested_from = date_requested_from;
                inpuclaims.date_requested_to = date_requested_to;
                //inpuclaims.overdueStatus = OverdueStatus;
                inpuclaims.created_by = Convert.ToInt32(Session["wayleaveaccountId"] != null ? Session["wayleaveaccountId"].ToString() : "0");
                //inpuclaims.isAdmin = "N";
                var myContent = JsonConvert.SerializeObject(inpuclaims);
                var buffer = System.Text.Encoding.UTF8.GetBytes(myContent);
                var byteContent = new ByteArrayContent(buffer);
                byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
                //Called Member default GET All records  
                //GetAsync to send a GET request   
                // PutAsync to send a PUT request  
                ///var result = client.PostAsync("", byteContent).Result
                //Thread.Sleep(5000);
                var responseTask = client.PostAsync("get-applications-with-counts-serach", byteContent);
                //Thread.Sleep(50000);
                responseTask.Wait();
                Thread.Sleep(5000);
                //To store result of web api response.   
                var result = responseTask.Result;

                //If success received   
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<IList<ApplicationInputModel>>();
                    readTask.Wait();

                    members = readTask.Result;
                    ViewBag.ApplicationData = members;
                    ViewBag.ApplicationDataCount = members.Count();
                }
                else
                {
                    //Error response received 
                    ViewBag.ApplicationDataCount = 0;
                    members = Enumerable.Empty<ApplicationInputModel>();
                    ModelState.AddModelError(string.Empty, "Server error try after some time.");
                }
            }
            return View();
        }

        public ActionResult WayleaveAccount(string q=null)
        {
            ViewBag.UpdateProfile = q;
            return View();
        }

        public ActionResult WayleaveApplicationForm(string id = null)
        {
            if (Session["wayleaveaccountId"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../Home/WayleaveLogin");

            }
            if (id != null)
            {
                id = id.Replace(" ", "+");
                ViewBag.ApplicationId = new AesCrypto().Decrypt(id);
            }
            else
            {
                ViewBag.ApplicationId = null;
            }            
            return View();
        }
        public ActionResult WayleaveApplicationNew(string id = null)
        {
            if (Session["wayleaveaccountId"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../Home/WayleaveLogin");
            }
            if (id != null)
            {
                id = id.Replace(" ", "+");
                ViewBag.ApplicationId = new AesCrypto().Decrypt(id);
            }
            else
            {
                ViewBag.ApplicationId = null;
            }

            return View();
        }

        //[HttpGet]
        //public ActionResult Payment_Test()
        //{
        //    return View();
        //}
       
        [HttpGet]
        public ActionResult Payment_Test(string q=null)
        {
            q = q.Replace(" ", "+");
            string applicationNumber= new AesCrypto(encp).Decrypt(q);
            var applicationPrice = dbWayleave.APPLICATION_PAYMENT_PRICE.FirstOrDefault();
            var applicationData = dbWayleave.WL_APPLICATIONFORM.Where(s => s.APPLICATION_NUMBER == applicationNumber).FirstOrDefault();
            //Paymentgateway process
            PaymentHelper ph = new PaymentHelper
            {
                pgMerchantId = "pg_app_tps",//"pg_crm_app_wls",// 
                voteNumber = "4TESTVOTENOmkzzzzz16",
                pgMerchantReference = applicationNumber,
                pgMerchantDescription = "Wayleave Application Fee",
                Amount = applicationPrice!=null?Convert.ToString(applicationPrice.APPLICATION_PRICE):"500",
                pgEmail = applicationData!=null? applicationData.PROPERTYOWNER_EMAIL:"",
                pgMobile = applicationData != null ? applicationData.PROPERTYOWNER_MOBILENO : "",
                customerFirstName = applicationData != null ? applicationData.PROPERTYOWNER_NAME : "",
                customerLastName = applicationData != null ? applicationData.PROPERTYOWNER_SURNAME : "",
                returnUrl = ConfigurationManager.AppSettings["Base_Url"].ToString() + "WayleaveAccount/ReturnBackUrl",
                adhocRef1 = "ERF",
                adhocRef2 = applicationNumber,
                adhocRef3 = "",
                adhocRef4 = "",
                adhocRef5 = "",
            };
            string paymentUrl = ConfigurationManager.AppSettings["Paymentgateway_QA"].ToString();
            string enc = EncryptPaymentRequest(ph);
            //Encrypt the Single String to and Encrypted string e
            //var e = new AesCrypto(encp).Encrypt(enc);
            //string encodedq = string.Format("{0}", HttpUtility.UrlEncode(e));
            paymentUrl = paymentUrl + "?q=" + enc;
            return Redirect(paymentUrl);
            //returnUrl = returnUrl + ConfigurationManager.AppSettings["Base_Url"].ToString() + "WayleaveAccount/ReturnBackUrl";
            //string paymentUrl = ConfigurationManager.AppSettings["Paymentgateway_QA"].ToString();
            //string enc = string.Format("{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|{11}|{12}|{13}|{14}",
            //  pgMerchantId, voteNumber, pgMerchantReference, pgMerchantDescription, Amount,
            //  pgEmail, pgMobile, customerFirstName, customerLastName, returnUrl, adhocRef1, adhocRef2, adhocRef3, adhocRef4, adhocRef5);

            ////AppSetting PGDomain = db.AppSettings.FirstOrDefault(s => s.Key == "pg_domain");

            ////Encrypt the Single String to and Encrypted string e
            //var e = new AesCrypto(encp).Encrypt(enc);
            ////string encodedq = string.Format("{0}", HttpUtility.UrlEncode(e));
            //paymentUrl = paymentUrl + "?q=" + e;
            //return Redirect(paymentUrl);
        }

        public string EncryptPaymentRequest(PaymentHelper ph)
        {
            string enc = string.Format("{0}|{1}|{2}|{3}|{4}|{5}|{6}|{7}|{8}|{9}|{10}|{11}|{12}|{13}|{14}",
              ph.pgMerchantId, ph.voteNumber, ph.pgMerchantReference, ph.pgMerchantDescription, ph.Amount,
              ph.pgEmail, ph.pgMobile, ph.customerFirstName, ph.customerLastName, ph.returnUrl, ph.adhocRef1, ph.adhocRef2, ph.adhocRef3, ph.adhocRef4, ph.adhocRef5);

            //Encrypt the Single String to and Encrypted string e
            var e = new AesCrypto(encp).Encrypt(enc);
            return e;
        }

        [HttpGet]
        public ActionResult ReturnBackUrl(string q)
        {
            ViewBag.ResponseData = null;// new string[20];
            if (q!=null)
            {
                var payLater = db.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.PayLater);
                var PaynowPaymentCompletion = db.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.PaynowPaymentCompletion);
                var departmentPaymentSuccess = db.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.DepartmentPaymentSuccess);
                AesCrypto aes = new AesCrypto(encp);// normal Decryption follows
                var decrypted = aes.Decrypt(q);
                var values = decrypted.Split('|');
                ViewBag.ResponseData = values;
                string applicationNo = values[16];
                string paymentMode = values[8];
                string paymentReceiptNo = values[4];
                string paymentDate = values[5]+" "+ values[6];
                string paymentDescription = values[9];
                string paymentStatus = values[13];

                var appData = dbWayleave.WL_APPLICATIONFORM.Where(s => s.APPLICATION_NUMBER == applicationNo).FirstOrDefault();
                if(appData!=null)
                {
                    var departmentsDataResponse = dbWayleave.WL_DEPARTMENTS.Where(s => s.APP_ID == appData.APP_ID).ToList();
                    appData.PAYMENT_RECEIPT_NO = paymentReceiptNo;
                    appData.PAYMENT_MODE = paymentMode;
                    appData.PAYMENT_DATE = paymentDate;
                    appData.PAYMENT_DESCRIPTION = paymentDescription;
                    appData.PAYMENT_STATUS = paymentStatus;
                    if (paymentStatus == "Success")
                    {
                        appData.STATUS_ID = 2;
                        appData.APPLICATION_STEP_DESCRIPTION = PaynowPaymentCompletion != null ? PaynowPaymentCompletion.Description : "";
                        foreach (WL_DEPARTMENTS department in departmentsDataResponse)
                        {
                            department.APPLICATION_STATUS=(departmentPaymentSuccess!=null?departmentPaymentSuccess.Description:"");                            
                            department.APP_ID = appData.APP_ID;
                            dbWayleave.SaveChanges();
                        }
                    }
                    else
                    {
                        appData.STATUS_ID = 8;
                        appData.APPLICATION_STEP_DESCRIPTION = (payLater != null ? payLater.Description : "");
                    }                    
                    dbWayleave.SaveChanges();                    
                }
            }            
            return View();
        }

        [HttpGet]
        public string GetAddress(string latilngi)
        {
            var address = latilngi;
            var lat = latilngi.Split(',')[0].Trim(' ');
            var lng = latilngi.Split(',')[1].Trim(' ');
            var uri = Uri.EscapeUriString("http://129.232.208.13/EkuArcGIS_IMS_Instance/api/EkurhuleniArcGIS/GetAddress?latitude=" + lat + "&longitude=" + lng);
            //var uri = Uri.EscapeUriString("http://129.232.208.13:8082/api/EkurhuleniArcGIS/GetAddress?latitude="+lat+"&longitude="+lng);
            var client = new RestClient(uri);
            var request = new RestRequest("");
            request.RequestFormat = DataFormat.Json;

            var response = client.Execute(request);

            var message = new JavaScriptSerializer().Deserialize<GisResponseViewModel>(response.Content);
            var json = new JavaScriptSerializer().Serialize(message);
            //var test = "";
            return json;
        }
    }
}