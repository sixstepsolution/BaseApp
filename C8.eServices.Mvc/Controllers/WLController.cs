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
            return View();
        }

        public ActionResult ApplicationStatusList()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
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
            return View();
        }

        public ActionResult PreInspectionList()
        {
            if (Session["ekurhuleniData"] == null)
            {
                // if IsAuthenticated is false return to login code here....
                return Redirect("../home/index");
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