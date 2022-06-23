﻿using System;
using System.Data.Entity;
using System.Globalization;
using System.Linq;
using System.Web.Mvc;
using System.Security.Claims;
using C8.eServices.Mvc.ApiServices;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Helpers;
using C8.eServices.Mvc.Keys;
using C8.eServices.Mvc.Models;
using C8.eServices.Mvc.ViewModels;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using C8.eServices.Mvc.Models.Comm;
using System.Net;
using System.DirectoryServices.AccountManagement;
using System.Collections.Generic;
using System.Configuration;

namespace C8.eServices.Mvc.Controllers
{
    public class HomeController : Controller
    {
        //BaseHelper _base = new BaseHelper();
        private eServicesDbContext db = new eServicesDbContext();
        private WayleaveDbContext dbWayleave = new WayleaveDbContext();
        #region Home Index
        //
        // GET: /Home/
        public ActionResult Index(string returnUrl)
        {
            try
            {
                Session["payments"] = null;                
                ViewBag.ReturnUrl = returnUrl;
                ViewBag.Error = "";
                return View();
            }
            catch (Exception ex)
            {                 
                throw ex;
            }
        }
        #endregion

        [HttpGet]
        public ActionResult Start()
        {
            dynamic NetConnection;
            string url = string.Empty;
            try
            {
                using (var client = new WebClient())
                {
                    using (client.OpenRead("http://clients3.google.com/generate_204"))
                    {
                        NetConnection = true;
                    }
                }
            }
            catch
            {
                NetConnection = false;
            }

            if (NetConnection)
            {
                url = ConfigurationManager.AppSettings["Public_Url"].ToString();
                Response.Redirect(url);
                //return RedirectToAction(url);
            }
            else
            {
                url = ConfigurationManager.AppSettings["Intranet_Url"].ToString();
                Response.Redirect(url);
                //return RedirectToAction(url);
            }
            return View();
        }

        public static void OverdueApplications()
        {
            using (var db = new WayleaveDbContext())
            {
                var statusDetail = db.MASTER_STATUS_TYPES.Where(d => d.STATUS_ID == 2).FirstOrDefault();
                string distributionDescription = statusDetail != null ? statusDetail.DESCRIPTION : "";
                var DistributionData = db.WL_APPLICATIONFORM.Where(x => x.APPLICATION_STEP_DESCRIPTION == distributionDescription).ToList();
                if (DistributionData.Count() > 0)
                {
                    foreach (var item in DistributionData)
                    {
                        DateTime todayDate = DateTime.Now;
                        var applicationDate = item.CREATED_DATE;
                        TimeSpan ts = todayDate - applicationDate;
                        if (ts.Days > 7)
                        {
                            item.IS_OVERDUE = "Y";
                            db.SaveChanges();
                        }
                    }
                }
            }
        }

        #region FAQ Index
        public ActionResult FAQ()
        {
            return View();
        }
        #endregion

        #region Home Index2
        public ActionResult Index2()
        {
            ViewBag.Status = "Email address activated";
            return View("Index");
        }


        #endregion

        #region Intro Index
        public ActionResult Introduction()
        {
            return View();
        }
        #endregion

        #region RightsandUsage Index
        public ActionResult RightsandUsage()
        {
            return View();
        }
        #endregion

        #region UsernamePassword Index
        public ActionResult UsernamePassword()
        {
            return View();
        }
        #endregion

        #region InforandPrivacy Index
        public ActionResult InfoandPrivacy()
        {
            return View();
        }
        #endregion

        #region Unavailability Index
        public ActionResult Unavailability()
        {
            return View();
        }
        #endregion

        #region Comming Soon
        public ActionResult UnderConstructionComingSoon()
        {
            return View();
        }
        #endregion

