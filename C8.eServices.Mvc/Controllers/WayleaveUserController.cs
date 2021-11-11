using System;
using System.Globalization;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using C8.eServices.Mvc.Models;
using C8.eServices.Mvc.ViewModels;
using Microsoft.AspNet.Identity.EntityFramework;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Helpers;
using System.DirectoryServices.AccountManagement;

namespace C8.eServices.Mvc.Controllers
{   

    [Authorize]
    public class WayleaveUserController : Controller
    {
        private ApplicationSignInManager _signInManager;
        private ApplicationUserManager _userManager;

        public WayleaveUserController()
        {
        }

        public WayleaveUserController(ApplicationUserManager userManager, ApplicationSignInManager signInManager)
        {
            UserManager = userManager;
            SignInManager = signInManager;
        }

        public ApplicationSignInManager SignInManager
        {
            get
            {
                return _signInManager ?? HttpContext.GetOwinContext().Get<ApplicationSignInManager>();
            }
            private set
            {
                _signInManager = value;
            }
        }

        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }

        //
        // GET: /Account/Login
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        //
        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Login(LoginViewModel model, string returnUrl)
        {
            //if (!ModelState.IsValid)
            //{
            //    return View(model);
            //}

            //// This doesn't count login failures towards account lockout
            //// To enable password failures to trigger account lockout, change to shouldLockout: true
            //var result = await SignInManager.PasswordSignInAsync(model.UserName, model.Password, model.RememberMe, shouldLockout: false);
            //switch (result)
            //{
            //    case SignInStatus.Success:
            //        return RedirectToLocal(returnUrl);
            //    case SignInStatus.LockedOut:
            //        return View("Lockout");
            //    case SignInStatus.RequiresVerification:
            //        return RedirectToAction("SendCode", new { ReturnUrl = returnUrl, RememberMe = model.RememberMe });
            //    case SignInStatus.Failure:
            //    default:
            //        ModelState.AddModelError("", "Invalid login attempt.");
            //        return View(model);
            //}
            using (var context = new WayleaveDBContext())
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
                    var store = new UserStore<IdentityUser>(context);
                    var UserManager = new UserManager<IdentityUser>(store);
                    UserManager.UserValidator = new UserValidator<IdentityUser>(UserManager) { AllowOnlyAlphanumericUserNames = false };
                    var user = await UserManager.FindByNameAsync(model.UserName.Trim());

                    //Uncomment below code to bypass login with user's password 
                    //var user = await UserManager.FindByNameAsync(model.UserName.Trim());
                    //var user = await UserManager.FindByNameAsync(model.UserName);
                    var result = await SignInManager.PasswordSignInAsync(model.UserName, model.Password, model.RememberMe, shouldLockout: false);
                    switch (result)
                    {
                        case SignInStatus.Success:
                            return RedirectToLocal(returnUrl);
                        case SignInStatus.LockedOut:
                            return View("Lockout");
                        case SignInStatus.RequiresVerification:
                            return RedirectToAction("SendCode", new { ReturnUrl = returnUrl, RememberMe = model.RememberMe });
                        case SignInStatus.Failure:
                        default:
                            ModelState.AddModelError("", "Invalid login attempt.");
                            return View(model);
                    }

                    //if (SignInStatus.Success==0)
                    //{
                    //    try
                    //    {
                    //        var resultNew = context.Users.Where(s => s.username == model.UserName).FirstOrDefault();
                    //        // Please store the 2 line below in the db and call/ them from there
                    //        var activeDirectoryOn = "";
                    //        var activeDirectoryDomain = "10.31.3.51";
                    //        //
                    //        if (resultNew != null)
                    //        {
                    //            activeDirectoryOn = resultNew != null ? resultNew.isActiveDirectory : "N";
                    //        }
                    //        var Ad = false;
                    //        bool ADSuccess = false;
                    //        string email = "";
                    //        AdLogin adLogin = new AdLogin();
                    //        if (activeDirectoryOn == "Y")
                    //        {
                    //            var Domain2 = new PrincipalContext(ContextType.Domain, activeDirectoryDomain);

                    //            if (Domain2 != null)
                    //            {
                    //                Ad = await adLogin.ValidateUser(model.UserName, model.Password);
                    //                if (Ad)
                    //                {
                    //                    ADSuccess = true;

                    //                    var addets = await adLogin.Validate(activeDirectoryDomain, true, model);
                    //                    if (addets != null)
                    //                    {
                    //                        var result = context.Users.Where(s => s.username == model.UserName).FirstOrDefault();
                    //                        if (result != null)
                    //                        {
                    //                            Session["ekurhuleniData"] = result;
                    //                            Session["ekurhuleniUserID"] = result.userid;
                    //                            Session["ekurhuleniUserName"] = result.username;
                    //                            Session["ekurhuleniUserDeptName"] = result.deptartmentname;
                    //                            Session["ekurhuleniUserRole"] = result.Roles.FirstOrDefault().role_name;
                    //                            return RedirectToAction("Index", "WL");
                    //                        }
                    //                        else
                    //                        {
                    //                            TempData["LoginError"] = "Invalid username or password!";
                    //                            return RedirectToAction("Index", "Home");
                    //                        }

                    //                    }
                    //                }
                    //                else
                    //                {
                    //                    TempData["LoginError"] = "Invalid username or password For active directory login!";
                    //                    return RedirectToAction("Index", "Home");

                    //                }
                    //            }
                    //        }
                    //        else
                    //        {
                    //            var result = context.Users.Where(s => s.username == model.UserName && s.password == model.Password).FirstOrDefault();
                    //            if (result != null)
                    //            {
                    //                Session["ekurhuleniData"] = result;
                    //                Session["ekurhuleniUserID"] = result.userid;
                    //                Session["ekurhuleniUserName"] = result.username;
                    //                Session["ekurhuleniUserDeptName"] = result.deptartmentname;
                    //                Session["ekurhuleniUserRole"] = result.Roles.FirstOrDefault().role_name;
                    //                return RedirectToAction("Index", "WL");
                    //            }
                    //            else
                    //            {
                    //                TempData["LoginError"] = "Invalid username or password!";
                    //                return RedirectToAction("Index", "Home");
                    //            }
                    //        }
                    //    }
                    //    catch (Exception)
                    //    {
                    //        TempData["LoginError"] = "Invalid username or password For active directory login!";
                    //        return RedirectToAction("Index", "Home");
                    //    }
                    //    //Checks if account is deactivated
                    //    //if (user.SystemUser.IsLocked == true && user.SystemUser.IsDeleted == true)
                    //    //{

                    //    //    ViewBag.Error = "Your Account Is Deactivated, Please Contact The System Administrator To Re-Activate Your Account.";
                    //    //    AuthenticationManager.SignOut();
                    //    //    return View(model);
                    //    //}
                    //    //AppSetting LockOut = context.AppSettings.FirstOrDefault(o => o.Key == AppSettingKeys.AccountLock);
                    //    ////Checks if account is locked
                    //    //if ((user.SystemUser.IsLocked == true && user.SystemUser.IsActive == true && user.SystemUser.IsDeleted == false) && (LockOut.IsActive == true))
                    //    //{

                    //    //    ViewBag.Error = "Your Account has been locked due to suspicious activity, Please Contact The System Administrator To Unlock Your Account.";
                    //    //    AuthenticationManager.SignOut();
                    //    //    return View(model);
                    //    //}


                    //    //var applicationUser = context.ApplicationUserRoles.FirstOrDefault(a => a.SystemUserId == user.SystemUserId);

                    //    //if (applicationUser != null)
                    //    //{
                    //    //    var ipAddressRange = context.AppSettings.FirstOrDefault(a => a.Key == AppSettingKeys.IpAddressRange);
                    //    //    if (ipAddressRange == null) throw new Exception("Invalid appsetting");

                    //    //    if (!HttpContext.Request.UserHostAddress.StartsWith(ipAddressRange.Value))
                    //    //    {
                    //    //        AuthenticationManager.SignOut();
                    //    //        ViewBag.Error = "Unauthorized external access. If you have any questions, please contact the website administrator.";
                    //    //        return View(model);
                    //    //    }
                    //    //}



                    //    //// JK.20190623a - Using the user.emailconfirm to also validate the phone number, but email always takes preference.
                    //    //if (user.EmailConfirmed == false && string.IsNullOrWhiteSpace(user.UnconfirmedEmail))
                    //    //{
                    //    //    var guid = user.Id;
                    //    //    AuthenticationManager.SignOut();
                    //    //    ViewBag.EncodedUserId = guid;
                    //    //    ViewBag.EncodedSystemUserId = user.SystemUserId;
                    //    //    ViewBag.Data = user.SystemUserId;

                    //    //    if (user.SystemUser.EmailAddress != null)
                    //    //    {
                    //    //        ViewBag.Status = "Warning";
                    //    //        return View("_EmailActivated");
                    //    //    }
                    //    //    else
                    //    //        return RedirectToAction("ActivateMobile", "Account", new { id = guid });

                    //    //}
                    //    //if (user.SystemUser.IsLocked != null && (!user.SystemUser.IsPasswordReset && user.SystemUser.IsTemporaryPassword && (bool)user.SystemUser.IsLocked))
                    //    //{
                    //    //    AuthenticationManager.SignOut();
                    //    //    error = "Temporary password expired. Please click forgot password link to reset password.";
                    //    //    ModelState.AddModelError("", "Temporary password expired. Please click forgot password link to reset password.");
                    //    //}
                    //    //else
                    //    //{
                    //    //    var email = new Email();
                    //    //    var sms = new CesarSMS();

                    //    //    var statusIdsms = context.Status.FirstOrDefault(o => o.Key == StatusKeys.SMSPending).Id;
                    //    //    var systemUser = context.SystemUsers.FirstOrDefault(s => s.Id == user.SystemUserId);

                    //    //    //reset incremental delay on successful login
                    //    //    if (HttpContext.Application[Request.UserHostAddress] != null)
                    //    //    {
                    //    //        HttpContext.Application.Remove(Request.UserHostAddress);
                    //    //    }

                    //    //    //Uncomment below code once system is live
                    //    //    //user's email address must be verified before using eServices
                    //    //    var systemUserLogTime = new SystemUserLogTime
                    //    //    {
                    //    //        SystemUserId = user.SystemUserId,
                    //    //        LoginTime = DateTime.Now,
                    //    //        SessionId = HttpContext.Session.SessionID,
                    //    //        IPAddress = HttpContext.Request.UserHostAddress
                    //    //    };

                    //    //    //email login notification
                    //    //    if (systemUser != null)
                    //    //        email.GenerateEmail(systemUser.EmailAddress, "Siyakhokha Login",
                    //    //            "Ekurhuleni Municipality Siyakhokha login notification on " + String.Format("{0:F}", DateTime.Now),
                    //    //            systemUser.Id.ToString(CultureInfo.InvariantCulture), false, AppSettingKeys.EservicesDefaultEmailTemplate, systemUser.FullName);
                    //    //    if (systemUser != null && systemUser.EmailAddress == null && systemUser.MobileNumber != null)

                    //    //        sms.GenerateSMS(systemUser.MobileNumber,
                    //    //           "Ekurhuleni Municipality Siyakhokha login notification on " + String.Format("{0:F}", DateTime.Now),
                    //    //           systemUser.Id.ToString(CultureInfo.InvariantCulture), statusIdsms, systemUser.FullName);

                    //    //    // SmsHelper.Send(systemUser.MobileNumber, "Siyakhokha login notification on " + String.Format("{0:F}", DateTime.Now));

                    //    //    context.SystemUserLogTimes.Add(systemUserLogTime);

                    //    //    if (!user.SystemUser.IsPasswordReset && user.SystemUser.IsTemporaryPassword)
                    //    //    {
                    //    //        user.SystemUser.IsActive = true;
                    //    //        user.SystemUser.IsDeleted = false;
                    //    //        user.SystemUser.IsLocked = true;
                    //    //    }

                    //    //    await UserManager.UpdateAsync(user);
                    //    //    context.SaveChanges();

                    //    //    _loginId = systemUserLogTime.Id;
                    //    //    Session["Username"] = user.UserName;
                    //    //    Session["Password"] = model.Password.Trim();

                    //    //    //LF.20150316 - Force to change password on the first login.
                    //    //    if (user.SystemUser.IsPasswordReset == false)
                    //    //    {
                    //    //        await SignInAsync(user, model.RememberMe);
                    //    //        return RedirectToAction("Manage", "Account");
                    //    //    }

                    //    //    if (UserManager.IsInRole(user.Id, "System Administrators"))
                    //    //    {
                    //    //        await SignInAsync(user, model.RememberMe);
                    //    //        return RedirectToAction("Index", "Home");
                    //    //    }
                    //    //    else
                    //    //    {
                    //    //        await SignInAsync(user, model.RememberMe);
                    //    //        return RedirectToAction("Dashboard", "Profile");
                    //    //    }
                    //    //}
                    //}
                    //else
                    //{
                    //    //login failed
                    //    //increment the delay on failed attempt
                    //    if (HttpContext.Application[Request.UserHostAddress] == null)
                    //    {
                    //        incrementalDelay = 1;
                    //    }
                    //    else
                    //    {
                    //        incrementalDelay = (int)HttpContext.Application[Request.UserHostAddress] * 2;
                    //    }

                    //    HttpContext.Application[Request.UserHostAddress] = incrementalDelay;

                    //    error = "Invalid username/email or password";
                    //    ModelState.AddModelError("", "Invalid username/email or password.");
                    //}
                }

