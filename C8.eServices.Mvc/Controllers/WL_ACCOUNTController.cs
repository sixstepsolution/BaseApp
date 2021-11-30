﻿using AutoMapper;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using C8.eServices.Mvc.Models;
using C8.eServices.Mvc.Models.EmailBodys;
using C8.eServices.Mvc.Models.Mapings;
using C8.eServices.Mvc.Models.Services;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Helpers;
using C8.eServices.Mvc.Keys;
using C8.eServices.Mvc.Models.Comm;

namespace C8.eServices.Mvc.Controllers
{
    public class WL_ACCOUNTController : ApiController
    {
        private readonly IWlAccount _accou = null;
        private readonly IWlAccountContact _wlcontact = null;
        private readonly IMasterStatusTypes _StatusTypes = null;
        private readonly IWayleave _wayleave = null;
        private IMapper _mapper = null;
        private WayleaveDbContext _context;

        public WL_ACCOUNTController(IWlAccount accou, IWlAccountContact wlcontact, IWayleave wayleave, IMasterStatusTypes StatusTypes,
            IMapper mapper, WayleaveDbContext context)
        {
            _accou = accou;
            _StatusTypes = StatusTypes;
            _wayleave = wayleave;
            _mapper = mapper;
            _wlcontact = wlcontact;
            _context = context;
        }

