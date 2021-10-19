using AutoMapper;
using Rotativa.Options;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Mvc;
using C8.eServices.Mvc.Models;
using C8.eServices.Mvc.Models.Mapings;
using C8.eServices.Mvc.Models.Services;
using C8.eServices.Mvc.DataAccessLayer;
using System.Net.Http;
using System.Configuration;
using Newtonsoft.Json;
using System.Net.Http.Headers;
using C8.eServices.Mvc.Helpers;
using C8.eServices.Mvc.Keys;
using System.Net;
using C8.eServices.Mvc.Models.Comm;

namespace C8.eServices.Mvc.Controllers
{
    public class WLController : Controller
    {
        private WayleaveDbContext db = new WayleaveDbContext();
        private eServicesDbContext dbeService = new eServicesDbContext();
        // GET: WL
        public ActionResult Index()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");

            }

            IEnumerable<ApplicationInputModel> members = null;
            ViewBag.ApplicationData = members;
            ViewBag.ApplicationDataCount = 0;
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["Api_Url"].ToString());
                ApplicationInputClaimModel inpuclaims = new ApplicationInputClaimModel();
                inpuclaims.created_by = 0;//Convert.ToInt32(Session["wayleaveaccountId"] != null ? Session["wayleaveaccountId"].ToString() : "0");
                var myContent = JsonConvert.SerializeObject(inpuclaims);
                var buffer = System.Text.Encoding.UTF8.GetBytes(myContent);
                var byteContent = new ByteArrayContent(buffer);
                byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
                //Called Member default GET All records  
                //GetAsync to send a GET request   
                // PutAsync to send a PUT request  
                ///var result = client.PostAsync("", byteContent).Result
                var responseTask = client.PostAsync("get-applications-with-counts", byteContent);
                responseTask.Wait();

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

        // GET: WL
        public ActionResult ApplicationForm()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");

            }
            return View();
        }

        public ActionResult AddDepartmentUsers()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");

            }

            return View();
        }

        public ActionResult UpdatePaymentPrice()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");

            }
            var Pricedata = db.APPLICATION_PAYMENT_PRICE.FirstOrDefault();
            ViewBag.ApplicationPrice = Pricedata != null ? Pricedata.APPLICATION_PRICE : 0;
            return View();
        }

        public ActionResult ApplicationFormNew(string id=null)
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");

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

        public ActionResult WayleaveAccount(string id=null)
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }
            if (id != null)
            {
                id = id.Replace(" ", "+");
                ViewBag.AccountId = new AesCrypto().Decrypt(id);
            }
            else
            {
                ViewBag.AccountId = null;
            }
            return View();
        }

        [HttpGet]
        public ActionResult WayleaveAccountDashboard()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }
            List<SelectListItem> userTypeList = new List<SelectListItem>() {
                new SelectListItem {
                    Text = "Contractor", Value = "Contractor"
                },
                new SelectListItem {
                    Text = "Consultant", Value = "Consultant"
                },
            };
            ViewBag.userTypeList = userTypeList;

            IEnumerable<WayleaveAccountDashboardModel> members = null;
            ViewBag.WayleaveAccountData = members;
            ViewBag.WayleaveAccountDataCount = 0;
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["Api_Url"].ToString());
                //inpuclaims.created_by = 0;//Convert.ToInt32(Session["wayleaveaccountId"] != null ? Session["wayleaveaccountId"].ToString() : "0");
                //var myContent = JsonConvert.SerializeObject(inpuclaims);
                //var buffer = System.Text.Encoding.UTF8.GetBytes(myContent);
                //var byteContent = new ByteArrayContent(buffer);
                //byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
                //Called Member default GET All records  
                //GetAsync to send a GET request   
                // PutAsync to send a PUT request  
                ///var result = client.PostAsync("", byteContent).Result
                var responseTask = client.GetAsync("get-wl-accounts-with-counts");
                responseTask.Wait();

                //To store result of web api response.   
                var result = responseTask.Result;

                //If success received   
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<IList<WayleaveAccountDashboardModel>>();
                    readTask.Wait();

                    members = readTask.Result;
                    ViewBag.WayleaveAccountData = members;
                    ViewBag.WayleaveAccountDataCount = members.Count();
                }
                else
                {
                    //Error response received  
                    ViewBag.WayleaveAccountDataCount = 0;
                    members = Enumerable.Empty<WayleaveAccountDashboardModel>();
                    ModelState.AddModelError(string.Empty, "Server error try after some time.");
                }
            }

            IEnumerable<MasterInputCalimsModel> statusTypes = null;

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["Api_Url"].ToString());                
                var responseTask = client.GetAsync("get-application-staus-types");
                responseTask.Wait();

                //To store result of web api response.   
                var result = responseTask.Result;

                //If success received   
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<IList<MasterInputCalimsModel>>();
                    readTask.Wait();

                    statusTypes = readTask.Result;
                    ViewBag.statusTypes = statusTypes;
                }
                else
                {
                    //Error response received   
                    statusTypes = Enumerable.Empty<MasterInputCalimsModel>();
                    ModelState.AddModelError(string.Empty, "Server error try after some time.");
                }
            }
            return View();
        }

        [HttpPost]
        public ActionResult WayleaveAccountDashboard(WayleaveInputClaimModel inpuclaims)
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }
            List<SelectListItem> userTypeList = new List<SelectListItem>() {
                new SelectListItem {
                    Text = "Contractor", Value = "Contractor"
                },
                new SelectListItem {
                    Text = "Consultant", Value = "Consultant"
                },
            };
            ViewBag.userTypeList = userTypeList;

            IEnumerable<WayleaveAccountDashboardModel> members = null;

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["Api_Url"].ToString());
                //inpuclaims.created_by = 0;//Convert.ToInt32(Session["wayleaveaccountId"] != null ? Session["wayleaveaccountId"].ToString() : "0");
                var myContent = JsonConvert.SerializeObject(inpuclaims);
                var buffer = System.Text.Encoding.UTF8.GetBytes(myContent);
                var byteContent = new ByteArrayContent(buffer);
                byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
                //Called Member default GET All records  
                //GetAsync to send a GET request   
                // PutAsync to send a PUT request  
                ///var result = client.PostAsync("", byteContent).Result
                var responseTask = client.PostAsync("get-wayleave-with-counts-serach", byteContent);
                responseTask.Wait();

                //To store result of web api response.   
                var result = responseTask.Result;

                //If success received   
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<IList<WayleaveAccountDashboardModel>>();
                    readTask.Wait();

                    members = readTask.Result;
                    ViewBag.WayleaveAccountData = members;
                }
                else
                {
                    //Error response received   
                    members = Enumerable.Empty<WayleaveAccountDashboardModel>();
                    ModelState.AddModelError(string.Empty, "Server error try after some time.");
                }
            }
            return View();
        }

        [HttpGet]
        public ActionResult ApplicationStatusList()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }
            IEnumerable<ApplicationInputModel> members = null;
            ViewBag.ApplicationStatusList = null;
            ViewBag.ApplicationStatusListCount = 0;
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["Api_Url"].ToString());
                ApplicationInputClaimModel inpuclaims = new ApplicationInputClaimModel();
                inpuclaims.created_by = 0;//Convert.ToInt32(Session["wayleaveaccountId"] != null ? Session["wayleaveaccountId"].ToString() : "0");
                var myContent = JsonConvert.SerializeObject(inpuclaims);
                var buffer = System.Text.Encoding.UTF8.GetBytes(myContent);
                var byteContent = new ByteArrayContent(buffer);
                byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
                //Called Member default GET All records  
                //GetAsync to send a GET request   
                // PutAsync to send a PUT request  
                ///var result = client.PostAsync("", byteContent).Result
                var responseTask = client.PostAsync("get-applications-status-list", byteContent);
                responseTask.Wait();

                //To store result of web api response.   
                var result = responseTask.Result;

                //If success received   
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<IList<ApplicationInputModel>>();
                    readTask.Wait();

                    members = readTask.Result;
                    var tt = (List<ApplicationInputModel>)members;
                    var grantWayleave = dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.GrantWayleaveApplication);
                    tt = tt.Where(s => s.name == (grantWayleave != null ? grantWayleave.Description : "")).ToList();
                    var statusResult = tt.FirstOrDefault().applicationList;
                    ViewBag.ApplicationStatusList = statusResult;
                    ViewBag.ApplicationStatusListCount = statusResult.Count();
                }
                else
                {
                    //Error response received  
                    ViewBag.ApplicationStatusList = null;
                    ViewBag.ApplicationStatusListCount = 0;
                    members = Enumerable.Empty<ApplicationInputModel>();
                    ModelState.AddModelError(string.Empty, "Server error try after some time.");
                }
            }
            return View();
        }

        [HttpPost]
        public ActionResult ApplicationStatusList(string searchKeyword)
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }
            IEnumerable<ApplicationInputModel> members = null;
            ViewBag.ApplicationStatusList = null;
            ViewBag.ApplicationStatusListCount = 0;
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["Api_Url"].ToString());
                ApplicationInputClaimModel inpuclaims = new ApplicationInputClaimModel();
                inpuclaims.created_by = 0;//Convert.ToInt32(Session["wayleaveaccountId"] != null ? Session["wayleaveaccountId"].ToString() : "0");
                var myContent = JsonConvert.SerializeObject(inpuclaims);
                var buffer = System.Text.Encoding.UTF8.GetBytes(myContent);
                var byteContent = new ByteArrayContent(buffer);
                byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
                //Called Member default GET All records  
                //GetAsync to send a GET request   
                // PutAsync to send a PUT request  
                ///var result = client.PostAsync("", byteContent).Result
                var responseTask = client.PostAsync("get-applications-status-list", byteContent);
                responseTask.Wait();

                //To store result of web api response.   
                var result = responseTask.Result;

                //If success received   
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<IList<ApplicationInputModel>>();
                    readTask.Wait();

                    members = readTask.Result;
                    var tt = (List<ApplicationInputModel>)members;
                    var grantWayleave = dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.GrantWayleaveApplication);
                    tt = tt.Where(s => s.name == (grantWayleave!=null? grantWayleave.Description:"")).ToList();
                    var statusResult = tt.FirstOrDefault().applicationList;
                    var finalResult = statusResult.Where(s => s.applicationNumber == searchKeyword).ToList();
                    ViewBag.ApplicationStatusList = finalResult;
                    ViewBag.ApplicationStatusListCount = finalResult.Count();
                }
                else
                {
                    //Error response received  
                    ViewBag.ApplicationStatusList = null;
                    ViewBag.ApplicationStatusListCount = 0;
                    members = Enumerable.Empty<ApplicationInputModel>();
                    ModelState.AddModelError(string.Empty, "Server error try after some time.");
                }
            }
            return View();
        }

        public ActionResult InspectionList()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }
            IEnumerable<ApplicationInputModel> members = null;

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["Api_Url"].ToString());
                ApplicationInputClaimModel inpuclaims = new ApplicationInputClaimModel();
                inpuclaims.created_by = 0;//Convert.ToInt32(Session["wayleaveaccountId"] != null ? Session["wayleaveaccountId"].ToString() : "0");
                var myContent = JsonConvert.SerializeObject(inpuclaims);
                var buffer = System.Text.Encoding.UTF8.GetBytes(myContent);
                var byteContent = new ByteArrayContent(buffer);
                byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
                //Called Member default GET All records  
                //GetAsync to send a GET request   
                // PutAsync to send a PUT request  
                ///var result = client.PostAsync("", byteContent).Result
                var responseTask = client.PostAsync("get-applications-status-list", byteContent);
                responseTask.Wait();

                //To store result of web api response.   
                var result = responseTask.Result;

                //If success received   
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<IList<ApplicationInputModel>>();
                    readTask.Wait();

                    members = readTask.Result;
                    var tt = (List<ApplicationInputModel>)members;

                    var grantWayleave = dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.GrantWayleaveApplication);
                    tt = tt.Where(s => s.name == (grantWayleave != null ? grantWayleave.Description : "")).ToList();
                    ViewBag.ApplicationStatusList = tt.FirstOrDefault().applicationList;
                }
                else
                {
                    //Error response received   
                    members = Enumerable.Empty<ApplicationInputModel>();
                    ModelState.AddModelError(string.Empty, "Server error try after some time.");
                }
            }
            return View();
        }

        public ActionResult PreInspectionList()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }
            IEnumerable<ApplicationInputModel> members = null;

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["Api_Url"].ToString());
                ApplicationInputClaimModel inpuclaims = new ApplicationInputClaimModel();
                inpuclaims.created_by = 0;//Convert.ToInt32(Session["wayleaveaccountId"] != null ? Session["wayleaveaccountId"].ToString() : "0");
                var myContent = JsonConvert.SerializeObject(inpuclaims);
                var buffer = System.Text.Encoding.UTF8.GetBytes(myContent);
                var byteContent = new ByteArrayContent(buffer);
                byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
                //Called Member default GET All records  
                //GetAsync to send a GET request   
                // PutAsync to send a PUT request  
                ///var result = client.PostAsync("", byteContent).Result
                var responseTask = client.PostAsync("get-applications-status-list", byteContent);
                responseTask.Wait();

                //To store result of web api response.   
                var result = responseTask.Result;

                //If success received   
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<IList<ApplicationInputModel>>();
                    readTask.Wait();

                    members = readTask.Result;
                    var tt = (List<ApplicationInputModel>)members;

                    var grantWayleave = dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.GrantWayleaveApplication);
                    tt = tt.Where(s => s.name == (grantWayleave != null ? grantWayleave.Description : "")).ToList();
                    ViewBag.ApplicationStatusList = tt.FirstOrDefault().applicationList;
                }
                else
                {
                    //Error response received   
                    members = Enumerable.Empty<ApplicationInputModel>();
                    ModelState.AddModelError(string.Empty, "Server error try after some time.");
                }
            }
            return View();
        }

        public ActionResult GetInspectionPdf(int appId)
        {
            var root = Server.MapPath("~/uploads/");
            string pdfname = "ApplicationStatus.pdf";
            var path = Path.Combine(root, pdfname);
            path = Path.GetFullPath(path);
            InspectionPdfData pdf = new InspectionPdfData();
            pdf.AppId = appId;
            //ProjectPdfData pdf1 = new ProjectPdfData();
            //pdf1.PROJECT_ID = ProjectID;
            //pdf1.COMPANY_ID = Convert.ToInt32(Session["CompanyRefId"].ToString());
            var actionPDF = new Rotativa.ActionAsPdf("InspectionLetterPdf", pdf) //some route values)
            {

                FileName = pdfname,
                SaveOnServerPath = path,
                PageSize = Size.A4,
                //PageOrientation = Rotativa.Options.Orientation.Landscape,
                PageOrientation = Rotativa.Options.Orientation.Portrait,
                PageMargins = { Bottom = 10, Left = 10, Top = 15, Right = 10 }
            };
            byte[] applicationPDFData = actionPDF.BuildPdf(ControllerContext);
            //return new Rotativa.ActionAsPdf("testRotativa1", pdf);
            //return new Rotativa.ActionAsPdf("testRotativa1", pdf) { FileName = pdf.RefNumber+"PrintReceipt.pdf" };
            return Json(pdfname, JsonRequestBehavior.AllowGet);
        }

        public ActionResult InspectionLetterPdf(InspectionPdfData pdf = null)
        {
            ViewBag.streetAddress = "";
            ViewBag.inspectionDate = "";
            ViewBag.applicationDate = "";
            ViewBag.applicationEndDate = "";
            ViewBag.signature = "";
            ViewBag.suburb = "";
            ViewBag.UserType = "";
            var res = db.WL_APPLICATIONFORM.Find(pdf.AppId);
            if (res != null)
            {
                var signatureDetails = db.WL_UPLOAD_SIGNATURE.Where(s=>s.IS_ACTIVE=="Y").FirstOrDefault();
                ViewBag.signature = signatureDetails!=null? signatureDetails.DOCUMENT_NAME:"";
                //int acNo = Convert.ToInt32(res.PROPERTYOWNER_ACCOUNT_NO??"0");
                var address = db.WL_ACCOUNTS.Where(s => s.ACCOUNT_NUMBER == res.PROPERTYOWNER_ACCOUNT_NO).FirstOrDefault();//!=null? db.WL_ACCOUNTS.Where(s => s.ACCOUNT_ID == acNo).FirstOrDefault().
                //ViewBag.inspectionDate =res.INSPECTION_DATE != null ? Convert.ToDateTime(res.INSPECTION_DATE).ToString("yyyy-MM-dd") : "";
                ViewBag.inspectionDate =DateTime.Now.ToString("yyyy-MM-dd");
                ViewBag.streetAddress = address.STREET_NAME + " " + address.CITY + " " + address.PROVINCE + " " + address.COUNTRY + " - " + address.POST_CODE;
                ViewBag.UserType = address.TYPE_USER;
                ViewBag.suburb = address.CITY;
                ViewBag.company = address.COMPANY_NAME;
                ViewBag.telephone = address.TELEPHONE_NUMBER;
                ViewBag.streetName = address.STREET_NAME;
                ViewBag.ApplicationAmount = "500";
                ViewBag.applicationDate = res.STARTING_DATE != null ? Convert.ToDateTime(res.STARTING_DATE).ToString("yyyy-MM-dd") : "";
                ViewBag.applicationEndDate = res.COMPLETION_DATE != null ? Convert.ToDateTime(res.COMPLETION_DATE).ToString("yyyy-MM-dd") : "";
            }
            return View(res);
        }

        [HttpGet]
        public ActionResult GetInspectionPdfNew(int appId)
        {
            var root = Server.MapPath("~/uploads/");
            string pdfname = "Inspection.pdf";
            var path = Path.Combine(root, pdfname);
            path = Path.GetFullPath(path);
            InspectionPdfData pdf = new InspectionPdfData();
            pdf.AppId = appId;
            //pdf1.PROJECT_ID = ProjectID;
            //pdf1.COMPANY_ID = Convert.ToInt32(Session["CompanyRefId"].ToString());
            var actionPDF = new Rotativa.ActionAsPdf("InspectionLetterPdfNew", pdf) //some route values)
            {
                FileName = pdfname,
                SaveOnServerPath = path,
                PageSize = Size.A4,
                //PageOrientation = Rotativa.Options.Orientation.Landscape,
                PageOrientation = Rotativa.Options.Orientation.Portrait,
                PageMargins = { Bottom = 10, Left = 10, Top = 15, Right = 10 }
            };
            byte[] applicationPDFData = actionPDF.BuildPdf(ControllerContext);
            //return new Rotativa.ActionAsPdf("testRotativa1", pdf);
            //return new Rotativa.ActionAsPdf("testRotativa1", pdf) { FileName = pdf.RefNumber+"PrintReceipt.pdf" };
            return Json(pdfname, JsonRequestBehavior.AllowGet);
        }

        public ActionResult InspectionLetterPdfNew(InspectionPdfData pdf = null)
        {
            ViewBag.streetAddress = "";
            ViewBag.inspectionDate = "";
            ViewBag.applicationDate = "";
            ViewBag.applicationEndDate = "";
            ViewBag.UserType = "";
            var res = db.WL_APPLICATIONFORM.Find(pdf.AppId);
            if (res != null)
            {
                //int acNo = Convert.ToInt32(res.PROPERTYOWNER_ACCOUNT_NO??"0");
                var address = db.WL_ACCOUNTS.Where(s => s.ACCOUNT_NUMBER == res.PROPERTYOWNER_ACCOUNT_NO).FirstOrDefault();//!=null? db.WL_ACCOUNTS.Where(s => s.ACCOUNT_ID == acNo).FirstOrDefault().
                ViewBag.inspectionDate = res.INSPECTION_DATE != null ? Convert.ToDateTime(res.INSPECTION_DATE).ToString("yyyy-MM-dd") : "";
                ViewBag.streetAddress = address.STREET_NAME + " " + address.CITY + " " + address.PROVINCE + " " + address.COUNTRY + " - " + address.POST_CODE;
                ViewBag.UserType = address.TYPE_USER;
                ViewBag.applicationDate = res.STARTING_DATE != null ? Convert.ToDateTime(res.STARTING_DATE).ToString("yyyy-MM-dd") : "";
                ViewBag.applicationEndDate = res.COMPLETION_DATE != null ? Convert.ToDateTime(res.COMPLETION_DATE).ToString("yyyy-MM-dd") : "";
            }
            return View(res);
        }

        public ActionResult UploadSignature()
        {
            var signDetails = db.WL_UPLOAD_SIGNATURE.ToList();
            ViewBag.signatureList = signDetails.Count>0? signDetails.FirstOrDefault().DOCUMENT_NAME:null;
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");

            }

            return View();
        }

        public ActionResult AuditTrail()
        {
            //var appDetails = db.WL_APPLICATIONFORM_AUDIT.ToList();

            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }
            ViewBag.applicationList = null;
            //var ttt = db.WL_ACCOUNTS.Select(s => new { s.CONTACT_PERSON_FIRST_NAME, s.CONTACT_PERSON_LAST_NAME, s.ACCOUNT_ID }).Distinct().ToList();
            //ViewBag.VBMobileList = new SelectList(ttt, "CONTACT_PERSON_FIRST_NAME", "CONTACT_PERSON_FIRST_NAME");


            //var oppList = (from o in db.WL_ACCOUNTS
            //               select new SelectListItem { Value = o.CONTACT_PERSON_FIRST_NAME+""+o.CONTACT_PERSON_LAST_NAME, Text = o.CONTACT_PERSON_FIRST_NAME + "" + o.CONTACT_PERSON_LAST_NAME }).Distinct().ToList<SelectListItem>();

            ////insert element at first position
            //oppList.Insert(0, new SelectListItem() { Value = "All", Text = "Select All" });
            //ViewBag.VBUserList = oppList;



            ViewBag.applicationNo = null;
            ViewBag.applicationStatus = null;
            ViewBag.appStartDate = null;
            ViewBag.appEndDate = null;
            ViewBag.appUsername = null;
            ViewBag.errorStatus = null;
            return View();
        }
        [HttpPost]
        public ActionResult AuditTrail(string searchKeyword,string status,DateTime? startDate,DateTime? endDate, string username)
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }
            ViewBag.applicationNo = searchKeyword;
            ViewBag.applicationStatus = status;
            ViewBag.appStartDate = "";
            ViewBag.appEndDate = "";
            ViewBag.appUsername = username;
            ViewBag.errorStatus = null;
            //var ttt = db.WL_ACCOUNTS.Select(s => new { s.CONTACT_PERSON_FIRST_NAME, s.CONTACT_PERSON_LAST_NAME, s.ACCOUNT_ID }).Distinct().ToList();
            //ViewBag.VBMobileList = new SelectList(ttt, "CONTACT_PERSON_FIRST_NAME", "CONTACT_PERSON_FIRST_NAME");
           
            //if (String.IsNullOrEmpty(searchKeyword) && String.IsNullOrEmpty(status))
            //{
            //    ViewBag.errorStatus = "No result found!";
            //    ViewBag.applicationList = null;
            //    return View();
            //}
            var appDetails = db.WL_APPLICATIONFORM_AUDIT.OrderBy(d => d.AUDIT_ID).ToList();
            if (!String.IsNullOrEmpty(searchKeyword))
            {
                appDetails= appDetails.Where(s => s.APPLICATION_NUMBER == searchKeyword).ToList();
            }
            if (!String.IsNullOrEmpty(status))
            {
                if (status == "All")
                {
                    appDetails = appDetails.ToList();
                }
                else
                {
                    appDetails = appDetails.Where(s => s.ACTION.Contains(status)).ToList();
                }                
            }
            if (!String.IsNullOrEmpty(username))
            {
                if (username == "All")
                {
                    appDetails = appDetails.ToList();
                }
                else
                {
                    appDetails = appDetails.Where(s => s.CREATED_USER.Contains(username)).ToList();
                }
            }

            if (startDate!=null)
            {
                ViewBag.appStartDate = startDate.Value.Year+"-"+ startDate.Value.Month+"-"+ startDate.Value.Day;
                
                //appDetails = appDetails.Where(s => s.CREATED_DATE>=startDate).ToList();
                appDetails = appDetails.Where(s => s.CREATED_DATE.Date >= startDate.Value.Date).ToList();
            }
            if (endDate != null)
            {
                ViewBag.appEndDate = endDate.Value.Year + "-" + endDate.Value.Month + "-" + endDate.Value.Day; ;
                //appDetails = appDetails.Where(s =>s.CREATED_DATE<= endDate).ToList();
                appDetails = appDetails.Where(s => s.CREATED_DATE.Date <= endDate.Value.Date).ToList();
            }

            if (appDetails.Count > 0)
            {
                ViewBag.applicationList = appDetails;
            }
            else
            {
                ViewBag.errorStatus = "No result found!";
                ViewBag.applicationList = null;
            }            
            return View();
        }

        [HttpGet]
        public ActionResult GetUserNames()
        {
            Dictionary<string, object> dct = new Dictionary<string, object>();
            db.Configuration.LazyLoadingEnabled = false;
            var result = db.Users.ToList();
            //var result = db.WL_ACCOUNTS.Select(s => new { s.CONTACT_PERSON_FIRST_NAME, s.CONTACT_PERSON_LAST_NAME, s.ACCOUNT_ID }).Distinct().ToList();
            if (result.Count > 0)
            {
                dct.Add("success", result);
            }
            else
            {
                dct.Add("error", false);
            }
            return Json(dct,JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult Reports()
        {
            //var appDetails = db.WL_APPLICATIONFORM_AUDIT.ToList();

            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }
            TempData["ReportResult"] = "";
            ViewBag.result = null;           
            return View();
        }
        [HttpPost]
        public ActionResult Reports(string documentType, string reportType, DateTime? startDate, DateTime? endDate,string status)
        {
            //if (Session["ekurhuleniData"] == null)
            //{
            //    // if IsAuthenticated is false return to login code here....
            //    return Redirect("../home/index");
            //}
            try
            {
                TempData["ReportResult"] = "";
                ViewBag.errorStatus = null;
                if (!String.IsNullOrEmpty(documentType) && !String.IsNullOrEmpty(reportType))
                {
                    Response.ClearHeaders();
                    string f1 = string.Empty;
                    string f2 = string.Empty;
                    string f3 = string.Empty;
                    eServicesDbContext context = new eServicesDbContext();
                    AppSetting AdUser = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.AdUserName);
                    AppSetting AdPass = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.AdPassword);
                    AppSetting AdDom = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.adDomain);
                    //AppSetting genBillLink = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.adGenBillLink);
                    NetworkCredential nwc = new NetworkCredential(AdUser.Value, AdPass.Value);
                    WebClient client = new WebClient();
                    client.Credentials = nwc;
                    //documentType = "PDF";
                    //string yearN = "2021";// StateYear;
                    //string month = "10";// stateMonth;

                    if (documentType == "excel")
                    {
                        f1 = reportType + ReportKeys.ExcelExtension;
                        f2 = ReportKeys.ExcelKey;
                    }
                    if (documentType == "pdf")
                    {
                        f1 = reportType + ReportKeys.PdfExtension;
                        f2 = ReportKeys.PdfKey;
                    }
                    if (documentType == "word")
                    {
                        f1 = reportType + ReportKeys.WordExtension;
                        f2 = ReportKeys.WordKey;
                    }

                    //f3 = ConvertToQuery(reportType);
                    string fileName = f1;
                    string file_Name = string.Format("{0}-{1}", DateTime.Now.ToString("ddMMMyyyyHHmmss"), fileName.Replace("-", ""));
                    fileName = Path.Combine(Server.MapPath("~/uploads/"), file_Name);

                    //string ttt = "Approved%20Application";
                    //string ttt1 = "Progress%20Report";
                    //string ttt2 = "Total%20Wayleave%20Applications%20Created";
                    string stdate = startDate.Value.Year + "/" + startDate.Value.Month + "/" + startDate.Value.Day;
                    string endate = endDate.Value.Year + "/" + endDate.Value.Month + "/" + endDate.Value.Day;
                    string reportURL = string.Empty;
                    switch (reportType)
                    {
                        case "ApprovedApplication":
                            f3 = "Approved+Application";
                            reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2f" + f3 + "&rs:Command=Render&rs:Format=" + f2 + "&SD=" + stdate + "&ED=" + endate;
                            break;
                        case "ProgressReport":
                            f3 = "Progress+Report";
                            reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2f" + f3 + "&rs:Command=Render&rs:Format=" + f2 + "&SD=" + stdate + "&ED=" + endate + "&Status="+ status;
                            break;
                        case "TotalWayleaveApplicationsCreated":
                            f3 = "Total%20Wayleave%20Applications%20Created";
                            reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2f" + f3 + "&rs:Command=Render&rs:Format=" + f2 + "&SD=" + stdate + "&ED=" + endate + "&ReportParameter1="+ status;
                            break;
                        default:
                            break;

                    }

                    //string reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2f" + f3 + "&rs:Command=Render&rs:Format=" + f2 + "&SD=" + startDate + "&ED=" + endDate;


                    //string sttt = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2fApproved+Application&rs:Command=Render&rs:Format=EXCELOPENXML&SD=2021/08/01 00:00:00&ED=2021/10/12 00:00:00";
                    //string reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2fApproved+Application&rs:Command=Render&rs:Format=" + documentType + "&SD=2021/08/01 00:00:00&ED=2021/10/12 00:00:00";
                    //string reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2fApproved+Application&rs:Command=Render&rs:Format=" + documentType + "&SD=2021/08/01 00:00:00&ED=2021/10/12 00:00:00";
                    //string ttt = "http://10.1.2.230:85/ProBudget_Reports/report/Wayleave/Progress%20Report?SD=7/1/2021&ED=10/31/2021&Status=8";
                    //string reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fCase_Management_Reports%2fNo_of_Cases_Report&rs:Command=Render&rs:Format=PDF&year=" + yearN + "&month=" + month;
                    client.DownloadFile(reportURL, fileName);
                    byte[] fileBytes = System.IO.File.ReadAllBytes(@"" + fileName);
                    string dsss=downloadReport(fileName);
                    //Response.Headers.Clear();
                    //Response.BufferOutput = true;
                    TempData["ReportResult"] = "success";
                    //Response.Redirect("../WL/Reports", false);

                    return RedirectToAction("Reports", "WL");
                    //Response.ContentType = "application/pdf";
                    ////Response.AppendHeader("Content-Disposition", "attachment; filename="+f1);
                    //Response.TransmitFile(fileName);
                    //Response.End();
                    //TempData["ReportResult"] = "success";
                    //return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, f1);

                    //return File(client.DownloadData(reportURL), "application/pdf");
                }

            }
            catch (Exception ex)
            {
                string sttr = ex.Message;
                TempData["ReportResult"] = "error";
            }

            return View();
        }

        [HttpPost]
        public ActionResult ReportsNew()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }
            Dictionary<string, object> dct = new Dictionary<string, object>();
            try
            {
                var FormData = Request.Form["FormData"];
                var applicationFormResponse = JsonConvert.DeserializeObject<ReportRequestModel>(FormData);

                TempData["ReportResult"] = "";
                ViewBag.errorStatus = null;
                if (!String.IsNullOrEmpty(applicationFormResponse.documentType) && !String.IsNullOrEmpty(applicationFormResponse.reportType))
                {
                    Response.ClearHeaders();
                    string f1 = string.Empty;
                    string f2 = string.Empty;
                    string f3 = string.Empty;
                    eServicesDbContext context = new eServicesDbContext();
                    AppSetting AdUser = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.AdUserName);
                    AppSetting AdPass = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.AdPassword);
                    AppSetting AdDom = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.adDomain);
                    //AppSetting genBillLink = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.adGenBillLink);
                    NetworkCredential nwc = new NetworkCredential(AdUser.Value, AdPass.Value);
                    WebClient client = new WebClient();
                    client.Credentials = nwc;
                    //documentType = "PDF";
                    //string yearN = "2021";// StateYear;
                    //string month = "10";// stateMonth;

                    if (applicationFormResponse.documentType == "excel")
                    {
                        f1 = applicationFormResponse.reportType + ReportKeys.ExcelExtension;
                        f2 = ReportKeys.ExcelKey;
                    }
                    if (applicationFormResponse.documentType == "pdf")
                    {
                        f1 = applicationFormResponse.reportType + ReportKeys.PdfExtension;
                        f2 = ReportKeys.PdfKey;
                    }
                    if (applicationFormResponse.documentType == "word")
                    {
                        f1 = applicationFormResponse.reportType + ReportKeys.WordExtension;
                        f2 = "WORDOPENXML"; //ReportKeys.WordKey;
                    }

                    //f3 = ConvertToQuery(reportType);
                    string fileName = f1;
                    string file_Name = string.Format("{0}-{1}", DateTime.Now.ToString("ddMMMyyyyHHmmss"), fileName.Replace("-", ""));
                    fileName = Path.Combine(Server.MapPath("~/uploads/"), file_Name);

                    //string ttt = "Approved%20Application";
                    //string ttt1 = "Progress%20Report";
                    //string ttt2 = "Total%20Wayleave%20Applications%20Created";
                    string stdate = applicationFormResponse.startDate.Value.Year + "/" + applicationFormResponse.startDate.Value.Month + "/" + applicationFormResponse.startDate.Value.Day;
                    string endate = applicationFormResponse.endDate.Value.Year + "/" + applicationFormResponse.endDate.Value.Month + "/" + applicationFormResponse.endDate.Value.Day;
                    string reportURL = string.Empty;
                    switch (applicationFormResponse.reportType)
                    {
                        case "ApprovedApplication":
                            f3 = "Approved+Application";
                            reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2f" + f3 + "&rs:Command=Render&rs:Format=" + f2 + "&SD=" + stdate + "&ED=" + endate;
                            break;
                        case "ProgressReport":
                            f3 = "Progress+Report";
                            reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2f" + f3 + "&rs:Command=Render&rs:Format=" + f2 + "&SD=" + stdate + "&ED=" + endate + "&Status=" + applicationFormResponse.status;
                            break;
                        case "TotalWayleaveApplicationsCreated":
                            f3 = "Total+Wayleave+Applications+Created";
                            reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2f" + f3 + "&rs:Command=Render&rs:Format=" + f2 + "&SD=" + stdate + "&ED=" + endate + "&Status=" + applicationFormResponse.status;
                            break;
                        default:
                            break;

                    }
                    client.DownloadFile(reportURL, fileName);
                    byte[] fileBytes = System.IO.File.ReadAllBytes(@"" + fileName);                    
                    dct.Add("success", file_Name);
                    dct.Add("file", f1);                    
                    return Json(dct, JsonRequestBehavior.AllowGet);

                    //string dsss = downloadReport(fileName);
                    //Response.Headers.Clear();
                    //Response.BufferOutput = true;
                    //TempData["ReportResult"] = "success";
                    //string reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2f" + f3 + "&rs:Command=Render&rs:Format=" + f2 + "&SD=" + startDate + "&ED=" + endDate;
                    //string sttt = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2fTotal+Wayleave+Applications+Created&rs:Command=Render&rs:Format=EXCELOPENXML&SD=2021/08/01 00:00:00&ED=2021/10/12 00:00:00&ReportParameter1=2";
                    //string reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2fApproved+Application&rs:Command=Render&rs:Format=" + documentType + "&SD=2021/08/01 00:00:00&ED=2021/10/12 00:00:00";
                    //string reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2fApproved+Application&rs:Command=Render&rs:Format=" + documentType + "&SD=2021/08/01 00:00:00&ED=2021/10/12 00:00:00";
                    //string ttt = "http://10.1.2.230:85/ProBudget_Reports/report/Wayleave/Progress%20Report?SD=7/1/2021&ED=10/31/2021&Status=8";
                    //string reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fCase_Management_Reports%2fNo_of_Cases_Report&rs:Command=Render&rs:Format=PDF&year=" + yearN + "&month=" + month;
                    //return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, f1);
                    //return File(client.DownloadData(reportURL), "application/pdf");
                }
            }
            catch (Exception ex)
            {
                string sttr = ex.Message;
                dct.Add("error", ex.Message);
                return Json(dct, JsonRequestBehavior.AllowGet);
            }

            return View();
        }

        public string downloadReport(string fileName)
        {

            string filePath = fileName;
            Response.ClearHeaders();
            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
            return "success";
        }

        public string ConvertToQuery(string value)
        {
            string result = string.Empty;
            switch (value)
            {
                case "ApprovedApplication":
                    result = "Approved+Application";
                    break;
                case "ProgressReport":
                    result = "Progress+Report";
                    break;
                case "TotalWayleaveApplicationsCreated":
                    result = "Total%20Wayleave%20Applications%20Created";
                    break;
                default:
                    break;

            }
            return result;
        }
    }
}