using AutoMapper;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Description;
using C8.eServices.Mvc.Models;
using C8.eServices.Mvc.Models.Mapings;
using C8.eServices.Mvc.Models.Services;
using C8.eServices.Mvc.DataAccessLayer;

namespace C8.eServices.Mvc.Controllers
{
    public class WL_APPLICATIONFORMController : ApiController
    {
        private WayleaveDbContext db = new WayleaveDbContext();
        private readonly IApplicationForm _appFrom = null;
        private readonly IApplicationStatus _appStatusTypes = null;
        private readonly ISeriviceTypes _seriviceTypes = null;
        private readonly ISeriviceSubTypes _seriviceSubTypes = null;
        private readonly IWLInspectionList _inspectionList = null;
        private IMapper _mapper = null;

        public WL_APPLICATIONFORMController(IApplicationForm appFrom, IApplicationStatus appStatusTypes, ISeriviceTypes seriviceTypes, ISeriviceSubTypes seriviceSubTypes, IWLInspectionList inspectionList,
            IMapper mapper)
        {
            _appFrom = appFrom;
            _mapper = mapper;
            _appStatusTypes = appStatusTypes;
            _seriviceTypes = seriviceTypes;
            _seriviceSubTypes = seriviceSubTypes;
            _inspectionList = inspectionList;

        }
        // GET: api/WL_APPLICATIONFORM
        [Route("api/all-applications")]
        //[Authorize]
        // GET: api/WL_APPLICATIONFORM/5
        [ResponseType(typeof(ApplicationFormDashboardView))]
        public async Task<IHttpActionResult> GetWL_APPLICATIONFORM()
        {
            try
            {
                var res = _appFrom.GetAllApplicationForm();

                if (res.Count() > 0)
                {
                    var mpres = _mapper.Map<List<ApplicationFormDashboardView>>(res);
                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }

            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        [Route("api/get-wlApplication-by-id/{id}")]
        public async Task<IHttpActionResult> GetWL_APPLICATIONFORM(int id)
        {

            try
            {
                var res = _appFrom.GetApplicationFormData(id);

                if (res != null)
                {
                    var mpres = _mapper.Map<WL_APPLICATIONFORM, ApplicationModel>(res);
                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }

            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "No data found!"));

        }

        // PUT: api/WL_APPLICATIONFORM/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutWL_APPLICATIONFORM(int id, WL_APPLICATIONFORM wL_APPLICATIONFORM)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != wL_APPLICATIONFORM.APP_ID)
            {
                return BadRequest();
            }

            db.Entry(wL_APPLICATIONFORM).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!WL_APPLICATIONFORMExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }



