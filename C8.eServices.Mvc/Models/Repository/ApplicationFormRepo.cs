﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Claims;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Mapings;
using C8.eServices.Mvc.Models.Services;
using C8.eServices.Mvc.Keys;
using C8.eServices.Mvc.Helpers;
using C8.eServices.Mvc.Models.EmailBodys;
using C8.eServices.Mvc.Models.Comm;

namespace C8.eServices.Mvc.Models.Repository
{
    public class ApplicationFormRepo : IApplicationForm
    {
        private WayleaveDbContext _context;
        IPAddressModel Ip = new IPAddressModel();
        private readonly IServiceDocument _serviceDocument = null;
        private eServicesDbContext _dbeService;// = new eServicesDbContext();
        public ApplicationFormRepo(WayleaveDbContext context, IServiceDocument serviceDocument, eServicesDbContext dbeService)
        {
            _serviceDocument = serviceDocument;
            _context = context;
            _dbeService = dbeService;
        }
        public int AddApplicationForm(WL_APPLICATIONFORM applicationForm)
        {
            throw new NotImplementedException();
        }

        public int DeleteApplicationForm(int id)
        {
            throw new NotImplementedException();
        }

        public IQueryable<WL_APPLICATIONFORM> GetAllApplicationForm()
        {
            return _context.WL_APPLICATIONFORM;
        }

        public IQueryable<WL_APPLICATIONFORM> GetAllApplicationForm(ApplicationInputClaimModel inpuclaims)
        {
            var claims = ClaimsPrincipal.Current.Identities.ToList();
            IQueryable<WL_APPLICATIONFORM> result = _context.WL_APPLICATIONFORM;
            if (!string.IsNullOrEmpty(inpuclaims.acount_no))
                result = result.Where(app => app.PROPERTYOWNER_ACCOUNT_NO.Contains(inpuclaims.acount_no));

            if (!string.IsNullOrEmpty(inpuclaims.first_name))
                result = result.Where(app => app.PROPERTYOWNER_NAME.ToLower().Contains(inpuclaims.first_name.ToLower()));

            if (!string.IsNullOrEmpty(inpuclaims.last_name))
                result = result.Where(app => app.PROPERTYOWNER_SURNAME.ToLower().Contains(inpuclaims.last_name.ToLower()));

            if (inpuclaims.service_type_id != 0)
                result = result.Where(app => app.SERVICE_TYPE == inpuclaims.service_type_id);

            if (inpuclaims.service_type_sub_id != 0)
                result = result.Where(app => app.SERVICE_SUB_TYPE == inpuclaims.service_type_sub_id);

            if (inpuclaims.status_type != 0)
                result = result.Where(app => app.STATUS_ID == inpuclaims.status_type);


            if (!string.IsNullOrEmpty(inpuclaims.mobile))
                result = result.Where(app => app.PROPERTYOWNER_CONTACTNO.Contains(inpuclaims.mobile));

            if (!string.IsNullOrEmpty(inpuclaims.email))
                result = result.Where(app => app.PROPERTYOWNER_EMAIL.ToLower().Contains(inpuclaims.email.ToLower()));

            if (inpuclaims.created_by != 0)
                result = result.Where(app => app.CREATED_BY == inpuclaims.created_by);

            if (!string.IsNullOrEmpty(inpuclaims.consultant_number))
                result = result.Where(app => app.CONSULTANT_NO.ToLower().Contains(inpuclaims.consultant_number.ToLower()));

            if (!string.IsNullOrEmpty(inpuclaims.consultant_company_name))
                result = result.Where(app => app.CONSULTANT_COMPANYNAME.ToLower().Contains(inpuclaims.consultant_company_name.ToLower()));

            if (!string.IsNullOrEmpty(inpuclaims.consultant_first_name))
                result = result.Where(app => app.CONSULTANT_NAME.ToLower().Contains(inpuclaims.consultant_first_name.ToLower()));

            if (!string.IsNullOrEmpty(inpuclaims.consultant_last_name))
                result = result.Where(app => app.CONSULTANT_SURNAME.ToLower().Contains(inpuclaims.consultant_last_name.ToLower()));

            if (!string.IsNullOrEmpty(inpuclaims.consultant_email))
                result = result.Where(app => app.CONSULTANT_EMAIL.ToLower().Contains(inpuclaims.consultant_email.ToLower()));

            if (!string.IsNullOrEmpty(inpuclaims.project_name))
                result = result.Where(app => app.PROJECT_NAME.ToLower().Contains(inpuclaims.project_name.ToLower()));

            if (!string.IsNullOrEmpty(inpuclaims.region_code))
                result = result.Where(app => app.REGION_OR_AREA.ToLower().Contains(inpuclaims.region_code.ToLower()));

            if (!string.IsNullOrEmpty(inpuclaims.Contact_Person))
                result = result.Where(app => app.REGION_OR_AREA.ToLower().Contains(inpuclaims.region_code.ToLower()));

            if (inpuclaims.created_date != null)
                result = result.Where(app => DateTime.Compare(app.CREATED_DATE.Date, inpuclaims.created_date.Value) == 0);

            if (inpuclaims.date_requested_from != null && inpuclaims.date_requested_to != null)
            {
                inpuclaims.date_requested_to = Convert.ToDateTime(inpuclaims.date_requested_to).AddDays(1);
                result = result.Where(app => DateTime.Compare(app.CREATED_DATE.Date, inpuclaims.date_requested_from.Value) >= 0 && DateTime.Compare(app.CREATED_DATE.Date, inpuclaims.date_requested_to.Value) <= 0);
            }
            //result = result.Where(app => app.CREATED_DATE.Value >= inpuclaims.date_requested_from.Value &&app.CREATED_DATE.Value<= inpuclaims.date_requested_to.Value);

            return result;
        }

