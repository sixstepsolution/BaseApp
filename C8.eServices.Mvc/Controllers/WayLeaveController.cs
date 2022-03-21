using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Description;
using C8.eServices.Mvc.Models.EmailBodys;
using C8.eServices.Mvc.Models.Mapings;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Controllers
{
    public class WayLeaveController : ApiController
    {
        private readonly IWayleave _wayleave = null;
        private readonly ISeriviceTypes _seriviceTypes = null;
        private readonly ISeriviceSubTypes _seriviceSubTypes = null;
        private readonly IApplicationStatus _appStatusTypes = null;
        private readonly IWorkLocations _workLocations = null;
        private readonly IRegion _region = null;
        private readonly IWlAccount _accou = null;
        private readonly IContactPersons _contactPerson = null;
        private readonly ISupportingDocument _supportingDocument = null;
        private readonly IServiceDocument _serviceDocument = null;
        private readonly IMasterDepartments _serviceDepartments = null;
        private readonly IMasterInspections _masterinspections = null;
        private readonly IMasterCustomerCareCenters _mastercccenters = null;
        private readonly IMasterDeclarations _masterdeclarations = null;
        private readonly IWLDeclarations _wldeclarations = null;
        private readonly IDepartments _departments = null;
        private readonly IWLExcavation _excavations = null;
        private IMapper _mapper = null;

        public WayLeaveController(IWayleave wayleave,
            ISeriviceTypes seriviceTypes,
            ISeriviceSubTypes seriviceSubTypes,
            IApplicationStatus appStatusTypes,
            IMapper mapper, IServiceDocument serviceDocument,
            IWorkLocations workLocations,
            IContactPersons contactPerson,
            ISupportingDocument supportingDocument,
            IMasterDepartments serviceDepartments,
             IRegion region,
             IMasterInspections masterinspections,
            IWlAccount accou,
            IMasterCustomerCareCenters mastercccenters,
            IMasterDeclarations masterdeclarations,
            IWLDeclarations wldeclarations,
            IDepartments departments,
            IWLExcavation excavations
            )
        {
            _wayleave = wayleave;
            _seriviceTypes = seriviceTypes;
            _accou = accou;
            _seriviceSubTypes = seriviceSubTypes;
            _appStatusTypes = appStatusTypes;
            _serviceDocument = serviceDocument;
            _workLocations = workLocations;
            _contactPerson = contactPerson;
            _supportingDocument = supportingDocument;
            _serviceDepartments = serviceDepartments;
            _region = region;
            _mapper = mapper;
            _masterinspections = masterinspections;
            _mastercccenters = mastercccenters;
            _masterdeclarations = masterdeclarations;
            _wldeclarations = wldeclarations;
            _departments = departments;
            _excavations = excavations;
        }


        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-all-accounts/{accountNo}")]
        // [Authorize]
        public async Task<IHttpActionResult> GetAllAccountsNumbers(string accountNo)
        {
            try
            {
                var res = _wayleave.GetAccounts(accountNo);

                if (res.Count() > 0)
                {
                    var mpres = _mapper.Map<List<AccountsView>>(res);
                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        [Route("api/WayleaveAccountLogin")]
        [HttpGet]
        public async Task<IHttpActionResult> WayleaveAccountLogin(string username, string password)
        {
            Dictionary<string, object> dct = new Dictionary<string, object>();
            try
            {

                var res = _accou.WayleaveAccountLogin(username, password);

                if (res != null)
                {
                    var session = HttpContext.Current.Session;
                    HttpContext.Current.Session["wayleaveaccountId"] = res.ACCOUNT_ID;
                    HttpContext.Current.Session["wayleaveaccountEmail"] = res.EMAIL;
                    //HttpContext.Current.Session["wayleaveaccountstatus"] = res.MASTER_STATUS_TYPES.DESCRIPTION;
                    HttpContext.Current.Session["wayleaveaccountstatusId"] = res.STATUS_ID;
                    dct.Add("success", true);
                    dct.Add("wayleaveAccount", res);
                    var mpres = _mapper.Map<WayleaveAccountInputModel>(res);
                    return Ok(mpres);

                }
                else
                {
                    //dct.Add("success", false);
                    return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "invalid user name and password!"));
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


        }

        [Route("api/GetWLAccountByEmail")]
        [HttpGet]
        public async Task<IHttpActionResult> GetWLAccountByEmail(string email)
        {
            try
            {
                EmailNotifications en = new EmailNotifications();
                var res = _accou.GetAllWLAccounts();

                if (res != null)
                {
                    var acc = res.Where(s => s.EMAIL == email).FirstOrDefault();
                    if (acc != null)
                    {
                        string result = EmailNotifications.ForgotPassword(email, acc.CONTACT_PERSON_FIRST_NAME + " " + acc.CONTACT_PERSON_LAST_NAME, acc.EMAIL, acc.PASSWORD, acc.ACCOUNT_NUMBER);
                        return Ok(result != null ? "Password has been sent to your registered email address." : "Password sending failed!");
                    }
                    else
                    {
                        return Ok("Email does not exist!");
                    }
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }



        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-all-first-names/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetAllFirstNames(string name)
        {
            try
            {
                var res = _wayleave.GetFirstNames(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-all-last-names/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetAllLastNames(string name)
        {
            try
            {
                var res = _wayleave.GetLastNames(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-application-mobiles/{name}")]
        // [Authorize]
        public async Task<IHttpActionResult> GetApplicationMobiles(string name)
        {
            try
            {
                var res = _wayleave.GetMobiles(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-application-emails/{name}")]
        // [Authorize]
        public async Task<IHttpActionResult> GetApplicationEmails(string name)
        {
            try
            {
                var res = _wayleave.GetEmails(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        [Route("api/get-master-inspectionlist")]
        // [Authorize]
        public async Task<IHttpActionResult> GetInspectionList()
        {
            try
            {
                var res = _masterinspections.GetInspections();
                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }


        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-created-users/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetAllCreatedUsers(string name)
        {
            try
            {
                var res = _wayleave.GetAllCreatedUsers(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-consultant-numbers/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetAllConsultantNumbers(string name)
        {
            try
            {
                var res = _wayleave.GetAllConsultantNumbers(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-consultant-company-names/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetConsultantCompanyNames(string name)
        {
            try
            {
                var res = _wayleave.GetConsultantCompanyNames(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-consultant-first-names/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetConsultantFirstNames(string name)
        {
            try
            {
                var res = _wayleave.GetConsultantFirstNames(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }



        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-consultant-last-names/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetConsultantLastNames(string name)
        {
            try
            {
                var res = _wayleave.GetConsultantLastNames(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-consultant-emails/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetConsultantEmails(string name)
        {
            try
            {
                var res = _wayleave.GetConsultantEmails(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-project-names/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetProjectNames(string name)
        {
            try
            {
                var res = _wayleave.GetProjectNames(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-region-codes/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetRegionCodes(string name)
        {
            try
            {
                var res = _wayleave.GetRegionCodes(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }


        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-contact-persons/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetContactPersons(string name)
        {
            try
            {
                var res = _wayleave.GetContactPersons(name);

                return Ok(res);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }












        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-serive-types")]
        // [Authorize]
        public async Task<IHttpActionResult> GetSeriveTypes()
        {
            try
            {
                var res = _seriviceTypes.GetSeriveTypes();

                if (res.Count() > 0)
                {
                    var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-serive-sub-types")]
        // [Authorize]
        public async Task<IHttpActionResult> GetSeriveSubTypes()
        {
            try
            {
                var res = _seriviceSubTypes.GetSeriveSubTypes();

                if (res.Count() > 0)
                {
                    var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }
        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-application-staus-types")]
        //[Authorize]
        public async Task<IHttpActionResult> GetApplicationStatusTypes()
        {
            try
            {
                var res = _appStatusTypes.GetStatusTypes();

                if (res.Count() > 0)
                {
                    var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        [Route("api/get-serive-sub-types/{id}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetSeriveSubTypesById(int id)
        {
            try
            {
                var res = _seriviceSubTypes.GetSeriveSubTypesById(id);

                if (res.Count() > 0)
                {
                    var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }
        

        [Route("api/get-service-documents/{id}")]
        //[Authorize]        
        public async Task<IHttpActionResult> GetServiceDocumentsById(int id)
        {
            try
            {
                var res = _serviceDocument.GetServiceDocumentsById(id);

                if (res.Count() > 0)
                {
                    var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "No documents"));
        }

        [Route("api/get-application-departments/{id}")]
        //[Authorize]        
        public async Task<IHttpActionResult> GetDepartmentsByApplicationId(int id)
        {
            try
            {
                var res = _departments.GetDepartmentsData(id);

                if (res.Count() > 0)
                {
                    //var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "No documents"));
        }

        [Route("api/get-application-excavationDetails/{id}")]
        //[Authorize]        
        public async Task<IHttpActionResult> GetExcavationDetailsByApplicationId(int id)
        {
            try
            {
                var res = _excavations.GetExcavationData(id);

                if (res.Count() > 0)
                {
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "No documents"));
        }

        [Route("api/get-wayleave-declarations")]
        //[Authorize]        
        public async Task<IHttpActionResult> GetAllDeclarations()
        {
            try
            {
                var res = _masterdeclarations.GetAllDeclarations();
                if (res.Count() > 0)
                {
                    var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "No documents"));
        }

        [Route("api/get-wayleave-declarations/{id}")]
        //[Authorize]        
        public async Task<IHttpActionResult> GetDeclarationsById(int id)
        {
            try
            {
                var res = _wldeclarations.GetDeclarationsData(id);
                if (res.Count() > 0)
                {
                    //var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "No data found!"));
        }

        [Route("api/get-service-departments/{id}")]
        //[Authorize]        
        public async Task<IHttpActionResult> GetServiceDepartmentsById(int id)
        {
            try
            {
                var res = _serviceDepartments.GetServiceDepartments(id);

                if (res.Count() > 0)
                {
                    var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "No documents"));
        }


        [Route("api/delete-worklocation-by-id/{id}")]
        //[Authorize]        
        public async Task<IHttpActionResult> DeleteWorkLocationById(int id)
        {
            try
            {
                var res = _workLocations.DeleteWorkLocation(id);

                if (res)
                {
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "Does not delete"));
        }



        [Route("api/delete-region-by-id/{id}")]
        //[Authorize]        
        public async Task<IHttpActionResult> DeleteRegionById(int id)
        {
            try
            {
                var res = _region.DeleteRegions(id);

                if (res)
                {
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "Does not delete"));
        }


        [Route("api/delete-contact-person-by-id/{id}")]
        //[Authorize]        
        public async Task<IHttpActionResult> DeleteContactPersonById(int id)
        {
            try
            {
                var res = _contactPerson.DeleteContactPersons(id);

                if (res)
                {
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "Does not delete"));
        }



        [Route("api/delete-application-support-documents-by-id/{id}")]
        //[Authorize]        
        public async Task<IHttpActionResult> DeleteApplicationSupportDocumentById(int id)
        {
            try
            {
                var res = _supportingDocument.DeleteSupportingDocuments(id);

                if (res)
                {
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, "Does not delete"));
        }



        //Wayleave account autocomplete functionality..................
        [Route("api/get-wl-account-numbers/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetWLAccountNumbers(string name)
        {
            try
            {
                var res = _wayleave.GetWLAccountNumbers(name);
                var finalResult = (from o in res select o.name).ToList();
                return Ok(finalResult);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }


        [Route("api/get-wl-accounts-person-names/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetWLAccountPersonFirstNames(string name)
        {
            try
            {
                var res = _wayleave.GetWLAccountPersonFirstNames(name);
                var finalResult = (from o in res select o.name).ToList();
                return Ok(finalResult);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-wl-accounts-person-lastnames/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetWLAccountPersonLsatNames(string name)
        {
            try
            {
                var res = _wayleave.GetWLAccountPersonLsatNames(name);
                var finalResult = (from o in res select o.name).ToList();
                return Ok(finalResult);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-wl-account-company-names/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetWLAccountCompanyNames(string name)
        {
            try
            {
                var res = _wayleave.GetWLAccountCompanyNames(name);
                var finalResult = (from o in res select o.name).ToList();
                return Ok(finalResult);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-wl-account-emails/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetWLAccountEmails(string name)
        {
            try
            {
                var res = _wayleave.GetWLAccountEmails(name);
                var finalResult = (from o in res select o.name).ToList();
                return Ok(finalResult);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }

        // GET: api/WL_APPLICATIONFORM
        [Route("api/get-wl-account-mobiles/{name}")]
        //[Authorize]
        public async Task<IHttpActionResult> GetWLAccountMobiles(string name)
        {
            try
            {
                var res = _wayleave.GetWLAccountMobiles(name);
                var finalResult = (from o in res select o.name).ToList();
                return Ok(finalResult);
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
        }


        [Route("api/get-customercare-centers")]
        //[Authorize]
        public async Task<IHttpActionResult> GetCustomercareCenters()
        {
            try
            {
                var res = _mastercccenters.GetCustomerCareCenters();

                if (res.Count() > 0)
                {
                    var mpres = _mapper.Map<List<MasterCustomercareCentersModel>>(res);
                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

    }
}