        // DELETE: api/WL_APPLICATIONFORM/5
        [ResponseType(typeof(WL_APPLICATIONFORM))]
        public async Task<IHttpActionResult> DeleteWL_APPLICATIONFORM(int id)
        {
            WL_APPLICATIONFORM wL_APPLICATIONFORM = await db.WL_APPLICATIONFORM.FindAsync(id);
            if (wL_APPLICATIONFORM == null)
            {
                return NotFound();
            }

            db.WL_APPLICATIONFORM.Remove(wL_APPLICATIONFORM);
            await db.SaveChangesAsync();

            return Ok(wL_APPLICATIONFORM);
        }


        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-applications-with-counts-serach")]
        //[Authorize]
        [HttpPost]
        public async Task<IHttpActionResult> ApplicationsWithCountsBySearch(ApplicationInputClaimModel inpuclaims)
        {
            try
            {
                var result = _appStatusTypes.GetStatusTypes().Where(d => d.TABLE_NAME == "wayleave application");
                var mpresult = _mapper.Map<List<ApplicationInputModel>>(result);

                if (result.Count() > 0)
                {
                    var appRes = _appFrom.GetAllApplicationForm(inpuclaims);
                    if (HttpContext.Current.Session["wayleaveaccountId"] != null)
                    {
                        int accountId = Convert.ToInt32(HttpContext.Current.Session["wayleaveaccountId"]);
                        appRes = appRes.Where(d => d.CREATED_BY == accountId);
                    }
                    var mpres = _mapper.Map<List<ApplicationFormDashboardView>>(appRes);
                    var appFinalResult = new List<ApplicationInputModel>();
                    foreach (ApplicationInputModel a in mpresult)
                    {
                        ApplicationInputModel app = new ApplicationInputModel()
                        {
                            id = a.id,
                            sequenceId = a.sequenceId,
                            name = a.name,
                            count = mpres.Where(d => d.statusId == a.id).Count(),
                            applicationList = mpres.Where(d => d.statusId == a.id).ToList()

                        };

                        appFinalResult.Add(app);
                    }
                    return Ok(appFinalResult);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }

            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }


        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-applications-with-counts")]
        // [Authorize]
        [HttpPost]
        public async Task<IHttpActionResult> GetApplicationsWithCounts(ApplicationInputClaimModel inpuclaims)
        {
            try
            {
                var result = _appStatusTypes.GetStatusTypes().Where(d => d.TABLE_NAME == "wayleave application");
                var mpresult = _mapper.Map<List<ApplicationInputModel>>(result);

                if (mpresult.Count() > 0)
                {
                    var appRes = _appFrom.GetAllApplicationForm();
                    //if (HttpContext.Current.Session["wayleaveaccountId"] != null)
                    if (inpuclaims.created_by >0)
                    {
                        int accountId = inpuclaims.created_by;//Convert.ToInt32(HttpContext.Current.Session["wayleaveaccountId"]);
                        appRes = appRes.Where(d => d.CREATED_BY == accountId);
                    }

                    var mpres = _mapper.Map<List<ApplicationFormDashboardView>>(appRes);

                    var appFinalResult = new List<ApplicationInputModel>();
                    var serviceTypeDetails = _seriviceTypes.GetSeriveTypes().Where(f => f.DESCRIPTION == "Access").FirstOrDefault();

                    foreach (ApplicationInputModel a in mpresult)
                    {
                        //Commented by Prasad on 04-03-2021
                        if (inpuclaims.isAdmin == "Y" || String.IsNullOrEmpty(inpuclaims.isAdmin))
                        {
                            ApplicationInputModel app = new ApplicationInputModel()
                            {
                                id = a.id,
                                sequenceId = a.sequenceId,
                                name = a.name,
                                count = mpres.Where(d => d.statusId == a.id).Count(),
                                applicationList = mpres.Where(d => d.statusId == a.id).ToList()
                            };
                            appFinalResult.Add(app);
                        }
                        else if (inpuclaims.isAdmin == "N")
                        {
                            ApplicationInputModel app = new ApplicationInputModel()
                            {
                                id = a.id,
                                sequenceId = a.sequenceId,
                                name = a.name,
                                count = mpres.Where(d => d.statusId == a.id && d.serviceType == (serviceTypeDetails != null ? serviceTypeDetails.SERVICE_ID : 0)).Count(),
                                applicationList = mpres.Where(d => d.statusId == a.id && d.serviceType == (serviceTypeDetails != null ? serviceTypeDetails.SERVICE_ID : 0)).ToList()
                            };
                            appFinalResult.Add(app);
                        }

                        //ApplicationInputModel app = new ApplicationInputModel()
                        //{
                        //    id = a.id,
                        //    sequenceId = a.sequenceId,
                        //    name = a.name,
                        //    count = mpres.Where(d => d.statusId == a.id).Count(),
                        //    applicationList = mpres.Where(d => d.statusId == a.id).ToList()
                        //};
                        //appFinalResult.Add(app);
                    }
                    return Ok(appFinalResult);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }


        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-applications-status-list")]
        // [Authorize]
        [HttpPost]
        public async Task<IHttpActionResult> GetApplicationsStatusList(ApplicationInputClaimModel inpuclaims)
        {
            try
            {
                var result = _appStatusTypes.GetStatusTypes().Where(d => d.TABLE_NAME == "wayleave application");
                var mpresult = _mapper.Map<List<ApplicationInputModel>>(result);

                if (mpresult.Count() > 0)
                {
                    var appRes = _appFrom.GetAllApplicationForm();
                    if (HttpContext.Current.Session["wayleaveaccountId"] != null)
                    {
                        int accountId = Convert.ToInt32(HttpContext.Current.Session["wayleaveaccountId"]);
                        appRes = appRes.Where(d => d.CREATED_BY == accountId);
                    }

                    var mpres = _mapper.Map<List<ApplicationFormDashboardView>>(appRes);

                    var appFinalResult = new List<ApplicationInputModel>();
                    var serviceTypeDetails = _seriviceTypes.GetSeriveTypes().Where(f => f.DESCRIPTION == "Access").FirstOrDefault();

                    foreach (ApplicationInputModel a in mpresult)
                    {
                        if (inpuclaims.isAdmin == "Y" || String.IsNullOrEmpty(inpuclaims.isAdmin))
                        {
                            ApplicationInputModel app = new ApplicationInputModel()
                            {
                                id = a.id,
                                sequenceId = a.sequenceId,
                                name = a.name,
                                count = mpres.Where(d => d.statusId == a.id).Count(),
                                applicationList = mpres.Where(d => d.statusId == a.id).ToList()
                            };
                            appFinalResult.Add(app);
                        }
                        else if (inpuclaims.isAdmin == "N")
                        {
                            ApplicationInputModel app = new ApplicationInputModel()
                            {
                                id = a.id,
                                sequenceId = a.sequenceId,
                                name = a.name,
                                count = mpres.Where(d => d.statusId == a.id && d.serviceType == (serviceTypeDetails != null ? serviceTypeDetails.SERVICE_ID : 0)).Count(),
                                applicationList = mpres.Where(d => d.statusId == a.id && d.serviceType == (serviceTypeDetails != null ? serviceTypeDetails.SERVICE_ID : 0)).ToList()
                            };
                            appFinalResult.Add(app);
                        }
                    }
                    return Ok(appFinalResult);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }



        [Route("api/get-application-alerts-counts/{name}")]
        // [Authorize]
        public async Task<IHttpActionResult> GetApplicationsAlertsWithCounts(string name)
        {
            try
            {
                var result = _appStatusTypes.GetStatusTypes().Where(d => d.TABLE_NAME == "wayleave application");
                var mpresult = _mapper.Map<List<ApplicationInputModel>>(result);

                if (result.Count() > 0)
                {
                    var appRes = _appFrom.GetAllApplicationForm();
                    if (HttpContext.Current.Session["wayleaveaccountId"] != null)
                    {
                        int accountId = Convert.ToInt32(HttpContext.Current.Session["wayleaveaccountId"]);
                        appRes = appRes.Where(d => d.CREATED_BY == accountId);
                    }
                    var mpres = _mapper.Map<List<ApplicationFormDashboardView>>(appRes);

                    var appFinalResult = new List<ApplicationInputModel>();
                    var serviceTypeDetails = _seriviceTypes.GetSeriveTypes().Where(f => f.DESCRIPTION == "Access").FirstOrDefault();

                    foreach (ApplicationInputModel a in mpresult)
                    {
                        if (name == "Y" || String.IsNullOrEmpty(name) || name == "undefined" || name == "o")
                        {
                            ApplicationInputModel app = new ApplicationInputModel()
                            {
                                id = a.id,
                                sequenceId = a.sequenceId,
                                name = a.name,
                                count = mpres.Where(d => d.statusId == a.id).Count(),
                                //applicationList = mpres.Where(d => d.statusId == a.id).ToList()
                            };
                            appFinalResult.Add(app);
                        }
                        else if (name == "N")
                        {
                            ApplicationInputModel app = new ApplicationInputModel()
                            {
                                id = a.id,
                                sequenceId = a.sequenceId,
                                name = a.name,
                                count = mpres.Where(d => d.statusId == a.id && d.serviceType == (serviceTypeDetails != null ? serviceTypeDetails.SERVICE_ID : 0)).Count(),
                                //applicationList = mpres.Where(d => d.statusId == a.id && d.serviceType == (serviceTypeDetails != null ? serviceTypeDetails.SERVICE_ID : 0)).ToList()
                            };
                            appFinalResult.Add(app);
                        }
                    }
                    return Ok(appFinalResult);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }


        //Prasad
        [Route("api/add-application-form")]
        //[Authorize]
        public async Task<IHttpActionResult> PostWL_APPLICATIONFORM()
        {
            try
            {
                var FormData = HttpContext.Current.Request.Form["FormData"];
                var RegionData = HttpContext.Current.Request.Form["RegionData"];
                var ContactData = HttpContext.Current.Request.Form["ContactPersonData"];
                var WorkLocationData = HttpContext.Current.Request.Form["WorkLocations"];
                var DepartmentsData = HttpContext.Current.Request.Form["Departments"];


                var applicationFormResponse = JsonConvert.DeserializeObject<WL_APPLICATIONFORM>(FormData);
                var RegionResponse = JsonConvert.DeserializeObject<List<WL_REGIONS>>(RegionData);
                var ContactResponse = JsonConvert.DeserializeObject<List<WL_CONTACT_PERSONS>>(ContactData);
                var WorkLocationResponse = JsonConvert.DeserializeObject<List<WL_WORK_LOCATIONS>>(WorkLocationData);
                var DepartmentsDataResponse = JsonConvert.DeserializeObject<List<WL_DEPARTMENTS>>(DepartmentsData);

                //HttpFileCollection files = HttpContext.Current.Request.Files;



                int appCount = _appFrom.GetAllApplicationForm().Count();
                string res = string.Empty;
                if (applicationFormResponse.APPLICATION_STEP_DESCRIPTION == "Request for documents")
                {
                    res = _appFrom.UpdateApplicationForm(applicationFormResponse, HttpContext.Current.Request.Files, HttpContext.Current.Request.Browser.Browser.ToUpper());
                }
                else
                {
                    res = _appFrom.AddApplicationForm(applicationFormResponse, RegionResponse, ContactResponse, WorkLocationResponse, DepartmentsDataResponse, HttpContext.Current.Request.Files, HttpContext.Current.Request.Browser.Browser.ToUpper(), appCount);
                }

                if (res != null)
                {
                    //var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(res);
                }
                //return Ok("");
            }
            catch (DbEntityValidationException ex)
            {
                string result = "";
                foreach (var entityValidationErrors in ex.EntityValidationErrors)
                {
                    foreach (var validationError in entityValidationErrors.ValidationErrors)
                    {
                        result = "Property: " + validationError.PropertyName + " Error: " + validationError.ErrorMessage;
                    }
                }
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }



            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        [Route("api/get-preinspection-list")]
        //[Authorize]
        public async Task<IHttpActionResult> PostAllPreinspectionList()
        {
            try
            {
                Dictionary<string, object> dct = new Dictionary<string, object>();
                var FormData = HttpContext.Current.Request.Form["FormData"];

                var applicationFormResponse = JsonConvert.DeserializeObject<List<PreinspectionPaginationData>>(FormData);

                int appCount = _appFrom.GetAllApplicationForm().Count();
                var applicationList = _appFrom.GetAllApplicationForm();
                string res = string.Empty;

                if (res != null)
                {
                    PreinspectionPaginationData ppd = new PreinspectionPaginationData(db, _appFrom);
                    dct = ppd.getAllPreinspectionData(applicationFormResponse.FirstOrDefault().pageIndex, applicationFormResponse.FirstOrDefault().pageSize, applicationFormResponse.FirstOrDefault().sorting, applicationFormResponse.FirstOrDefault().search);
                    //var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(dct);
                }
                //return Ok("");
            }
            catch (DbEntityValidationException ex)
            {
                string result = "";
                foreach (var entityValidationErrors in ex.EntityValidationErrors)
                {
                    foreach (var validationError in entityValidationErrors.ValidationErrors)
                    {
                        result = "Property: " + validationError.PropertyName + " Error: " + validationError.ErrorMessage;
                    }
                }
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }



            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        [Route("api/update-application-form-status")]
        public async Task<IHttpActionResult> PostUpdateApplicationStatus(ApplicationInputClaimModel inputClaims)
        {
            try
            {
                bool res = _appFrom.UpdateApplicationFormStaus(inputClaims.appId, inputClaims.appStatus, inputClaims.comments, inputClaims.deptComments, inputClaims.deptName, inputClaims.deptStatus);

                if (res)
                {
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "No updates found!"));
        }

        [Route("api/update-inspection-details")]
        //[Authorize]
        public async Task<IHttpActionResult> PostInspectionDetails()
        {
            try
            {
                var InspectionData = HttpContext.Current.Request.Form["InspectionData"];
                var AppId = HttpContext.Current.Request.Form["ApplicationId"];
                var InspectionStatusData = HttpContext.Current.Request.Form["InspectionStatus"];
                DateTime dt = DateTime.Now;

                var InspectionDataResponse = JsonConvert.DeserializeObject<List<WL_INSPECTION_LIST>>(InspectionData);
                var InspectionStatusResponse = JsonConvert.DeserializeObject<List<PreInspectionDataModel>>(InspectionStatusData);
                string insType = InspectionStatusResponse.FirstOrDefault() != null ? InspectionStatusResponse.FirstOrDefault().InspectionType : "";
                int inspectionResult = _inspectionList.AddInspection(InspectionDataResponse, insType);

                if (inspectionResult > 0)
                {
                    int res = _appFrom.UpdateApplicationInspectiondata(Convert.ToInt32(AppId), "Completed", dt, InspectionStatusResponse);
                    return Ok(res);
                }
                //return Ok("");
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }


        [Route("api/update-circulated-department-status")]
        public async Task<IHttpActionResult> PostUpdateDepartmentStatus(ApplicationInputClaimModel inputClaims)
        {
            try
            {
                //UpdateCirculatedDepartmentStaus
                bool res = _appFrom.UpdateCirculatedDepartmentStaus(inputClaims.appId, inputClaims.appStatus, inputClaims.comments, inputClaims.deptComments, inputClaims.deptName, inputClaims.deptStatus);

                if (res)
                {
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "No updates found!"));
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool WL_APPLICATIONFORMExists(int id)
        {
            return db.WL_APPLICATIONFORM.Count(e => e.APP_ID == id) > 0;
        }
    }
}