        //Prasad
        [Route("api/add-wl-accounts")]
        //[Authorize]
        public async Task<IHttpActionResult> PostWL_accounts()
        {
            try
            {
                var AccountData = HttpContext.Current.Request.Form["AccountData"];
                var ContactData = HttpContext.Current.Request.Form["ContactData"];
                var file = HttpContext.Current.Request.Files;
                var accountResponse = JsonConvert.DeserializeObject<WLAccountsModel>(AccountData);
                var contactlist = ContactData != null ? JsonConvert.DeserializeObject<List<AccountContactModel>>(ContactData) : null;


                HttpPostedFile f1 = file["tradeLicensefile"];
                HttpPostedFile f2 = file["regCertificatefile"];
                HttpPostedFile f3 = file["taxCertificatefile"];
                //return null;
                int Count = _accou.GetAllWLAccounts().Count();
                var acc = _mapper.Map<WLAccountsModel, WL_ACCOUNT>(accountResponse);
                if (!string.IsNullOrEmpty(accountResponse.tradeLicenseExpirationDate))
                {
                    acc.TRADE_LICENSE_EXPIRE_DATE = Convert.ToDateTime(accountResponse.tradeLicenseExpirationDate);
                }

                var acc_contact = _mapper.Map<List<AccountContactModel>, List<WL_ACCO_CONTACT>>(contactlist);
                Dictionary<string, object> res = _accou.AddWL_ACCOUNT(acc, acc_contact, f1, f2, f3, HttpContext.Current.Request.Browser.Browser.ToUpper(), Count);

                if (res != null)
                {
                    //var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        [Route("api/add-department-user")]
        //[Authorize]
        public async Task<IHttpActionResult> PostDepartmentUser()
        {
            try
            {
                Dictionary<string, object> dct = new Dictionary<string, object>();
                var AccountData = HttpContext.Current.Request.Form["UserData"];
                var accountResponse = JsonConvert.DeserializeObject<AddUserModal>(AccountData);
                _context.Configuration.LazyLoadingEnabled = true;
                var acc = _mapper.Map<AddUserModal, User>(accountResponse);

                if (acc != null)
                {
                    var isEmailExist = _context.Users.Count(c => c.emailAddress == acc.emailAddress) > 0;
                    var isUsernameExist = _context.Users.Count(c => c.username == acc.username) > 0;
                    if (isUsernameExist)
                    {
                        dct.Add("usernameExists", true);
                        return Ok(dct);
                    }
                    if (isEmailExist)
                    {
                        dct.Add("emailExists", true);
                        return Ok(dct);
                    }                   
                                     

                    acc.password = "Test";
                    acc.createdDate = DateTime.Now;
                    _context.Users.Add(acc);
                    int n = _context.SaveChanges();

                    if (n > 0) {
                        //Insert audit data
                        //UserAudit audit_app = new UserAudit();
                        //CopyClass.CopyObject(acc, ref audit_app);
                        //audit_app.ACTION = "Modified";
                        //audit_app.CREATED_DATE = DateTime.Now;
                        //audit_app.MODIFIED_DATE = DateTime.Now;
                        //_context.WL_ACCOUNT_AUDIT.Add(audit_app);
                        //_context.SaveChanges();

                        var tt = acc;
                        Role userRole = new Role();
                        userRole.userid = acc.userid;
                        userRole.role_name = accountResponse.userRole;
                        _context.Roles.Add(userRole);
                        int p = _context.SaveChanges();
                        dct.Add("success", "User created successfully!");
                    }
                    else
                    {
                        dct.Add("exception", "User creation failed!");
                    }
                    return Ok(dct);
                }               
               
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        [Route("api/update-department-user")]
        //[Authorize]
        public async Task<IHttpActionResult> UpdateDepartmentUser()
        {
            try
            {
                Dictionary<string, object> dct = new Dictionary<string, object>();
                var AccountData = HttpContext.Current.Request.Form["UserData"];
                var accountResponse = JsonConvert.DeserializeObject<AddUserModal>(AccountData);
                _context.Configuration.LazyLoadingEnabled = true;
                var acc = _mapper.Map<AddUserModal, User>(accountResponse);

                if (acc != null)
                {
                    var userInfo = _context.Users.Where(s => s.userid == acc.userid).FirstOrDefault();
                    var RoleInfo = _context.Roles.Where(s => s.userid == acc.userid).FirstOrDefault();
                    if (userInfo != null)
                    {
                        userInfo.deptartmentname = acc.deptartmentname;
                        if (RoleInfo != null)
                        {
                            RoleInfo.role_name = accountResponse.userRole;
                        }
                        int n = _context.SaveChanges();

                        if (n > 0)
                        {                            
                            dct.Add("success", "User updated successfully!");
                        }
                        else
                        {
                            dct.Add("exception", "User updation failed!");
                        }
                    }
                    
                    return Ok(dct);
                }

            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        //Prasad
        [Route("api/update-wl-accounts")]
        //[Authorize]
        public async Task<IHttpActionResult> PostUpdateWL_accounts(WLAccountsModel inputclaims)
        {
            Dictionary<string, object> dct = new Dictionary<string, object>();
            try
            {
                WL_ACCOUNT dd = _context.WL_ACCOUNTS.FirstOrDefault(d => d.ACCOUNT_ID == inputclaims.account_id);
                //return null;
                if (dd != null)
                {
                    dd.STATUS_ID = inputclaims.statusId;
                    dd.COMMENTS = inputclaims.comments;
                    int n = _context.SaveChanges();
                    if (n > 0)
                    {
                        string status = string.Empty;
                        switch (inputclaims.statusId)
                        {
                            case 5:
                                status = "Pending";
                                break;
                            case 6:
                                status = "Approved";
                                break;
                            case 7:
                                status = "Rejected";
                                break;
                            default:
                                break;
                        }

                        dct.Add("success", true);
                        //EmailNotifications.SendWayleaveAccountStatus(dd.EMAIL, dd.CONTACT_PERSON_FIRST_NAME + " " + dd.CONTACT_PERSON_LAST_NAME, dd.EMAIL, dd.PASSWORD, dd.ACCOUNT_NUMBER, status);
                    }
                    else
                    {
                        dct.Add("error", false);
                    }
                    return Ok(dct);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }


        //Prasad
        [Route("api/update-wl-accounts-form")]
        //[Authorize]
        public async Task<IHttpActionResult> PostUpdateWL_accountsForm()
        {
            try
            {
                Dictionary<string, object> res = new Dictionary<string, object>();
                var AccountData = HttpContext.Current.Request.Form["AccountData"];
                var ContactData = HttpContext.Current.Request.Form["ContactData"];
                var file = HttpContext.Current.Request.Files;
                var accountResponse = JsonConvert.DeserializeObject<WLAccountsModel>(AccountData);
                


                HttpPostedFile f1 = file["tradeLicensefile"];
                HttpPostedFile f2 = file["regCertificatefile"];
                HttpPostedFile f3 = file["taxCertificatefile"];
                //return null;
                int Count = _accou.GetAllWLAccounts().Count();
                var ddss = _mapper.Map<WLAccountsModel, WL_ACCOUNT>(accountResponse);
                if (!string.IsNullOrEmpty(accountResponse.tradeLicenseExpirationDate))
                {
                    ddss.TRADE_LICENSE_EXPIRE_DATE = Convert.ToDateTime(accountResponse.tradeLicenseExpirationDate);
                }
                if (ContactData != null)
                {
                    var contactlist = JsonConvert.DeserializeObject<List<AccountContactModel>>(ContactData);
                    var ddss1 = _mapper.Map<List<AccountContactModel>, List<WL_ACCO_CONTACT>>(contactlist);
                    res = _accou.UpdateWL_ACCOUNT(ddss, ddss1, f1, f2, f3, HttpContext.Current.Request.Browser.Browser.ToUpper(), Count);
                }
                else
                {
                    List<AccountContactModel> acm = new List<AccountContactModel>();
                    var ddss1 = _mapper.Map<List<AccountContactModel>, List<WL_ACCO_CONTACT>>(acm);
                    res = _accou.UpdateWL_ACCOUNT(ddss, ddss1, f1, f2, f3, HttpContext.Current.Request.Browser.Browser.ToUpper(), Count);
                }

                

                if (res != null)
                {
                    //var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }


        [Route("api/upload-signature")]
        //[Authorize]
        public async Task<IHttpActionResult> PostUpdateUploadSignature()
        {
            try
            {
                Dictionary<string, object> res = new Dictionary<string, object>();
                var userData = HttpContext.Current.Request.Form["userData"];
                var file = HttpContext.Current.Request.Files;
                var accountResponse = JsonConvert.DeserializeObject<WL_UPLOAD_SIGNATURE>(userData);

                HttpPostedFile f1 = file["signaturefile"];
                //var ddss = _mapper.Map<UploadDepartmentSignature, User>(accountResponse);

                var signatureDetails = _context.WL_UPLOAD_SIGNATURE.ToList();
                if (signatureDetails.Count > 0)
                {
                    if (f1 != null)
                    {
                        var updateSign= signatureDetails.FirstOrDefault();
                        updateSign.DOCUMENT_NAME = _wayleave.SaveUploadedFile(f1, HttpContext.Current.Request.Browser.Browser.ToUpper());
                        updateSign.MODIFIED_DATE = DateTime.Now;
                        updateSign.IS_ACTIVE = accountResponse.IS_ACTIVE;
                        res.Add("update", "Signature updated successfully!");
                    }
                }
                else
                {
                    if (f1 != null)
                    {
                        WL_UPLOAD_SIGNATURE wps = new WL_UPLOAD_SIGNATURE();
                        wps.DOCUMENT_NAME = _wayleave.SaveUploadedFile(f1, HttpContext.Current.Request.Browser.Browser.ToUpper());
                        wps.CREATED_DATE = DateTime.Now;
                        wps.IS_ACTIVE = accountResponse.IS_ACTIVE;
                        _context.WL_UPLOAD_SIGNATURE.Add(wps);
                        res.Add("add", "Signature uploaded successfully!");
                    }
                }

                var result = _context.SaveChanges();

                if(result==1)
                {
                    return Ok(res);
                }

                //if (res != null)
                //{
                //    //var mpres = _mapper.Map<List<MasterInputCalimsModel>>(res);
                //    return Ok(res);
                //}
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }


        [Route("api/get-WLAccount-by-account-number/{accountNo}")]
        // [Authorize]
        public async Task<IHttpActionResult> GetWL_ACCOUNT(string accountNo)
        {
            try
            {
                var res = _accou.GetWL_ACCOUNT(accountNo);
                if (res != null)
                {
                    var mpres = _mapper.Map<WL_ACCOUNT, WLAccountsModel>(res);

                    return Ok(mpres);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }
            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        [Route("api/get-WLAccount-contractorOrConsultant")]
        // [Authorize]
        public async Task<IHttpActionResult> GetContractorOrConsultant()
        {
            try
            {
                int accountId = Convert.ToInt32(HttpContext.Current.Session["wayleaveaccountId"]);
                var res = _context.WL_ACCOUNTS.Where(a => a.ACCOUNT_ID == accountId)
                    .Select(s => new
                    {
                        s.ACCOUNT_NUMBER,
                        s.CONTACT_PERSON_FIRST_NAME,
                        s.CONTACT_PERSON_LAST_NAME,
                        s.MOBILE,
                        s.EMAIL,
                        s.COMPANY_FULL_NAME,
                        s.TELEPHONE_NUMBER,
                        s.IDENTIFICATION_NUMBER,
                        s.GENDER,
                        s.SUBURB
                    }).FirstOrDefault();

                if (res != null)
                {
                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        [Route("api/get-WLAccount-PasswordDetails/{emailAddress}")]
        // [Authorize]
        public async Task<IHttpActionResult> GetForgotpasswordDetails(string emailAddress)
        {
            try
            {
                var res = _context.WL_ACCOUNTS.Where(a => a.EMAIL == emailAddress).FirstOrDefault();
                string msg = string.Empty;
                if (res != null)
                {
                    EmailHelper email = new EmailHelper();
                    email.Body = EmailNotificationBody.SentForgotPasswordDetails(res.CONTACT_PERSON_FIRST_NAME + " " + res.CONTACT_PERSON_LAST_NAME, res.EMAIL, "WayleaveTempPassword", res.ACCOUNT_NUMBER).ToString();
                    email.Recipient = res.EMAIL;//"prasadthummala558@gmail.com";
                    email.Subject = "Forgot Password Details";
                    //email.SendEmail();
                    Email em = new Email();
                    em.GenerateEmail(email.Recipient, email.Subject, email.Body, res.ACCOUNT_NUMBER, false, AppSettingKeys.EmailNotificationTemplate, res.CONTACT_PERSON_FIRST_NAME + " " + res.CONTACT_PERSON_LAST_NAME, null, null, res.ACCOUNT_NUMBER, null, null, null, null);
                    msg = "success";
                    return Ok(msg);
                }
                else
                {
                    msg = "error";
                    return Ok(msg);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }



        [Route("api/get-WLAccount-contractorOrConsultant/{accountID}")]
        // [Authorize]
        public async Task<IHttpActionResult> GetContractorOrConsultantByAccountno(int accountID)
        {
            try
            {
                var res = _context.WL_ACCOUNTS.Where(a => a.ACCOUNT_ID == accountID)
                    .Select(s => new
                    {
                        s.ACCOUNT_NUMBER,
                        s.CONTACT_PERSON_FIRST_NAME,
                        s.CONTACT_PERSON_LAST_NAME,
                        s.MOBILE,
                        s.EMAIL,
                        s.COMPANY_FULL_NAME,
                        s.TELEPHONE_NUMBER,
                        s.STREET_NAME,s.CITY ,s.PROVINCE, s.COUNTRY ,s.POST_CODE,
                        s.IDENTIFICATION_NUMBER,
                        s.GENDER,
                        s.SUBURB
                    }).FirstOrDefault();

                if (res != null)
                {

                    return Ok(res);
                }
            }
            catch (Exception ex)
            {
                return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.InternalServerError, ex.Message));
            }


            return ResponseMessage(Request.CreateErrorResponse(HttpStatusCode.OK, ""));
        }

        [Route("api/get-wl-accounts-with-counts")]
        //[Authorize]
        public async Task<IHttpActionResult> GetWayleaveAccountsWithCounts()
        {

            try
            {
                var result = _StatusTypes.GetStatusTypes().Where(d => d.TABLE_NAME == "wayleave account");
                var mpresult = _mapper.Map<List<WayleaveAccountDashboardModel>>(result);
                bool IsAuthenticated = System.Security.Claims.ClaimsPrincipal.Current.Identities.First().IsAuthenticated;
                if (mpresult.Count() > 0)
                {
                    var appRes = _accou.GetAllWLAccounts();
                    var mpres = _mapper.Map<List<WayleaveAccountInputModel>>(appRes);

                    var claims = System.Security.Claims.ClaimsPrincipal.Current.IsInRole("Admin");


                    var dd = System.Security.Claims.ClaimsPrincipal.Current.Claims.Where(c => c.Type == System.Security.Claims.ClaimTypes.Role)
                                .Select(c => c.Value)
                               .ToList();
                    if (dd.Contains("Admin"))
                    {

                    }
                    else if (dd.Contains("wayleave account"))
                    {
                        //mpres=mpres.Where(d => d.statusId != 5).ToList();
                    }
                    else
                    {
                        //mpres = mpres.Where(d => d.statusId != 7).ToList();
                    }
                    var appFinalResult = new List<WayleaveAccountDashboardModel>();
                    foreach (WayleaveAccountDashboardModel a in mpresult)
                    {
                        WayleaveAccountDashboardModel app = new WayleaveAccountDashboardModel()
                        {
                            id = a.id,
                            sequenceId = a.sequenceId,
                            name = a.name,
                            count = mpres.Where(d => d.statusId == a.id).Count(),
                            accountList = mpres.Where(d => d.statusId == a.id).ToList()

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

        [Route("api/get-wayleave-accounts-alerts-counts")]
        // [Authorize]
        public async Task<IHttpActionResult> GetWayleaveAccountsAlertsCounts()
        {
            try
            {
                var result = _StatusTypes.GetStatusTypes().Where(d => d.TABLE_NAME == "wayleave account"); ;
                var mpresult = _mapper.Map<List<WayleaveAccountDashboardModel>>(result);

                if (result.Count() > 0)
                {
                    var appRes = _accou.GetAllWLAccounts();
                    var mpres = _mapper.Map<List<WayleaveAccountInputModel>>(appRes);

                    var appFinalResult = new List<WayleaveAccountDashboardModel>();
                    foreach (WayleaveAccountDashboardModel a in mpresult)
                    {
                        WayleaveAccountDashboardModel app = new WayleaveAccountDashboardModel()
                        {
                            id = a.id,
                            sequenceId = a.sequenceId,
                            name = a.name,
                            count = mpres.Where(d => d.statusId == a.id).Count(),
                            //accountList = mpres.Where(d => d.statusId == a.id).ToList()

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
        [Route("api/get-wayleave-with-counts-serach")]
        //[Authorize]
        [HttpPost]
        public async Task<IHttpActionResult> WayleaveWithCountsBySearch(WayleaveInputClaimModel inpuclaims)
        {
            try
            {
                var result = _StatusTypes.GetStatusTypes().Where(d => d.TABLE_NAME == "wayleave account"); ;
                var mpresult = _mapper.Map<List<WayleaveAccountDashboardModel>>(result);

                if (result.Count() > 0)
                {
                    var appRes = _accou.GetAllWLAccounts(inpuclaims);
                    if (HttpContext.Current.Session["wayleaveaccountId"] != null)
                    {
                        int accountId = Convert.ToInt32(HttpContext.Current.Session["wayleaveaccountId"]);
                        appRes = appRes.Where(d => d.CREATED_BY == accountId);
                    }
                    var mpres = _mapper.Map<List<WayleaveAccountInputModel>>(appRes);

                    var appFinalResult = new List<WayleaveAccountDashboardModel>();
                    foreach (WayleaveAccountDashboardModel a in mpresult)
                    {
                        WayleaveAccountDashboardModel app = new WayleaveAccountDashboardModel()
                        {
                            id = a.id,
                            sequenceId = a.sequenceId,
                            name = a.name,
                            count = mpres.Where(d => d.statusId == a.id).Count(),
                            accountList = mpres.Where(d => d.statusId == a.id).ToList()

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


        protected override void Dispose(bool disposing)
        {
            WayleaveDbContext db = new WayleaveDbContext();
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