                // If we got this far, something failed, redisplay form
                ViewBag.Error = error;
                return View(model);
            }
        }

        

        //
        // GET: /Account/Register
        [AllowAnonymous]
        public ActionResult Register()
        {
            return View();
        }

        //
        // POST: /Account/Register
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Register(RegisterViewModel model)
        {
            //if (ModelState.IsValid)
            //{
            //    var user = new ApplicationUser { UserName = model.UserName, Email = model.Email };
            //    var result = await UserManager.CreateAsync(user, model.Password);
            //    if (result.Succeeded)
            //    {
            //        await SignInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);

            //        // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
            //        // Send an email with this link
            //        // string code = await UserManager.GenerateEmailConfirmationTokenAsync(user.Id);
            //        // var callbackUrl = Url.Action("ConfirmEmail", "Account", new { userId = user.Id, code = code }, protocol: Request.Url.Scheme);
            //        // await UserManager.SendEmailAsync(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>");

            //        return RedirectToAction("Index", "Home");
            //    }
            //    AddErrors(result);
            //}

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        //
        // GET: /Account/ConfirmEmail
        [AllowAnonymous]
        public async Task<ActionResult> ConfirmEmail(string userId, string code)
        {
            if (userId == null || code == null)
            {
                return View("Error");
            }
            var result = await UserManager.ConfirmEmailAsync(userId, code);
            return View(result.Succeeded ? "ConfirmEmail" : "Error");
        }

        //
        // GET: /Account/ForgotPassword
        [AllowAnonymous]
        public ActionResult ForgotPassword()
        {
            return View();
        }

        //
        // POST: /Account/ForgotPassword
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ForgotPassword(ForgotPasswordViewModel model)
        {
            if (ModelState.IsValid)
            {
                var user = await UserManager.FindByNameAsync(model.Email);
                if (user == null || !(await UserManager.IsEmailConfirmedAsync(user.Id)))
                {
                    // Don't reveal that the user does not exist or is not confirmed
                    return View("ForgotPasswordConfirmation");
                }

                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                // Send an email with this link
                // string code = await UserManager.GeneratePasswordResetTokenAsync(user.Id);
                // var callbackUrl = Url.Action("ResetPassword", "Account", new { userId = user.Id, code = code }, protocol: Request.Url.Scheme);		
                // await UserManager.SendEmailAsync(user.Id, "Reset Password", "Please reset your password by clicking <a href=\"" + callbackUrl + "\">here</a>");
                // return RedirectToAction("ForgotPasswordConfirmation", "Account");
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        //
        // GET: /Account/ForgotPasswordConfirmation
        [AllowAnonymous]
        public ActionResult ForgotPasswordConfirmation()
        {
            return View();
        }

        //
        // GET: /Account/ResetPassword
        [AllowAnonymous]
        public ActionResult ResetPassword(string code)
        {
            return code == null ? View("Error") : View();
        }

        ////
        //// POST: /Account/ResetPassword
        //[HttpPost]
        //[AllowAnonymous]
        //[ValidateAntiForgeryToken]
        //public async Task<ActionResult> ResetPassword(ResetPasswordViewModel model)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return View(model);
        //    }
        //    var user = await UserManager.FindByNameAsync(model.Email);
        //    if (user == null)
        //    {
        //        // Don't reveal that the user does not exist
        //        return RedirectToAction("ResetPasswordConfirmation", "Account");
        //    }
        //    var result = await UserManager.ResetPasswordAsync(user.Id, model.Code, model.Password);
        //    if (result.Succeeded)
        //    {
        //        return RedirectToAction("ResetPasswordConfirmation", "Account");
        //    }
        //    AddErrors(result);
        //    return View();
        //}

        //
        // GET: /Account/ResetPasswordConfirmation
        [AllowAnonymous]
        public ActionResult ResetPasswordConfirmation()
        {
            return View();
        }

        //
        // POST: /Account/ExternalLogin
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ExternalLogin(string provider, string returnUrl)
        {
            // Request a redirect to the external login provider
            return new ChallengeResult(provider, Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl }));
        }

        ////
        //// GET: /Account/SendCode
        //[AllowAnonymous]
        //public async Task<ActionResult> SendCode(string returnUrl, bool rememberMe)
        //{
        //    var userId = await SignInManager.GetVerifiedUserIdAsync();
        //    if (userId == null)
        //    {
        //        return View("Error");
        //    }
        //    var userFactors = await UserManager.GetValidTwoFactorProvidersAsync(userId);
        //    var factorOptions = userFactors.Select(purpose => new SelectListItem { Text = purpose, Value = purpose }).ToList();
        //    return View(new SendCodeViewModel { Providers = factorOptions, ReturnUrl = returnUrl, RememberMe = rememberMe });
        //}

        ////
        //// POST: /Account/SendCode
        //[HttpPost]
        //[AllowAnonymous]
        //[ValidateAntiForgeryToken]
        //public async Task<ActionResult> SendCode(SendCodeViewModel model)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return View();
        //    }

        //    // Generate the token and send it
        //    if (!await SignInManager.SendTwoFactorCodeAsync(model.SelectedProvider))
        //    {
        //        return View("Error");
        //    }
        //    return RedirectToAction("VerifyCode", new { Provider = model.SelectedProvider, ReturnUrl = model.ReturnUrl, RememberMe = model.RememberMe });
        //}

        ////
        //// GET: /Account/ExternalLoginCallback
        //[AllowAnonymous]
        //public async Task<ActionResult> ExternalLoginCallback(string returnUrl)
        //{
        //    var loginInfo = await AuthenticationManager.GetExternalLoginInfoAsync();
        //    if (loginInfo == null)
        //    {
        //        return RedirectToAction("Login");
        //    }

        //    // Sign in the user with this external login provider if the user already has a login
        //    var result = await SignInManager.ExternalSignInAsync(loginInfo, isPersistent: false);
        //    switch (result)
        //    {
        //        case SignInStatus.Success:
        //            return RedirectToLocal(returnUrl);
        //        case SignInStatus.LockedOut:
        //            return View("Lockout");
        //        case SignInStatus.RequiresVerification:
        //            return RedirectToAction("SendCode", new { ReturnUrl = returnUrl, RememberMe = false });
        //        case SignInStatus.Failure:
        //        default:
        //            // If the user does not have an account, then prompt the user to create an account
        //            ViewBag.ReturnUrl = returnUrl;
        //            ViewBag.LoginProvider = loginInfo.Login.LoginProvider;
        //            return View("ExternalLoginConfirmation", new ExternalLoginConfirmationViewModel { Email = loginInfo.Email });
        //    }
        //}

        ////
        //// POST: /Account/ExternalLoginConfirmation
        //[HttpPost]
        //[AllowAnonymous]
        //[ValidateAntiForgeryToken]
        //public async Task<ActionResult> ExternalLoginConfirmation(ExternalLoginConfirmationViewModel model, string returnUrl)
        //{
        //    if (User.Identity.IsAuthenticated)
        //    {
        //        return RedirectToAction("Index", "Manage");
        //    }

        //    if (ModelState.IsValid)
        //    {
        //        // Get the information about the user from the external login provider
        //        var info = await AuthenticationManager.GetExternalLoginInfoAsync();
        //        if (info == null)
        //        {
        //            return View("ExternalLoginFailure");
        //        }
        //        var user = new ApplicationUser { UserName = model.Email, Email = model.Email };
        //        var result = await UserManager.CreateAsync(user);
        //        if (result.Succeeded)
        //        {
        //            result = await UserManager.AddLoginAsync(user.Id, info.Login);
        //            if (result.Succeeded)
        //            {
        //                await SignInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);
        //                return RedirectToLocal(returnUrl);
        //            }
        //        }
        //        AddErrors(result);
        //    }

        //    ViewBag.ReturnUrl = returnUrl;
        //    return View(model);
        //}

        //
        // POST: /Account/LogOff
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            AuthenticationManager.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            return RedirectToAction("Index", "Home");
        }

        //
        // GET: /Account/ExternalLoginFailure
        [AllowAnonymous]
        public ActionResult ExternalLoginFailure()
        {
            return View();
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (_userManager != null)
                {
                    _userManager.Dispose();
                    _userManager = null;
                }

                if (_signInManager != null)
                {
                    _signInManager.Dispose();
                    _signInManager = null;
                }
            }

            base.Dispose(disposing);
        }

        #region Helpers
        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }

        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            return RedirectToAction("Index", "Home");
        }

        internal class ChallengeResult : HttpUnauthorizedResult
        {
            public ChallengeResult(string provider, string redirectUri)
                : this(provider, redirectUri, null)
            {
            }

            public ChallengeResult(string provider, string redirectUri, string userId)
            {
                LoginProvider = provider;
                RedirectUri = redirectUri;
                UserId = userId;
            }

            public string LoginProvider { get; set; }
            public string RedirectUri { get; set; }
            public string UserId { get; set; }

            public override void ExecuteResult(ControllerContext context)
            {
                var properties = new AuthenticationProperties { RedirectUri = RedirectUri };
                if (UserId != null)
                {
                    properties.Dictionary[XsrfKey] = UserId;
                }
                context.HttpContext.GetOwinContext().Authentication.Challenge(properties, LoginProvider);
            }
        }
        #endregion
    }


}