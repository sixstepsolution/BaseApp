using System;
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

                // Test code.
                //This is not needed
                //var ca = CustomerAccountApi.GetAccounts("6911305037089");
                //EmailHelper client = new EmailHelper();
                //client.Recipient = "jayan.kistasami@calc8.co.za";
                //client.Subject = "Test " + DateTime.Now.ToString();
                //client.Body = "the quick brown fox.";
                //client.SendEmail();

                //using (var cxt = new eServicesDbContext())
                //{
                //    var ca = cxt.CustomerAccounts.FirstOrDefault(o => o.AccountNo == 1800678685);
                //    System.Diagnostics.Debug.WriteLine(ca.IDNo);
                //}                             

                // Used to display an update message for eservices.
                //using (var cxt = new eServicesDbContext())
                //{
                //    //var ban = new BankAccount() { BankAccountNumber = "62099807411" };
                //    //System.Diagnostics.Debug.WriteLine(ban.BankAccountNumber + Environment.NewLine + ban.HiddenBankAccountNumber);

                //    //ban = cxt.BankAccounts.First();
                //    //System.Diagnostics.Debug.WriteLine(ban.BankAccountNumber + Environment.NewLine + ban.HiddenBankAccountNumber);

                //    var eServicesUpdate = cxt.AppSettings.FirstOrDefault(a => a.Key == AppSettingKeys.UpdateNotification);
                //    if (eServicesUpdate == null) throw new Exception("Invalid appsetting");

                //    ViewBag.ShowUpdate = eServicesUpdate.IsActive;
                //    ViewBag.UpdateMessage = eServicesUpdate.Value;
                //    ViewBag.UpdateTime = eServicesUpdate.ModifiedDateTime?.ToString("yyyy/MM/dd HH:mm") ?? DateTime.Now.ToString("yyyy/MM/dd HH:mm");
                //    return View();
                //}


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
                        return Redirect("../Home/ChangePassword?e1=" + enc.Encrypt(model.UserName) + "&e2=" + enc.Encrypt(model.Password));// RedirectToAction("Index", "Home");
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
                        return RedirectToAction("Index", "WayleaveAccount");
                    }
                    else
                    {
                        TempData["LoginError"] = "Invalid username or password!";
                        return RedirectToAction("WayleaveLogin", "Home");
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
                return RedirectToAction("WayleaveLogin", "Home");
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
                        return RedirectToAction("WayleaveLogin", "Home");
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
                // Please store the 2 line below in the db and call/ them from there
                var activeDirectoryOn = "True";
                var activeDirectoryDomain = "10.31.3.51";
                //

                var Ad = false;
                bool ADSuccess = false;
                string email = "";
                AdLogin adLogin = new AdLogin();
                if (activeDirectoryOn == "True")
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
                                    Session["ekurhuleniData"] = result;
                                    Session["ekurhuleniUserID"] = result.userid;
                                    Session["ekurhuleniUserName"] = result.username;
                                    Session["ekurhuleniUserDeptName"] = result.deptartmentname;
                                    Session["ekurhuleniUserRole"] = result.Roles.FirstOrDefault().role_name;
                                    return RedirectToAction("Index", "WL");
                                }
                                else
                                {
                                    TempData["LoginError"] = "Invalid username or password!";
                                    return RedirectToAction("Index", "Home");
                                }

                            }
                        }
                        else
                        {

                            TempData["LoginError"] = "Invalid username or password For active directory login!";
                            return RedirectToAction("Index", "Home");

                        }
                    }
                }
            }
            catch (Exception)
            {
                TempData["LoginError"] = "Invalid username or password For active directory login!";
                return RedirectToAction("Index", "Home");
            }            
            return View();
        }

        public ActionResult LogOut()
        {
            Session.RemoveAll();
            return RedirectToAction("Index", "Home");
        }
        public ActionResult EkurhuleniLogout()
        {
            System.Web.HttpContext.Current.Session.Clear();
            System.Web.HttpContext.Current.Session.Abandon();
            System.Web.HttpContext.Current.Session.RemoveAll();
            return Redirect("../home/index");
        }

        public ActionResult GetDecryptValue(string id)
        {
            var result = new AesCrypto().Decrypt(id);
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}