        public WL_APPLICATIONFORM GetApplicationFormData(int id)
        {
            return _context.WL_APPLICATIONFORM.Where(d => d.APP_ID == id).FirstOrDefault();
        }

        public WL_DEPARTMENTS GetDepartmentDataById(int id,string deptName)
        {
            return _context.WL_DEPARTMENTS.Where(d => d.APP_ID == id && d.DEPARTMENT_NAME== deptName).FirstOrDefault();
        }


        //public string AddApplicationForm(WL_APPLICATIONFORM applicationForm, List<WL_REGIONS> RegionResponse, List<WL_CONTACT_PERSONS> ContactResponse, List<WL_WORK_LOCATIONS> locationResponse, List<WL_DEPARTMENTS> departmentsDataResponse, HttpFileCollection files, string browser, int appCount,string paymentStatus)
        //{
        //    Dictionary<string, object> dct = new Dictionary<string, object>();
        //    string file_Name = string.Empty;
        //    string fileName = string.Empty;
        //    int counter = appCount;
        //    counter = counter + 1;
        //    string year = DateTime.Now.ToString("yy");
        //    string month = DateTime.Now.ToString("MM");
        //    string outputValue = String.Format("{0:D4}", counter);
        //    string applicationNumber = "APP" + year + month + outputValue;

        //    try
        //    {
        //        int st =Convert.ToInt32((int?)applicationForm.SERVICE_TYPE);
        //        var serviceResult = _serviceDocument.GetServiceDocumentsById(st);
        //        var tt = serviceResult.ToList();
        //        int loggedinID = 1;
        //        if (HttpContext.Current.Session["wayleaveaccountId"] != null)
        //        {
        //            loggedinID = Convert.ToInt32(HttpContext.Current.Session["wayleaveaccountId"]);
        //        }

        //        if(paymentStatus=="EFT")
        //        {
        //            applicationForm.STATUS_ID = 8;
        //            applicationForm.APPLICATION_STEP_DESCRIPTION = "Payment Pending";
        //        }
        //        else if (paymentStatus == "MasterPass")
        //        {
        //            applicationForm.STATUS_ID = 3;
        //            applicationForm.APPLICATION_STEP_DESCRIPTION = "Completed";
        //        }

        //        applicationForm.APPLICATION_NUMBER = applicationNumber;
        //        applicationForm.COMPANY_ID = 1;

        //        applicationForm.CREATED_BY = loggedinID;

        //        applicationForm.CREATED_DATE = DateTime.Now;

        //        applicationForm.MODIFIED_BY = loggedinID;
        //        applicationForm.MODIFIED_DATE = DateTime.Now;
        //        applicationForm.APPLICATION_GENERATION_DATE = DateTime.Now;
        //        _context.WL_APPLICATIONFORM.Add(applicationForm);


        //        if (files.Count > 0)
        //        {  //  Get all files from Request object 
        //            //return null;
        //            for (int i = 0; i < files.AllKeys.Count(); i++)
        //            {
        //                WL_SUPPORTING_DOCUMENTS ws = new WL_SUPPORTING_DOCUMENTS();

        //                string serviceDocId = files.AllKeys[i];
        //                string documentId = !string.IsNullOrEmpty(serviceDocId) ? serviceDocId.Substring(0, 1) : "0";

        //                string documentType = tt.Where(s => s.SD_ID.ToString() == documentId).FirstOrDefault() != null ? tt.Where(s => s.SD_ID.ToString() == documentId).FirstOrDefault().DESCRIPTION : "";

        //                HttpPostedFile file = files[i];
        //                //string fd = serviceDocId.Substring(1, 1);
        //                if (browser == "IE" || browser == "INTERNETEXPLORER")
        //                {
        //                    string[] testfiles = file.FileName.Split(new char[] { '\\' });
        //                    fileName = testfiles[testfiles.Length - 1];
        //                }
        //                else
        //                {
        //                    fileName = file.FileName;
        //                }
        //                //string fdd = serviceDocId.Substring(0, 1);
        //                fileName = file.FileName;
        //                file_Name = string.Format("{0}-{1}", DateTime.Now.ToString("ddMMMyyyyHHmmss"), fileName.Replace("-", ""));
        //                fileName = Path.Combine(HttpContext.Current.Server.MapPath("~/uploads/"), file_Name);
        //                file.SaveAs(fileName);

        //                ws.SD_ID = Convert.ToInt32(documentId ?? "0");
        //                ws.DOCUMENT_TYPE = documentType;
        //                ws.DOCUMENT_NAME = file_Name;
        //                ws.CREATED_BY = 1;
        //                ws.CREATED_DATE = DateTime.Now;
        //                _context.WL_SUPPORTING_DOCUMENTS.Add(ws);
        //                //applicationForm.COVER_LETTER = file_Name;
        //            }
        //        }


        //        foreach (WL_REGIONS r in RegionResponse)
        //        {
        //            r.CREATED_BY = 1;
        //            r.CREATED_DATE = DateTime.Now;
        //            _context.WL_REGIONS.Add(r);
        //        }

        //        foreach (WL_CONTACT_PERSONS c in ContactResponse)
        //        {
        //            c.CREATED_BY = 1;
        //            c.CREATED_DATE = DateTime.Now;
        //            _context.WL_CONTACT_PERSONS.Add(c);
        //        }

