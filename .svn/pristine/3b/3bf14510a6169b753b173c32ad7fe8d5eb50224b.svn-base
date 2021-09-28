using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using wayleave.Models.ElasticEmailService;

namespace C8.eServices.Mvc.Models.EmailBodys
{
    public class EmailNotifications
    {
        public string SentUserNamePassword()
        {
            return "";
        }
        public static string SentUserNamePassword(string toEmail, string name, string username,string pass,string accountNumber)
        {
            string emailStatus = "";
            string fromMail = "jai1970@gmail.com";
            string fromName = "wayleave";
            string url = System.Web.HttpContext.Current.Request.Url.AbsoluteUri;
            string bodyHtml = EmailNotificationBody.SentUserNamePassword(name,username,pass, accountNumber).ToString();
            string bodyText = "";

            string heading = "Wayleave Account Credentials";

            emailStatus = ElasticEmail.SendEmail(toEmail, heading, bodyText, bodyHtml, fromMail, fromName, "");
            return emailStatus;
        }
        public static string ForgotPassword(string toEmail, string name, string username, string pass, string accountNumber)
        {
            string emailStatus = "";
            string fromMail = "jai1970@gmail.com";
            string fromName = "wayleave";
            string url = System.Web.HttpContext.Current.Request.Url.AbsoluteUri;
            string bodyHtml = EmailNotificationBody.ForgotPassword(name, username, pass, accountNumber).ToString();
            string bodyText = "";

            string heading = "Forgot Password Details";

            emailStatus = ElasticEmail.SendEmail(toEmail, heading, bodyText, bodyHtml, fromMail, fromName, "");
            return emailStatus;
        }

        public static string SendWayleaveAccountStatus(string toEmail, string name, string username, string pass, string accountNumber,string accountStatus)
        {
            string emailStatus = "";
            string fromMail = "jai1970@gmail.com";
            string fromName = "wayleave";
            string url = System.Web.HttpContext.Current.Request.Url.AbsoluteUri;
            string bodyHtml = EmailNotificationBody.SendWLAccountUpdateStatus(name, username, pass, accountNumber, accountStatus).ToString();
            string bodyText = "";

            string heading = "Wayleave account status";

            emailStatus = ElasticEmail.SendEmail(toEmail, heading, bodyText, bodyHtml, fromMail, fromName, "");
            return emailStatus;
        }

    }
}