        #region Home WayleaveLogin Get        
        // GET: /Home/WayleaveLogin
        public ActionResult WayleaveLogin(string returnUrl)
        {
            
            try
            {
                //var identity = User.Identity as ClaimsIdentity;

                //var claims1 = from c in identity.Claims
                //              select new
                //              {
                //                  subject = c.Subject.Name,
                //                  type = c.Type,
                //                  value = c.Value
                //              };

                ////var d=contex.testMigrations;
                //bool IsAuthenticated = ClaimsPrincipal.Current.Identities.First().IsAuthenticated;
                //if (!IsAuthenticated)
                //{
                //    // if IsAuthenticated is false return to login code here....

                //}

                //ViewBag.ReturnUrl = returnUrl;
                return View();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        #region Wayleave Account Login POST
        //
        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> WayleaveLogin(LoginViewModel model, string returnUrl)
        {
            using (var context = new WayleaveDbContext())
            {
                //_base.Initialise(context);

                //incremental delay to prevent brute force attacks
                int incrementalDelay;
                var error = "";

                if (HttpContext.Application[Request.UserHostAddress] != null)
                {
                    // wait for delay if there is one
                    incrementalDelay = (int)HttpContext.Application[Request.UserHostAddress];
                    await Task.Delay(incrementalDelay * 1000);
                }

                if (ModelState.IsValid)
                {
                    if (model.Password.Contains("TEMP!@*"))
                    {
                        var enc = new AesCrypto();
                        return Redirect(ConfigurationManager.AppSettings["Base_Url"]+"Home/ChangePassword?e1=" + enc.Encrypt(model.UserName) + "&e2=" + enc.Encrypt(model.Password));// RedirectToAction("Index", "Home");
                    }
                    var result = context.WL_ACCOUNTS.Where(s => s.EMAIL == model.UserName && s.PASSWORD == model.Password).FirstOrDefault();
                    if (result!=null)
                    {
                        Session["wayleaveAppFee"] = context.APPLICATION_PAYMENT_PRICE.FirstOrDefault()!=null?Convert.ToString(context.APPLICATION_PAYMENT_PRICE.FirstOrDefault().APPLICATION_PRICE):"";
                        Session["wayleaveaccountId"] = result.ACCOUNT_ID;
                        Session["wayleaveUserName"] = result.EMAIL;
                        Session["wayleaveAccountUserName!@*"] = result.CONTACT_PERSON_FIRST_NAME+" "+result.CONTACT_PERSON_LAST_NAME;
                        Session["wayleaveCompanyId"] = result.COMPANY_ID;
                        Session["wayleaveAccountNumber"] = result.ACCOUNT_NUMBER;
                        return Redirect(ConfigurationManager.AppSettings["Base_Url"] + "WayleaveAccount/Index");
                        //return RedirectToAction("Index", "WayleaveAccount");
                    }
                    else
                    {
                        TempData["LoginError"] = "Invalid username or password!";
                        return Redirect(ConfigurationManager.AppSettings["Base_Url"] + "Home/WayleaveLogin");
                        //return RedirectToAction("WayleaveLogin", "Home");
                    }
                }

                // If we got this far, something failed, redisplay form
                ViewBag.Error = error;
                return View(model);
            }
        }
        #endregion

        #region Change Password GET
        //
        // GET: /Home/ChangePassword
        [HttpGet]
        public ActionResult ChangePassword(string e1 = null, string e2 = null)
        {
            ViewBag.result = "";
            ViewBag.errorResult = "";
            if (e1 != null && e2 != null)
            {
                e1 = e1.Replace(" ", "+");
                var enc = new AesCrypto();
                ViewBag.username = enc.Decrypt(e1);
                return View();
            }
            else
            {
                return Redirect(ConfigurationManager.AppSettings["Base_Url"] + "Home/WayleaveLogin");
                //return RedirectToAction("WayleaveLogin", "Home");
            }
        }
        #endregion


        #region Change Password POST
        //
        // GET: /Home/ChangePassword
        [HttpPost]
        public ActionResult ChangePassword(string hdnUserName, string oldPassword, string newPassword, string retypeNewPassword)
        {
            ViewBag.result = "";
            ViewBag.errorResult = "";
            ViewBag.username = hdnUserName;
            TempData["changePasswordResult"] = "";
            if (oldPassword.Contains("TEMP!@*"))
            {
                if (newPassword == retypeNewPassword)
                {
                    var accountdetails = dbWayleave.WL_ACCOUNTS.Where(s => s.EMAIL == hdnUserName).FirstOrDefault();
                    if (accountdetails != null)
                    {
                        accountdetails.PASSWORD = newPassword;
                        dbWayleave.SaveChanges();
                        TempData["changePasswordResult"] = "Password changed successfully!";
                        return Redirect(ConfigurationManager.AppSettings["Base_Url"] + "Home/WayleaveLogin");
                        //return RedirectToAction("WayleaveLogin", "Home");
                    }
                    else
                    {
                        ViewBag.errorResult = "Invalid account details";
                        return View();
                    }
                }
                else
                {
                    ViewBag.errorResult = "New password and re-type new password does not match!";
                    return View();
                }
            }
            else
            {
                ViewBag.errorResult = "Invalid current password!";
                return View();
            }
        }

        #endregion


        ////#region Account Login POST
        //////
        ////// POST: /Account/Login
        ////[HttpPost]
        ////[AllowAnonymous]
        ////[ValidateAntiForgeryToken]
        ////public async Task<ActionResult> Index(LoginViewModel model, string returnUrl)
        ////{
        ////    ///return RedirectToAction("Index", "WayleaveAccount");
        ////    using (var context = new WayleaveDbContext())
        ////    {
        ////        //_base.Initialise(context);

        ////        //incremental delay to prevent brute force attacks
        ////        int incrementalDelay;
        ////        var error = "";

        ////        if (HttpContext.Application[Request.UserHostAddress] != null)
        ////        {
        ////            // wait for delay if there is one
        ////            incrementalDelay = (int)HttpContext.Application[Request.UserHostAddress];
        ////            await Task.Delay(incrementalDelay * 1000);
        ////        }

        ////        if (ModelState.IsValid)
        ////        {
        ////            //var result = context.Users.Where(s => s.username == model.UserName && s.password == model.Password).FirstOrDefault();
        ////            //if (result != null)
        ////            //{
        ////            //    //CommonModel ekurhuleniData = new CommonModel();
        ////            //    //ekurhuleniData.userId = result.userid;
        ////            //    //ekurhuleniData.userName = result.username;
        ////            //    //ekurhuleniData.deptartmentname = result.deptartmentname;
        ////            //    Session["ekurhuleniData"] = result;
        ////            //    Session["ekurhuleniUserName"] = result.username;
        ////            //    Session["ekurhuleniUserDeptName"] = result.deptartmentname;
        ////            //    Session["ekurhuleniUserRole"] = result.Roles.FirstOrDefault().role_name;
        ////            //    return RedirectToAction("Index", "WL");
        ////            //}
        ////            //else
        ////            //{
        ////            //    TempData["LoginError"] = "Invalid username or password!";
        ////            //    error = "Invalid username or password!";
        ////            //    return RedirectToAction("Index", "Home");
        ////            //}



        ////            var store = new UserStore<SystemIdentityUser>(context);
        ////            var UserManager = new UserManager<SystemIdentityUser>(store);
        ////            UserManager.UserValidator = new UserValidator<SystemIdentityUser>(UserManager) { AllowOnlyAlphanumericUserNames = false };
        ////            // var user = await UserManager.FindByUserNameOrEmailAsync(model.UserName.Trim(), model.Password.Trim());
        ////            var user = new SystemIdentityUser();
        ////            ADLogin adLogin = new ADLogin();
        ////            //var test = db.AppSettings.Where(x => x.Key == "active_directory_domain").FirstOrDefault();
        ////            //var test33 = db.AppSettings.Where(x => x.Id == 1180).FirstOrDefault();

        ////            var activeDirectoryOn = db.AppSettings.Where(x => x.Key == AppSettingKeys.ActiveDirectoryActive).FirstOrDefault().Value;
        ////            var activeDirectoryDomain = db.AppSettings.Where(x => x.Key == AppSettingKeys.ActiveDirectoryDomain).FirstOrDefault().Value;

        ////            var Ad = false;
        ////            //var activeDirectoryOn = "True";
        ////            if (activeDirectoryOn == "True")
        ////            {
        ////                try
        ////                {
        ////                    //user = await UserManager.FindByNameAsync(model.UserName.Trim());

        ////                    //if (user != null)
        ////                    //{

        ////                    //if (user.isInternalUser == true && user.isActiveDirectoryUser == true)
        ////                    //{
        ////                    var Domain = new PrincipalContext(ContextType.Domain, activeDirectoryDomain);

        ////                    if (Domain != null)
        ////                    {
        ////                        //model.UserName = "Xetgroup";
        ////                        //model.Password = "/*@VPN2020!@#$*/";
        ////                        //model.UserName = "SCM_user";
        ////                        //model.Password = "@Eku2020$";

        ////                        Ad = adLogin.ValidateUser(model.UserName, model.Password);
        ////                        if (Ad)
        ////                        {
        ////                            var result = context.Users.Where(s => s.username == model.UserName && s.password == model.Password).FirstOrDefault();
        ////                            if (result != null)
        ////                            {
        ////                                //CommonModel ekurhuleniData = new CommonModel();
        ////                                //ekurhuleniData.userId = result.userid;
        ////                                //ekurhuleniData.userName = result.username;
        ////                                //ekurhuleniData.deptartmentname = result.deptartmentname;
        ////                                Session["IsInternalUser"] = true;
        ////                                Session["ekurhuleniData"] = result;
        ////                                Session["ekurhuleniUserName"] = result.username;
        ////                                Session["ekurhuleniUserDeptName"] = result.deptartmentname;
        ////                                Session["ekurhuleniUserRole"] = result.Roles.FirstOrDefault().role_name;
        ////                                return RedirectToAction("Index", "WL");
        ////                            }
        ////                            else
        ////                            {
        ////                                TempData["LoginError"] = "Invalid username or password!";
        ////                                error = "Invalid username or password!";
        ////                                return RedirectToAction("Index", "Home");
        ////                            }
        ////                        }
        ////                        else
        ////                        {
        ////                            TempData["LoginError"] = "Incorrect Active Directory username or password";
        ////                            //ModelState.AddModelError("", "Invalid Active Directory username or password.");
        ////                            //ViewBag.Error = error;
        ////                            //return View(model);
        ////                            return RedirectToAction("Index", "Home");
        ////                        }
        ////                    }
        ////                    //}
        ////                    //else
        ////                    //{

        ////                    //    var Counter = user.AccessFailedCount;
        ////                    //    if (Counter > 20)
        ////                    //    {
        ////                    //        ViewBag.Error = "Your Account has been locked due to the wrong password entered multiple time, Please Use The Forgot Password To Unlock Your Account.";
        ////                    //        //AuthenticationManager.SignOut();
        ////                    //        return View(model);
        ////                    //    }
        ////                    //    else
        ////                    //    {
        ////                    //        user = await UserManager.FindByUserNameOrEmailAsync(model.UserName.Trim(), model.Password.Trim());
        ////                    //        if (user == null)
        ////                    //        {
        ////                    //            var user3 = await UserManager.FindByNameAsync(model.UserName.Trim());

        ////                    //            //user = await UserManager.FindByUserNameOrEmailAsync(model.UserName.Trim());
        ////                    //            user3.AccessFailedCount = user3.AccessFailedCount + 1;
        ////                    //            await UserManager.UpdateAsync(user3);
        ////                    //            context.SaveChanges();
        ////                    //        }


        ////                    //    }
        ////                    //}

        ////                    //}
        ////                    //else
        ////                    //{
        ////                    //    user = await UserManager.FindByUserNameOrEmailAsync(model.UserName.Trim(), model.Password.Trim());
        ////                    //}
        ////                }
        ////                catch (PrincipalServerDownException ex)
        ////                {
        ////                    // show your error message
        ////                    //user = await UserManager.FindByUserNameOrEmailAsync(model.UserName.Trim(), model.Password.Trim());
        ////                    TempData["LoginError"] = ex.Message;
        ////                    //ModelState.AddModelError("", "Invalid Active Directory username or password.");
        ////                    //ViewBag.Error = error;
        ////                    //return View(model);
        ////                    return RedirectToAction("Index", "Home");
        ////                }
        ////            }
        ////        }

        ////        // If we got this far, something failed, redisplay form
        ////        ViewBag.Error = error;
        ////        return View(model);
        ////    }
        ////    //return View();
        ////}
        ////#endregion
        ///


        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Index(LoginViewModel model, string returnUrl)
        {
            WayleaveDbContext context = new WayleaveDbContext();
            try
            {
               // var url = new Uri(Request.Url, "").AbsoluteUri;
                var resultNew = context.Users.Where(s => s.username == model.UserName).FirstOrDefault();
                // Please store the 2 line below in the db and call/ them from there
                var activeDirectoryOn = "";
                var activeDirectoryDomain = "10.31.3.51";
                //
                if(resultNew!=null)
                {
                    activeDirectoryOn = resultNew!=null? resultNew.isActiveDirectory:"N";
                }
                var Ad = false;
                bool ADSuccess = false;
                string email = "";
                AdLogin adLogin = new AdLogin();
                if (activeDirectoryOn == "Y")
                {
                    var Domain2 = new PrincipalContext(ContextType.Domain, activeDirectoryDomain);

                    if (Domain2 != null)
                    {
                        Ad = await adLogin.ValidateUser(model.UserName, model.Password);
                        if (Ad)
                        {
                            ADSuccess = true;

                            var addets = await adLogin.Validate(activeDirectoryDomain, true, model);
                            if (addets != null)
                            {
                                var result = context.Users.Where(s => s.username == model.UserName).FirstOrDefault();
                                if (result != null)
                                {
                                    //Insert login history details
                                    LOGIN_HISTORY lh = new LOGIN_HISTORY();
                                    lh.USERID = result.userid;
                                    lh.USER_NAME = result.username;
                                    lh.LOGIN_DATE = DateTime.Now;
                                    lh.OUTCOME = AuditTrailKeys.SuccessfulOutcome;
                                    context.LOGIN_HISTORY.Add(lh);
                                    context.SaveChanges();

                                    Session["ekurhuleniData"] = result;
                                    Session["ekurhuleniUserID"] = result.userid;
                                    Session["ekurhuleniUserName"] = result.username;
                                    Session["ekurhuleniUserDeptName"] = result.deptartmentname;
                                    Session["ekurhuleniUserRole"] = result.Roles.FirstOrDefault().role_name;
                                    //var pageurl = new Uri(Request.Url,"").AbsoluteUri;
                                    return Redirect(ConfigurationManager.AppSettings["Base_Url"] + "WL/Index");
                                    //return RedirectToAction("Index", "WL");
                                }
                                else
                                {
                                    //Insert login history details
                                    LOGIN_HISTORY lh = new LOGIN_HISTORY();
                                    lh.USERID = 0;
                                    lh.USER_NAME = model.UserName;
                                    lh.LOGIN_DATE = DateTime.Now;
                                    lh.OUTCOME = "Unsuccessful";
                                    context.LOGIN_HISTORY.Add(lh);
                                    context.SaveChanges();

                                    TempData["LoginError"] = "Invalid username or password!";
                                    return Redirect(ConfigurationManager.AppSettings["Base_Url"] + "Home/Index");
                                    //return RedirectToAction("Index", "Home");
                                }

                            }
                        }
                        else
                        {
                            //Insert login history details
                            LOGIN_HISTORY lh = new LOGIN_HISTORY();
                            lh.USERID = 0;
                            lh.USER_NAME = model.UserName;
                            lh.LOGIN_DATE = DateTime.Now;
                            lh.OUTCOME = "Unsuccessful";
                            context.LOGIN_HISTORY.Add(lh);
                            context.SaveChanges();

                            TempData["LoginError"] = "Invalid username or password For active directory login!";
                            return Redirect(ConfigurationManager.AppSettings["Base_Url"] + "Home/Index");
                            //return RedirectToAction("Index", "Home");

                        }
                    }
                }
                else
                {
                    var result = context.Users.Where(s => s.username == model.UserName&&s.password==model.Password).FirstOrDefault();
                    if (result != null)
                    {
                        //Insert login history details
                        LOGIN_HISTORY lh = new LOGIN_HISTORY();
                        lh.USERID = result.userid;
                        lh.USER_NAME = result.username;
                        lh.LOGIN_DATE = DateTime.Now;
                        lh.OUTCOME = AuditTrailKeys.SuccessfulOutcome;
                        context.LOGIN_HISTORY.Add(lh);
                        context.SaveChanges();

                        Session["ekurhuleniData"] = result;
                        Session["ekurhuleniUserID"] = result.userid;
                        Session["ekurhuleniUserName"] = result.username;
                        Session["ekurhuleniUserDeptName"] = result.deptartmentname;
                        Session["ekurhuleniUserRole"] = result.Roles.FirstOrDefault().role_name;
                        return Redirect(ConfigurationManager.AppSettings["Base_Url"] + "WL/Index");
                        //return RedirectToAction("Index", "WL");
                    }
                    else
                    {
                        //Insert login history details
                        LOGIN_HISTORY lh = new LOGIN_HISTORY();
                        lh.USERID = 0;
                        lh.USER_NAME = model.UserName;
                        lh.LOGIN_DATE = DateTime.Now;
                        lh.OUTCOME = "Unsuccessful";
                        context.LOGIN_HISTORY.Add(lh);
                        context.SaveChanges();

                        TempData["LoginError"] = "Invalid username or password!";
                        return Redirect(ConfigurationManager.AppSettings["Base_Url"] + "Home/Index");
                        //return RedirectToAction("Index", "Home");
                    }
                }
            }
            catch (Exception)
            {
                LOGIN_HISTORY lh = new LOGIN_HISTORY();
                lh.USERID = 0;
                lh.USER_NAME = model.UserName;
                lh.LOGIN_DATE = DateTime.Now;
                lh.OUTCOME = "Unsuccessful";
                context.LOGIN_HISTORY.Add(lh);
                context.SaveChanges();
                TempData["LoginError"] = "Invalid username or password For active directory login!";
                return Redirect(ConfigurationManager.AppSettings["Base_Url"] + "Home/Index");
                //return RedirectToAction("Index", "Home");
            }            
            return View();
        }

        public ActionResult LogOut()
        {
            Session.RemoveAll();
            return Redirect(ConfigurationManager.AppSettings["Base_Url"] + "Home/Index");
            //return RedirectToAction("Index", "Home");
        }
        public ActionResult EkurhuleniLogout()
        {
            System.Web.HttpContext.Current.Session.Clear();
            System.Web.HttpContext.Current.Session.Abandon();
            System.Web.HttpContext.Current.Session.RemoveAll();
            return Redirect(ConfigurationManager.AppSettings["Base_Url"]+"home/index");
        }

        public ActionResult GetDecryptValue(string id)
        {
            var result = new AesCrypto().Decrypt(id);
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        public ActionResult MapMarkerTest(string address)
        {
            return View();
        }

        public ActionResult MapMarker(string address)
        {
            return View();
        }

        public ActionResult getpdfReportORG(string cusAcc, string StateYear, string stateMonth)
        {
            eServicesDbContext context = new eServicesDbContext();
            AppSetting AdUser = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.AdUserName);
            AppSetting AdPass = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.AdPassword);
            AppSetting AdDom = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.adDomain);
            AppSetting genBillLink = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.adGenBillLink);
            NetworkCredential nwc = new NetworkCredential(AdUser.Value, AdPass.Value);
            WebClient client = new WebClient();
            client.Credentials = nwc;
            string accNo = cusAcc;
            string yearN = "2021";// StateYear;
            string month = "10";// stateMonth;
            string test = "http://10.1.2.230:85/ProBudget_ReportServer?%2fWayleave%2fApproved+Application&rs:Command=Render&rs:Format=PDF&SD=2021/08/01 00:00:00&ED=2021/10/12 00:00:00";
            string ttt = "http://10.1.2.230:85/ProBudget_Reports/report/Wayleave/Progress%20Report?SD=7/1/2021&ED=10/31/2021&Status=8";
            string reportURL = "http://10.1.2.230:85/ProBudget_ReportServer?%2fCase_Management_Reports%2fNo_of_Cases_Report&rs:Command=Render&rs:Format=PDF&year="+yearN+"&month=" + month;
            
            return File(client.DownloadData(test), "application/pdf");
        }

        public ActionResult testMap()
        {
            return View();
        }
    }
}