        //        foreach (WL_WORK_LOCATIONS wl in locationResponse)
        //        {
        //            wl.CREATED_BY = 1;
        //            wl.CREATED_DATE = DateTime.Now;
        //            _context.WL_WORK_LOCATIONS.Add(wl);
        //        }
        //       foreach (WL_DEPARTMENTS department in departmentsDataResponse)
        //        {
        //            department.SERVICE_ID = applicationForm.SERVICE_TYPE;
        //            department.APP_ID = applicationForm.APP_ID;
        //            department.CREATED_ON = DateTime.Now;
        //            _context.WL_DEPARTMENTS.Add(department);
        //        }
        //        bool n = SaveChanges();

        //        if (n)
        //        {
        //            dct.Add("success", true);
        //            return applicationForm.APPLICATION_NUMBER;
        //        }
        //        else
        //        {
        //            dct.Add("error", false);
        //            return "Application Form Saving Failed!";
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        dct.Add("isError", true);
        //        dct.Add("exception", ex.Message);
        //    }

        //    //return Json(dct, JsonRequestBehavior.AllowGet);
        //    return "";
        //}

        public string AddApplicationForm(WL_APPLICATIONFORM applicationForm, List<WL_DEPARTMENTS> departmentsDataResponse, List<WL_DECLARATIONS> declarations, HttpFileCollection files, string browser, int appCount, string paymentStatus)
        {
            Dictionary<string, object> dct = new Dictionary<string, object>();
            string file_Name = string.Empty;
            string fileName = string.Empty;
            int counter = appCount;
            counter = counter + 1;
            string year = DateTime.Now.ToString("yy");
            string month = DateTime.Now.ToString("MM");
            string outputValue = String.Format("{0:D4}", counter);
            string applicationNumber = "APP" + year + month + outputValue;

            try
            {
                int st = Convert.ToInt32((int?)applicationForm.SERVICE_TYPE);
                var serviceResult = _serviceDocument.GetServiceDocumentsById(st);
                var tt = serviceResult.ToList();
                int loggedinID = 1;
                
                var payLater = _dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.PayLater);
                var payNow = _dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.PayNow);
                var PaynowPaymentCompletion = _dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.PaynowPaymentCompletion);

                if (HttpContext.Current.Session["wayleaveaccountId"] != null)
                {
                    loggedinID = Convert.ToInt32(HttpContext.Current.Session["wayleaveaccountId"]);
                }

                //if (paymentStatus == "EFT")
                //{
                //    applicationForm.STATUS_ID = 8;
                //    applicationForm.APPLICATION_STEP_DESCRIPTION = "Payment Pending";
                //}
                //else if (paymentStatus == "MasterPass")
                //{
                //    applicationForm.STATUS_ID = 3;
                //    applicationForm.APPLICATION_STEP_DESCRIPTION = "Completed";
                //}

                //if (paymentStatus == (payLater!=null? payLater.Name:""))
                //{
                    applicationForm.STATUS_ID = 8;
                    applicationForm.APPLICATION_STEP_DESCRIPTION = (payLater != null ? payLater.Description : "");//"Payment Pending";
                //}
                //else
                //{
                //    applicationForm.STATUS_ID = 2;
                //    applicationForm.APPLICATION_STEP_DESCRIPTION = PaynowPaymentCompletion != null ? PaynowPaymentCompletion.Description : "";
                //}

                applicationForm.APPLICATION_NUMBER = applicationNumber;
                applicationForm.COMPANY_ID = 1;

                applicationForm.CREATED_BY = loggedinID;

                applicationForm.CREATED_DATE = DateTime.Now;

                applicationForm.MODIFIED_BY = loggedinID;
                applicationForm.MODIFIED_DATE = DateTime.Now;
                applicationForm.APPLICATION_GENERATION_DATE = DateTime.Now;
                _context.WL_APPLICATIONFORM.Add(applicationForm);


                if (files.Count > 0)
                {  //  Get all files from Request object 
                    //return null;
                    for (int i = 0; i < files.AllKeys.Count(); i++)
                    {
                        WL_SUPPORTING_DOCUMENTS ws = new WL_SUPPORTING_DOCUMENTS();

                        string serviceDocId = files.AllKeys[i];
                        string documentId = !string.IsNullOrEmpty(serviceDocId) ? serviceDocId.Substring(0, 1) : "0";

                        //string documentType = tt.Where(s => s.SD_ID.ToString() == documentId).FirstOrDefault() != null ? tt.Where(s => s.SD_ID.ToString() == documentId).FirstOrDefault().DESCRIPTION : "";
                        string documentTypee = _context.MASTER_SERVICE_DOCUMENTS.Where(s => s.SD_ID.ToString() == documentId).FirstOrDefault() != null ? _context.MASTER_SERVICE_DOCUMENTS.Where(s => s.SD_ID.ToString() == documentId).FirstOrDefault().DESCRIPTION : "";
                        HttpPostedFile file = files[i];
                        //string fd = serviceDocId.Substring(1, 1);
                        if (browser == "IE" || browser == "INTERNETEXPLORER")
                        {
                            string[] testfiles = file.FileName.Split(new char[] { '\\' });
                            fileName = testfiles[testfiles.Length - 1];
                        }
                        else
                        {
                            fileName = file.FileName;
                        }
                        //string fdd = serviceDocId.Substring(0, 1);
                        fileName = file.FileName;
                        file_Name = string.Format("{0}-{1}", DateTime.Now.ToString("ddMMMyyyyHHmmss"), fileName.Replace("-", ""));
                        fileName = Path.Combine(HttpContext.Current.Server.MapPath("~/uploads/"), file_Name);
                        file.SaveAs(fileName);

                        ws.SD_ID = Convert.ToInt32(documentId ?? "0");
                        ws.DOCUMENT_TYPE = documentTypee;
                        ws.DOCUMENT_NAME = file_Name;
                        ws.CREATED_BY = 1;
                        ws.CREATED_DATE = DateTime.Now;
                        _context.WL_SUPPORTING_DOCUMENTS.Add(ws);
                        //applicationForm.COVER_LETTER = file_Name;
                    }
                }

