using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Claims;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Mapings;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class ApplicationFormRepo : IApplicationForm
    {
        private WayleaveDbContext _context;
        private readonly IServiceDocument _serviceDocument = null;
        public ApplicationFormRepo(WayleaveDbContext context, IServiceDocument serviceDocument)
        {
            _serviceDocument = serviceDocument;
            _context = context;
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


        public string AddApplicationForm(WL_APPLICATIONFORM applicationForm, List<WL_REGIONS> RegionResponse, List<WL_CONTACT_PERSONS> ContactResponse, List<WL_WORK_LOCATIONS> locationResponse, List<WL_DEPARTMENTS> departmentsDataResponse, HttpFileCollection files, string browser, int appCount)
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
                var serviceResult = _serviceDocument.GetServiceDocumentsById(applicationForm.SERVICE_TYPE);
                var tt = serviceResult.ToList();
                int loggedinID = 1;
                if (HttpContext.Current.Session["wayleaveaccountId"] != null)
                {
                    loggedinID = Convert.ToInt32(HttpContext.Current.Session["wayleaveaccountId"]);
                }
                applicationForm.APPLICATION_NUMBER = applicationNumber;
                applicationForm.COMPANY_ID = 1;
                applicationForm.STATUS_ID = 1;
                applicationForm.CREATED_BY = loggedinID;
                applicationForm.APPLICATION_STEP_DESCRIPTION = "Pending";
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
                        ws.DOCUMENT_TYPE = documentType;
                        ws.DOCUMENT_NAME = file_Name;
                        ws.CREATED_BY = 1;
                        ws.CREATED_DATE = DateTime.Now;
                        _context.WL_SUPPORTING_DOCUMENTS.Add(ws);
                        //applicationForm.COVER_LETTER = file_Name;
                    }
                }


                foreach (WL_REGIONS r in RegionResponse)
                {
                    r.CREATED_BY = 1;
                    r.CREATED_DATE = DateTime.Now;
                    _context.WL_REGIONS.Add(r);
                }

                foreach (WL_CONTACT_PERSONS c in ContactResponse)
                {
                    c.CREATED_BY = 1;
                    c.CREATED_DATE = DateTime.Now;
                    _context.WL_CONTACT_PERSONS.Add(c);
                }

                foreach (WL_WORK_LOCATIONS wl in locationResponse)
                {
                    wl.CREATED_BY = 1;
                    wl.CREATED_DATE = DateTime.Now;
                    _context.WL_WORK_LOCATIONS.Add(wl);
                }
               foreach (WL_DEPARTMENTS department in departmentsDataResponse)
                {
                    department.SERVICE_ID = applicationForm.SERVICE_TYPE;
                    department.APP_ID = applicationForm.APP_ID;
                    department.CREATED_ON = DateTime.Now;
                    _context.WL_DEPARTMENTS.Add(department);
                }
                bool n = SaveChanges();

                if (n)
                {
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
            var tt = serviceResult.ToList();
            int loggedinID = 1;
            if (HttpContext.Current.Session["wayleaveaccountId"] != null)
            {
                loggedinID = Convert.ToInt32(HttpContext.Current.Session["wayleaveaccountId"]);
            }
            WL_APPLICATIONFORM res = GetApplicationFormData(applicationForm.APP_ID);
            res.APPLICATION_STEP_DESCRIPTION = "Pending";
            res.STATUS_ID = 1;
            if (files.Count > 0)
            {  //  Get all files from Request object 
               //return null;
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
                    ws.DOCUMENT_TYPE = documentType;
                    ws.DOCUMENT_NAME = file_Name;
                    ws.CREATED_BY = 1;
                    ws.APP_ID = applicationForm.APP_ID;
                    ws.CREATED_DATE = DateTime.Now;
                    _context.WL_SUPPORTING_DOCUMENTS.Add(ws);
                    //applicationForm.COVER_LETTER = file_Name;
                }
            }
            //_context.Entry(res).State = System.Data.Entity.EntityState.Modified;
            bool n = SaveChanges();
            if (n)
            {
                return "Application Form resubmitted successfully.";
            }
            else
            {
                return "Application Form resubmission failed!";
            }

        }

        public bool UpdateApplicationFormStaus(int appId, string appStatus,string comments, string deptComments, string deptName, string deptStatus)
        {           
            WL_APPLICATIONFORM res = GetApplicationFormData(appId);
            res.APPLICATION_STEP_DESCRIPTION = appStatus;
            res.STATUS_ID = appStatus == "Approved" ? 3 : (appStatus == "Request for approvals" || appStatus == "Request for documents" ? 2 : 4);
            res.APPLICATION_COMMENTS = comments;
            if(!String.IsNullOrEmpty(deptStatus) && !String.IsNullOrEmpty(deptName))
            {
                WL_DEPARTMENTS wd = GetDepartmentDataById(appId, deptName);
                wd.APPROVE_OR_REJECT_COMMENTS = !String.IsNullOrEmpty(deptComments)? deptComments:"";
                wd.APPLICATION_STATUS = deptStatus;
            }            
            return SaveChanges();
        }

        public bool UpdateCirculatedDepartmentStaus(int appId, string appStatus, string comments, string deptComments, string deptName, string deptStatus)
        {           
            if (!String.IsNullOrEmpty(deptStatus) && !String.IsNullOrEmpty(deptName))
            {
                WL_DEPARTMENTS wd = GetDepartmentDataById(appId, deptName);
                wd.APPROVE_OR_REJECT_COMMENTS = !String.IsNullOrEmpty(deptComments) ? deptComments : "";
                wd.APPLICATION_STATUS = deptStatus;
            }
            return SaveChanges();
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
                return 1;
            }
            else
            {
                return 0;
            }
        }
    }
}