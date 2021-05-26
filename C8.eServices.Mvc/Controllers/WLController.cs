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

namespace C8.eServices.Mvc.Controllers
{
    public class WLController : Controller
    {
        private WayleaveDbContext db = new WayleaveDbContext();        
        // GET: WL
        public ActionResult Index()
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
                var responseTask = client.PostAsync("api/get-applications-with-counts", byteContent);
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

        public ActionResult WayleaveAccount()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");

            }
            return View();
        }

        public ActionResult WayleaveAccountDashboard()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
            }

            IEnumerable<WayleaveAccountDashboardModel> members = null;

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
                var responseTask = client.GetAsync("api/get-wl-accounts-with-counts");
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
                var responseTask = client.PostAsync("api/get-applications-status-list", byteContent);
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

                    tt = tt.Where(s=>s.name== "Completed").ToList();
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
                var responseTask = client.PostAsync("api/get-applications-status-list", byteContent);
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

                    tt = tt.Where(s => s.name == "Completed").ToList();
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
                var responseTask = client.PostAsync("api/get-applications-status-list", byteContent);
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

                    tt = tt.Where(s => s.name == "Completed").ToList();
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
            ViewBag.suburb = "";
            ViewBag.UserType = "";
            var res = db.WL_APPLICATIONFORM.Find(pdf.AppId);
            if (res != null)
            {
                //int acNo = Convert.ToInt32(res.PROPERTYOWNER_ACCOUNT_NO??"0");
                var address = db.WL_ACCOUNTS.Where(s => s.ACCOUNT_NUMBER == res.PROPERTYOWNER_ACCOUNT_NO).FirstOrDefault();//!=null? db.WL_ACCOUNTS.Where(s => s.ACCOUNT_ID == acNo).FirstOrDefault().
                ViewBag.inspectionDate = res.INSPECTION_DATE != null ? Convert.ToDateTime(res.INSPECTION_DATE).ToString("yyyy-MM-dd") : "";
                ViewBag.streetAddress = address.STREET_NAME + " " + address.CITY + " " + address.PROVINCE + " " + address.COUNTRY + " - " + address.POST_CODE;
                ViewBag.UserType = address.TYPE_USER;
                ViewBag.suburb = address.CITY;
                ViewBag.applicationDate = res.STARTING_DATE != null ? Convert.ToDateTime(res.STARTING_DATE).ToString("yyyy-MM-dd") : "";
                ViewBag.applicationEndDate = res.COMPLETION_DATE != null ? Convert.ToDateTime(res.COMPLETION_DATE).ToString("yyyy-MM-dd") : "";
            }
            return View(res);
        }

        [HttpGet]
        public ActionResult GetInspectionPdfNew(int appId)
        {
            var root = Server.MapPath("~/UploadFiles/");
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
    }
}