                foreach (WL_DEPARTMENTS department in departmentsDataResponse)
                {
                    department.SERVICE_ID = applicationForm.SERVICE_TYPE;
                    department.APP_ID = applicationForm.APP_ID;
                    department.CREATED_ON = DateTime.Now;
                    _context.WL_DEPARTMENTS.Add(department);
                }

                foreach (WL_DECLARATIONS dec in declarations)
                {
                    dec.APP_ID = applicationForm.APP_ID;
                    dec.CREATED_DATE = DateTime.Now;
                    dec.MODIFIED_DATE = DateTime.Now;
                    dec.CREATED_BY = loggedinID;
                    dec.MODIFIED_BY = loggedinID;
                    _context.WL_DECLARATIONS.Add(dec);
                }

                

                bool n = SaveChanges();

                if (n)
                {
                    string createdUser = applicationForm.PROPERTYOWNER_NAME + " " + applicationForm.PROPERTYOWNER_SURNAME;
                    WL_APPLICATIONFORM_AUDIT audit_app = new WL_APPLICATIONFORM_AUDIT();
                    CopyClass.CopyObject(applicationForm, ref audit_app);
                    audit_app.ACTION = "Application submitted";
                    audit_app.CREATED_DATE = DateTime.Now;
                    audit_app.MODIFIED_DATE = DateTime.Now;
                    audit_app.CREATED_USER = createdUser;
                    audit_app.MODIFIED_USER = createdUser;
                    audit_app.OUTCOME = AuditTrailKeys.SuccessfulOutcome;
                    audit_app.DEVICE_IP_ADDRESS = Ip.GetIP4Address();
                    audit_app.APPLICATION_STEP_DESCRIPTION = AuditTrailKeys.PendingPayment;
                    //PROPERTYOWNER_NAME
                    _context.WL_APPLICATIONFORM_AUDIT.Add(audit_app);
                    _context.SaveChanges();


                    var departmentUsers = _context.Users.Where(s=>s.deptartmentname!= "Roads & Storm Water").ToList();
                    //Send email notifications to departments
                    foreach (User u in departmentUsers)
                    {
                        if (!String.IsNullOrEmpty(u.emailAddress))
                        {
                            string departmentUserName = u != null ? u.firstName + " " + u.lastName : u.username;
                             EmailHelper email = new EmailHelper();
                            email.Body = EmailNotificationBody.SentApplicationtoDepartments(departmentUserName, applicationNumber,u.deptartmentname, applicationForm.APPLICATION_STEP_DESCRIPTION, applicationForm.APPLICATION_DATE, applicationForm.COMPLETION_DATE).ToString();
                            email.Recipient = u.emailAddress;
                            email.Subject = "New Wayleave Application";
                            //email.SendEmail();
                            Email em = new Email();
                            em.GenerateEmail(email.Recipient, email.Subject, email.Body, applicationNumber, false, AppSettingKeys.EmailNotificationTemplate, applicationForm.PROPERTYOWNER_NAME + " " + applicationForm.PROPERTYOWNER_SURNAME, null, null, applicationNumber, null, null, null, null);
                        }                        
                    }
                    dct.Add("success", true);
                    return applicationForm.APPLICATION_NUMBER;
                }
                else
                {
                    dct.Add("error", false);
                    return "Application Form Saving Failed!";
                }
            }
            catch (Exception ex)
            {
                dct.Add("isError", true);
                dct.Add("exception", ex.Message);
            }

            //return Json(dct, JsonRequestBehavior.AllowGet);
            return "";
        }

        public string UpdateApplicationForm(WL_APPLICATIONFORM applicationForm,HttpFileCollection files, string browser)
        {
            string file_Name = string.Empty;
            string fileName = string.Empty;
            var serviceResult = _serviceDocument.GetServiceDocumentsById(2);
            var payLater = _dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.PayLater);
            var PaynowPaymentCompletion = _dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.PaynowPaymentCompletion);
            var departmentPaymentSuccess= _dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.DepartmentPaymentSuccess);
            var departmentsDataResponse = _context.WL_DEPARTMENTS.Where(s => s.APP_ID == applicationForm.APP_ID).ToList();
            bool isEft = false;
            bool n = false;
            var tt = serviceResult.ToList();
            int loggedinID = 1;

            if (HttpContext.Current.Session["wayleaveaccountId"] != null)
            {
                loggedinID = Convert.ToInt32(HttpContext.Current.Session["wayleaveaccountId"]);
            }
            WL_APPLICATIONFORM res = GetApplicationFormData(applicationForm.APP_ID);
            if (applicationForm.APPLICATION_STEP_DESCRIPTION != (payLater != null ? payLater.Description : "") && applicationForm.APPLICATION_STEP_DESCRIPTION != "Distributed to Departments")
            {
                res.APPLICATION_STEP_DESCRIPTION = "Pending";
            }
            res.STATUS_ID = 1;
            if (applicationForm.APPLICATION_STEP_DESCRIPTION == "Distributed to Departments")
            {
                res.CONSULTANT_NAME = applicationForm.CONSULTANT_NAME;
                res.CONSULTANT_SURNAME = applicationForm.CONSULTANT_SURNAME;
                res.CONSULTANT_CONTACTNO = applicationForm.CONSULTANT_CONTACTNO;
                res.CONSULTANT_MOBILENO = applicationForm.CONSULTANT_MOBILENO;
                res.CONSULTANT_EMAIL = applicationForm.CONSULTANT_EMAIL;
                res.CONSULTANT_ADDRESS = applicationForm.CONSULTANT_ADDRESS;

                res.PROPERTYOWNER_ACCOUNT_NO = applicationForm.PROPERTYOWNER_ACCOUNT_NO;
                res.PROPERTYOWNER_NAME = applicationForm.PROPERTYOWNER_NAME;
                res.PROPERTYOWNER_SURNAME = applicationForm.PROPERTYOWNER_SURNAME;
                res.PROPERTYOWNER_CONTACTNO = applicationForm.PROPERTYOWNER_CONTACTNO;
                res.PROPERTYOWNER_MOBILENO = applicationForm.PROPERTYOWNER_MOBILENO;//*
                res.PROPERTYOWNER_EMAIL = applicationForm.PROPERTYOWNER_EMAIL;

                //res.IDENTIFICATION_NUMBER = applicationForm.;
                //res.GENDER = applicationForm.;
                res.PROJECT_NUMBER = applicationForm.PROJECT_NUMBER;

               

                res.CONTRACTOR_NAME = applicationForm.CONTRACTOR_NAME;//*
                res.CONTRACTOR_SURNAME = applicationForm.CONTRACTOR_SURNAME; //*
                res.CONTRACTOR_CONTACTNO = applicationForm.CONTRACTOR_CONTACTNO;//*
                res.CONTRACTOR_MOBILENO = applicationForm.CONTRACTOR_MOBILENO;//*
                res.CONTRACTOR_EMAIL = applicationForm.CONTRACTOR_EMAIL;//*
                res.CONTRACTOR_ADDRESS = applicationForm.CONTRACTOR_ADDRESS;//*

                res.STARTING_DATE = applicationForm.STARTING_DATE;
                res.COMPLETION_DATE = applicationForm.COMPLETION_DATE;

                res.TYPE_OF_ROADCROSSING = applicationForm.TYPE_OF_ROADCROSSING;//*
                res.TYPE_OF_ROADCROSSING1 = applicationForm.TYPE_OF_ROADCROSSING1;//*
                res.TYPE_OF_ROADCROSSING2 = applicationForm.TYPE_OF_ROADCROSSING2;//*
                res.EXCAVATION_LENGTH = applicationForm.EXCAVATION_LENGTH;
                res.RIDING_SURFACE = applicationForm.RIDING_SURFACE;
                res.KERBS = applicationForm.KERBS;

                res.GPS_START_ADDRESS = applicationForm.GPS_START_ADDRESS;
                res.GPS_END_ADDRESS = applicationForm.GPS_END_ADDRESS;
                res.APPLICATION_COMMENTS = applicationForm.APPLICATION_COMMENTS;
                res.STATUS_ID = 2;
            }
           
            
            if (files.Count > 0)
            {  //  Get all files from Request object 
               //return null;
                var list=_context.WL_SUPPORTING_DOCUMENTS.Where(w => w.APP_ID == applicationForm.APP_ID).ToList();
                //if(list.Count()>0)
                //{
                //    _context.WL_SUPPORTING_DOCUMENTS.RemoveRange(list);
                //    SaveChanges();
                //}
                
                for (int i = 0; i < files.AllKeys.Count(); i++)
                {
                    WL_SUPPORTING_DOCUMENTS ws = new WL_SUPPORTING_DOCUMENTS();

                    string serviceDocId = files.AllKeys[i];
                    string documentId = !string.IsNullOrEmpty(serviceDocId) ? serviceDocId.Substring(0, 1) : "0";

                    string documentType = tt.Where(s => s.SD_ID.ToString() == documentId).FirstOrDefault() != null ? tt.Where(s => s.SD_ID.ToString() == documentId).FirstOrDefault().DESCRIPTION : "";

                    HttpPostedFile file = files[i];
                    //string fd = serviceDocId.Substring(1, 1);
                    if (browser == "IE" || browser == "INTERNETEXPLORER")
                    {
                        string[] testfiles = file.FileName.Split(new char[] { '\\' });
                        fileName = testfiles[testfiles.Length - 1];
                    }
                    else
                    {
                        fileName = file.FileName;
                    }
                    //string fdd = serviceDocId.Substring(0, 1);
                    fileName = file.FileName;
                    file_Name = string.Format("{0}-{1}", DateTime.Now.ToString("ddMMMyyyyHHmmss"), fileName.Replace("-", ""));
                    fileName = Path.Combine(HttpContext.Current.Server.MapPath("~/uploads/"), file_Name);
                    file.SaveAs(fileName);

                    ws.SD_ID = Convert.ToInt32(documentId ?? "0");
                    if (applicationForm.APPLICATION_STEP_DESCRIPTION == (payLater != null ? payLater.Description : ""))
                    {
                        if (documentType.Contains("EFT"))
                        {
                            isEft = true;
                            res.STATUS_ID = 2;
                            res.APPLICATION_STEP_DESCRIPTION = PaynowPaymentCompletion != null ? PaynowPaymentCompletion.Description : "";
                        }
                    }                    
                    ws.DOCUMENT_TYPE = documentType;
                    ws.DOCUMENT_NAME = file_Name;
                    ws.CREATED_BY = 1;
                    ws.APP_ID = applicationForm.APP_ID;
                    ws.CREATED_DATE = DateTime.Now;
                    _context.WL_SUPPORTING_DOCUMENTS.Add(ws);
                    //applicationForm.COVER_LETTER = file_Name;
                }
            }
            if (isEft)
            {
                foreach (WL_DEPARTMENTS department in departmentsDataResponse)
                {
                    department.APPLICATION_STATUS = (departmentPaymentSuccess != null ? departmentPaymentSuccess.Description : "");
                    department.APP_ID = applicationForm.APP_ID;

                    //string createdUser = res.PROPERTYOWNER_NAME + " " + res.PROPERTYOWNER_SURNAME;
                    //WL_APPLICATIONFORM_AUDIT audit_app = new WL_APPLICATIONFORM_AUDIT();
                    //CopyClass.CopyObject(res, ref audit_app);
                    //audit_app.ACTION = "Modified";
                    //audit_app.APPLICATION_STEP_DESCRIPTION = "Distributed to " + department.DEPARTMENT_NAME + " department";
                    //audit_app.CREATED_DATE = DateTime.Now;
                    //audit_app.MODIFIED_DATE = DateTime.Now;
                    //audit_app.CREATED_USER = createdUser;
                    //audit_app.MODIFIED_USER = createdUser;
                    //_context.WL_APPLICATIONFORM_AUDIT.Add(audit_app);
                    //_context.SaveChanges();
                    n =SaveChanges();
                }
            }
            //_context.Entry(res).State = System.Data.Entity.EntityState.Modified;
             n = SaveChanges();
            if (n)
            {
                var isNotDistributed = _context.WL_APPLICATIONFORM_AUDIT.Where(s => s.APPLICATION_NUMBER == res.APPLICATION_NUMBER && s.APPLICATION_STEP_DESCRIPTION == AuditTrailKeys.Distributed_to_Departments).ToList();
                if (isNotDistributed.Count() == 0)
                {
                    string createdUser = res.PROPERTYOWNER_NAME + " " + res.PROPERTYOWNER_SURNAME;
                    WL_APPLICATIONFORM_AUDIT audit_app = new WL_APPLICATIONFORM_AUDIT();
                    CopyClass.CopyObject(res, ref audit_app);
                    audit_app.ACTION = AuditTrailKeys.UploadedPaymentReciept;
                    audit_app.CREATED_DATE = DateTime.Now;
                    audit_app.MODIFIED_DATE = DateTime.Now;
                    audit_app.CREATED_USER = createdUser;
                    audit_app.MODIFIED_USER = createdUser;
                    audit_app.OUTCOME = AuditTrailKeys.SuccessfulOutcome;
                    audit_app.DEVICE_IP_ADDRESS = Ip.GetIP4Address();
                    audit_app.APPLICATION_STEP_DESCRIPTION = AuditTrailKeys.PendingPayment;
                    _context.WL_APPLICATIONFORM_AUDIT.Add(audit_app);
                    _context.SaveChanges();

                    foreach (WL_DEPARTMENTS department in departmentsDataResponse)
                    {
                        WL_APPLICATIONFORM_AUDIT audit_appp = new WL_APPLICATIONFORM_AUDIT();
                        CopyClass.CopyObject(res, ref audit_appp);
                        audit_appp.ACTION = "Distributed to " + department.DEPARTMENT_NAME + " Department";
                        audit_appp.APPLICATION_STEP_DESCRIPTION = AuditTrailKeys.Distributed_to_Departments;
                        audit_appp.OUTCOME = AuditTrailKeys.SuccessfulOutcome;
                        audit_appp.CREATED_DATE = DateTime.Now;
                        audit_appp.MODIFIED_DATE = DateTime.Now;
                        audit_appp.CREATED_USER = createdUser;
                        audit_appp.MODIFIED_USER = createdUser;
                        audit_appp.DEVICE_IP_ADDRESS = Ip.GetIP4Address();
                        _context.WL_APPLICATIONFORM_AUDIT.Add(audit_appp);
                        n = SaveChanges();
                    }

                    EmailHelper email = new EmailHelper();
                    email.Body = EmailNotificationBody.SentApplicationFormStatustoConsultant(res.CONSULTANT_NAME, res.CONSULTANT_SURNAME, res.APPLICATION_NUMBER).ToString();
                    email.Recipient = res.CONSULTANT_EMAIL;//"prasadthummala558@gmail.com";
                    email.Subject = "Wayleave application status";
                    //email.SendEmail();
                    Email em = new Email();
                    em.GenerateEmail(email.Recipient, email.Subject, email.Body, res.APPLICATION_NUMBER, false, AppSettingKeys.EmailNotificationTemplate, res.CONSULTANT_NAME + " " + res.CONSULTANT_SURNAME, null, null, res.APPLICATION_NUMBER, null, null, null, null);
                }
                return "Application Form resubmitted successfully.";
            }
            else
            {
                string createdUser = res.PROPERTYOWNER_NAME + " " + res.PROPERTYOWNER_SURNAME;
                WL_APPLICATIONFORM_AUDIT audit_app = new WL_APPLICATIONFORM_AUDIT();
                CopyClass.CopyObject(res, ref audit_app);
                audit_app.ACTION = AuditTrailKeys.UploadedPaymentReciept;
                audit_app.CREATED_DATE = DateTime.Now;
                audit_app.MODIFIED_DATE = DateTime.Now;
                audit_app.CREATED_USER = createdUser;
                audit_app.MODIFIED_USER = createdUser;
                audit_app.OUTCOME = AuditTrailKeys.UnSuccessfulOutcome;
                audit_app.DEVICE_IP_ADDRESS = Ip.GetIP4Address();
                audit_app.APPLICATION_STEP_DESCRIPTION = AuditTrailKeys.PendingPayment;
                _context.WL_APPLICATIONFORM_AUDIT.Add(audit_app);
                _context.SaveChanges();
                return "Application Form resubmission failed!";
            }
                         
        }

        public bool UpdateApplicationFormStaus(int appId, string appStatus,string comments, string deptComments, string deptName, string deptStatus,string firstName)
        {           
            WL_APPLICATIONFORM res = GetApplicationFormData(appId);
            var grantWayleave = _dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.GrantWayleaveApplication);
            var rejectWayleave = _dbeService.StatusTypes.FirstOrDefault(s => s.Key == StatusKeys.RejectWayleaveApplication);
            res.APPLICATION_STEP_DESCRIPTION = appStatus;
            string grantStatus = grantWayleave != null ? grantWayleave.Description : "";
            string rejectStatus = rejectWayleave != null ? rejectWayleave.Description : "";
            res.STATUS_ID = appStatus == grantStatus ? 3 : (appStatus == "Request for approvals" || appStatus == "Request for documents" ? 2 : 4);
            res.APPLICATION_COMMENTS = comments;

            WL_APPLICATIONFORM_AUDIT audit_appp = new WL_APPLICATIONFORM_AUDIT();
            CopyClass.CopyObject(res, ref audit_appp);
            audit_appp.CREATED_DATE = DateTime.Now;
            audit_appp.MODIFIED_DATE = DateTime.Now;
            audit_appp.CREATED_USER = firstName;
            audit_appp.MODIFIED_USER = firstName;
            audit_appp.ACTION = AuditTrailKeys.Applicationviewed;
            audit_appp.OUTCOME = AuditTrailKeys.SuccessfulOutcome;
            audit_appp.DEVICE_IP_ADDRESS = Ip.GetIP4Address();
            audit_appp.APPLICATION_STEP_DESCRIPTION = AuditTrailKeys.Distributed_to_Departments;
            //audit_app.cre
            _context.WL_APPLICATIONFORM_AUDIT.Add(audit_appp);
            //if(!String.IsNullOrEmpty(deptStatus) && !String.IsNullOrEmpty(deptName))
            //{
            //    WL_DEPARTMENTS wd = GetDepartmentDataById(appId, deptName);
            //    wd.APPROVE_OR_REJECT_COMMENTS = !String.IsNullOrEmpty(deptComments)? deptComments:"";
            //    wd.APPLICATION_STATUS = deptStatus;
            //}
            bool isSuccess = SaveChanges();
            if (isSuccess)
            {
                WL_APPLICATIONFORM_AUDIT audit_app = new WL_APPLICATIONFORM_AUDIT();
                CopyClass.CopyObject(res, ref audit_app);
                audit_app.CREATED_DATE = DateTime.Now;
                audit_app.MODIFIED_DATE = DateTime.Now;
                audit_app.CREATED_USER = firstName;
                audit_app.MODIFIED_USER = firstName;
                audit_app.ACTION = "Updated to "+ appStatus;
                audit_app.OUTCOME = AuditTrailKeys.SuccessfulOutcome;
                audit_app.DEVICE_IP_ADDRESS = Ip.GetIP4Address();
                //audit_app.cre
                _context.WL_APPLICATIONFORM_AUDIT.Add(audit_app);
                _context.SaveChanges();

                EmailHelper email = new EmailHelper();
                string applicationGrantStatus = string.Empty;

                if (appStatus == "Application Granted")
                {
                    applicationGrantStatus = "Granted";
                }
                else if (appStatus == "Application Rejected")
                {
                    applicationGrantStatus = "Rejected";
                }
                email.Body = EmailNotificationBody.SentApplicationFormGrantStatus(res.PROPERTYOWNER_NAME, res.PROPERTYOWNER_SURNAME, res.APPLICATION_NUMBER, applicationGrantStatus, comments).ToString();
                email.Recipient = res.PROPERTYOWNER_EMAIL;//"prasadthummala558@gmail.com";
                email.Subject = "Wayleave Application Status";
                //email.SendEmail();
                Email em = new Email();
                em.GenerateEmail(email.Recipient, email.Subject, email.Body, res.APPLICATION_NUMBER, false, AppSettingKeys.EmailNotificationTemplate, res.PROPERTYOWNER_NAME + " " + res.PROPERTYOWNER_SURNAME, null, null, res.APPLICATION_NUMBER, null, null, null, null);
            }
            else {
                WL_APPLICATIONFORM_AUDIT audit_app = new WL_APPLICATIONFORM_AUDIT();
                CopyClass.CopyObject(res, ref audit_app);
                audit_app.CREATED_DATE = DateTime.Now;
                audit_app.MODIFIED_DATE = DateTime.Now;
                audit_app.CREATED_USER = firstName;
                audit_app.MODIFIED_USER = firstName;
                audit_app.ACTION = "Updated to " + appStatus;
                audit_app.OUTCOME = AuditTrailKeys.UnSuccessfulOutcome;
                audit_app.DEVICE_IP_ADDRESS = Ip.GetIP4Address();
                //audit_app.cre
                _context.WL_APPLICATIONFORM_AUDIT.Add(audit_app);
                _context.SaveChanges();
            }
            return isSuccess;
        }

        public bool UpdateCirculatedDepartmentStaus(int appId, string appStatus, string comments, string deptComments, string deptName, string deptStatus,string firstName)
        {
            bool isSuccess = false;
            if (!String.IsNullOrEmpty(deptStatus) && !String.IsNullOrEmpty(deptName))
            {
                WL_APPLICATIONFORM res = GetApplicationFormData(appId);
                WL_DEPARTMENTS wd = GetDepartmentDataById(appId, deptName);
                wd.APPROVE_OR_REJECT_COMMENTS = !String.IsNullOrEmpty(deptComments) ? deptComments : "";
                wd.APPLICATION_STATUS = deptStatus;
                wd.RESPONSE_DATE = DateTime.Now;

                WL_APPLICATIONFORM_AUDIT audit_appp = new WL_APPLICATIONFORM_AUDIT();
                CopyClass.CopyObject(res, ref audit_appp);
                audit_appp.CREATED_DATE = DateTime.Now;
                audit_appp.MODIFIED_DATE = DateTime.Now;
                audit_appp.CREATED_USER = firstName;
                audit_appp.MODIFIED_USER = firstName;
                audit_appp.ACTION = AuditTrailKeys.Applicationviewed;
                audit_appp.OUTCOME = AuditTrailKeys.SuccessfulOutcome;
                audit_appp.DEVICE_IP_ADDRESS = Ip.GetIP4Address();
                audit_appp.APPLICATION_STEP_DESCRIPTION = AuditTrailKeys.Distributed_to_Departments;
                //audit_app.cre
                _context.WL_APPLICATIONFORM_AUDIT.Add(audit_appp);


                isSuccess = SaveChanges();
                if (isSuccess)
                {
                    WL_APPLICATIONFORM_AUDIT audit_app = new WL_APPLICATIONFORM_AUDIT();
                    CopyClass.CopyObject(res, ref audit_app);
                    audit_app.ACTION = "Updated to " + deptStatus;
                    audit_app.OUTCOME = AuditTrailKeys.SuccessfulOutcome;
                    audit_app.DEVICE_IP_ADDRESS = Ip.GetIP4Address();

                    //audit_app.ACTION = "Modified";
                    audit_app.APPLICATION_STEP_DESCRIPTION = AuditTrailKeys.Distributed_to_Departments;
                    audit_app.CREATED_DATE = DateTime.Now;
                    audit_app.MODIFIED_DATE = DateTime.Now;
                    audit_app.CREATED_USER = firstName;
                    audit_app.MODIFIED_USER = firstName;
                    _context.WL_APPLICATIONFORM_AUDIT.Add(audit_app);
                    _context.SaveChanges();

                    EmailHelper email = new EmailHelper();
                    string applicationGrantStatus = string.Empty;

                    if (deptStatus == "Not Affected")
                    {
                        applicationGrantStatus = "Not Affected";
                    }
                    else if (appStatus == "Affected")
                    {
                        applicationGrantStatus = "Affected";
                    }
                    email.Body = EmailNotificationBody.DepartmentResponseStatus(res.PROPERTYOWNER_NAME, res.PROPERTYOWNER_SURNAME, res.APPLICATION_NUMBER, deptStatus, deptComments, deptName).ToString();
                    email.Recipient = res.PROPERTYOWNER_EMAIL;//"prasadthummala558@gmail.com";
                    email.Subject = "Wayleave Application Department Response Status";
                    //email.SendEmail();
                    Email em = new Email();
                    em.GenerateEmail(email.Recipient, email.Subject, email.Body, res.APPLICATION_NUMBER, false, AppSettingKeys.EmailNotificationTemplate, res.PROPERTYOWNER_NAME + " " + res.PROPERTYOWNER_SURNAME, null, null, res.APPLICATION_NUMBER, null, null, null, null);
                }
                else
                {
                    WL_APPLICATIONFORM_AUDIT audit_app = new WL_APPLICATIONFORM_AUDIT();
                    CopyClass.CopyObject(res, ref audit_app);
                    audit_app.ACTION = "Updated to " + deptStatus;
                    audit_app.OUTCOME = AuditTrailKeys.UnSuccessfulOutcome;
                    audit_app.DEVICE_IP_ADDRESS = Ip.GetIP4Address();
                    audit_app.APPLICATION_STEP_DESCRIPTION = AuditTrailKeys.Distributed_to_Departments;
                    audit_app.CREATED_DATE = DateTime.Now;
                    audit_app.MODIFIED_DATE = DateTime.Now;
                    audit_app.CREATED_USER = firstName;
                    audit_app.MODIFIED_USER = firstName;
                    _context.WL_APPLICATIONFORM_AUDIT.Add(audit_app);
                    _context.SaveChanges();
                }
            }
            
            return isSuccess;
        }

        public bool SaveChanges()
        {
            return (_context.SaveChanges() >= 0 ? true : false);
        }
        public int UpdateApplicationInspectiondata(int appId, string inspectionStatus, DateTime? inspectiondate, List<PreInspectionDataModel> pid)
        {
            WL_APPLICATIONFORM res = GetApplicationFormData(appId);
            if(pid.Count>0)
            {
                if (pid.FirstOrDefault().InspectionType == "pre")
                {
                    res.PRE_INSPECTION_STATUS = pid.FirstOrDefault().PreInspectionStatus;
                }
                else if (pid.FirstOrDefault().InspectionType == "post")
                {
                    res.INSPECTION_STATUS = inspectionStatus;
                    res.INSPECTION_DATE = inspectiondate;
                }
            }
            
            
            bool n = SaveChanges();
            if (n)
            {
                WL_APPLICATIONFORM_AUDIT audit_app = new WL_APPLICATIONFORM_AUDIT();
                    CopyClass.CopyObject(res, ref audit_app);
                    audit_app.ACTION = "Modified";
                    audit_app.CREATED_DATE = DateTime.Now;
                    audit_app.MODIFIED_DATE = DateTime.Now;
                    _context.WL_APPLICATIONFORM_AUDIT.Add(audit_app);
                    _context.SaveChanges();
                return 1;
            }
            else
            {
                return 0;
            }
        }
    }
}