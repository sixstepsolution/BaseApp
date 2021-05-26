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

namespace C8.eServices.Mvc.Controllers
{
    public class HomeController : Controller
    {
        //BaseHelper _base = new BaseHelper();
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


                var identity = User.Identity as ClaimsIdentity;

                var claims1 = from c in identity.Claims
                              select new
                              {
                                  subject = c.Subject.Name,
                                  type = c.Type,
                                  value = c.Value
                              };

                //var d=contex.testMigrations;
                bool IsAuthenticated = ClaimsPrincipal.Current.Identities.First().IsAuthenticated;
                if (!IsAuthenticated)
                {
                    // if IsAuthenticated is false return to login code here....

                }

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
                var identity = User.Identity as ClaimsIdentity;

                var claims1 = from c in identity.Claims
                              select new
                              {
                                  subject = c.Subject.Name,
                                  type = c.Type,
                                  value = c.Value
                              };

                //var d=contex.testMigrations;
                bool IsAuthenticated = ClaimsPrincipal.Current.Identities.First().IsAuthenticated;
                if (!IsAuthenticated)
                {
                    // if IsAuthenticated is false return to login code here....

                }

                ViewBag.ReturnUrl = returnUrl;
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
                    var result = context.WL_ACCOUNTS.Where(s => s.EMAIL == model.UserName && s.PASSWORD == model.Password).FirstOrDefault();
                    if (result!=null)
                    {
                        Session["wayleaveaccountId"] = result.ACCOUNT_ID;
                        Session["wayleaveUserName"] = result.EMAIL;
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

        #region Account Login POST
        //
        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Index(LoginViewModel model, string returnUrl)
        {
            ///return RedirectToAction("Index", "WayleaveAccount");
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
                    var result = context.Users.Where(s => s.username == model.UserName && s.password == model.Password).FirstOrDefault();
                    if (result != null)
                    {
                        //CommonModel ekurhuleniData = new CommonModel();
                        //ekurhuleniData.userId = result.userid;
                        //ekurhuleniData.userName = result.username;
                        //ekurhuleniData.deptartmentname = result.deptartmentname;
                        Session["ekurhuleniData"] = result;
                        Session["ekurhuleniUserName"] = result.username;
                        Session["ekurhuleniUserRole"] = result.Roles.FirstOrDefault().role_name;
                        return RedirectToAction("Index", "WL");
                    }
                    else
                    {
                        TempData["LoginError"] = "Invalid username or password!";
                        error = "Invalid username or password!";
                        return RedirectToAction("WayleaveLogin", "Home");
                    }
                }

                // If we got this far, something failed, redisplay form
                ViewBag.Error = error;
                return View(model);
            }
            //return View();
        }
        #endregion

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
    }
}
