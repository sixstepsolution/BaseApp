using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace C8.eServices.Mvc.Models.EmailBodys
{
    public class EmailNotificationBody
    {
        public static StringBuilder SentUserNamePassword(string name,string username,string pass,string accountNumber)
        {

            StringBuilder strBulBodyContent = new StringBuilder();
            strBulBodyContent.Append("<html>");
            strBulBodyContent.Append("<head>");
            strBulBodyContent.Append("</head>");
            strBulBodyContent.Append("<body>");
            strBulBodyContent.Append("<div>");
            strBulBodyContent.Append("<div>Dear " + name + ",</div><br /><br/>");
            //strBulBodyContent.Append("<div>Your account number is : <b>"+ accountNumber + "</b></div><br /><br/>");
            strBulBodyContent.Append("<div>Please find the below account details</div><br/>");
            strBulBodyContent.Append("<div>Account number: " + accountNumber + "</div><br/>");
            strBulBodyContent.Append("<div>Username: " + username + "</div><br/>");
            strBulBodyContent.Append("<div>Password: " + pass + "</div><br/>");
            string url = System.Web.HttpContext.Current.Request.Url.AbsoluteUri;
            string urlnew = url.Substring(0, url.LastIndexOf('/'));
            //strBulBodyContent.Append("<div style='width:90%;text-align:left;margin-top:20px;margin-bottom:20px;font-size:10pt;padding-left:10px'>");
            //url = string.Format("{0}/Home/ChangePassword?e={1}&e1={2}&e2={3}", urlnew.Substring(0, urlnew.LastIndexOf('/')), BAL.Encrypt(UserData.EMAIL_ADDRESS), BAL.Encrypt(UserData.PASSWORD), BAL.Encrypt("User"));

            //strBulBodyContent.Append("<a href='" + url + "' style='cursor:pointer'><input type='button' value='Password Change' style='height:50px;width:200px;background-color:green;border-radius:3px;color:white' /></a>");

            //strBulBodyContent.Append("</div>");

            strBulBodyContent.Append("<br/><br/><br/>Regards<br />");
            strBulBodyContent.Append("Wayleave");
            strBulBodyContent.Append("</div>");
            strBulBodyContent.Append("</body>");
            strBulBodyContent.Append("</html>");
            return strBulBodyContent;
        }
        public static StringBuilder ForgotPassword(string name, string username, string pass, string accountNumber)
        {

            StringBuilder strBulBodyContent = new StringBuilder();
            strBulBodyContent.Append("<html>");
            strBulBodyContent.Append("<head>");
            strBulBodyContent.Append("</head>");
            strBulBodyContent.Append("<body>");
            strBulBodyContent.Append("<div>");
            strBulBodyContent.Append("<div>Dear " + name + ",</div><br /><br/>");
            //strBulBodyContent.Append("<div>Your account number is : <b>"+ accountNumber + "</b></div><br /><br/>");
            strBulBodyContent.Append("<div>Please find the below your password details</div><br/>");
            strBulBodyContent.Append("<div>Account number: " + accountNumber + "</div><br/>");
            strBulBodyContent.Append("<div>Username: " + username + "</div><br/>");
            strBulBodyContent.Append("<div>Password: " + pass + "</div><br/>");
            string url = System.Web.HttpContext.Current.Request.Url.AbsoluteUri;
            string urlnew = url.Substring(0, url.LastIndexOf('/'));
            //strBulBodyContent.Append("<div style='width:90%;text-align:left;margin-top:20px;margin-bottom:20px;font-size:10pt;padding-left:10px'>");
            //url = string.Format("{0}/Home/ChangePassword?e={1}&e1={2}&e2={3}", urlnew.Substring(0, urlnew.LastIndexOf('/')), BAL.Encrypt(UserData.EMAIL_ADDRESS), BAL.Encrypt(UserData.PASSWORD), BAL.Encrypt("User"));

            //strBulBodyContent.Append("<a href='" + url + "' style='cursor:pointer'><input type='button' value='Password Change' style='height:50px;width:200px;background-color:green;border-radius:3px;color:white' /></a>");

            //strBulBodyContent.Append("</div>");

            strBulBodyContent.Append("<br/><br/><br/>Regards<br />");
            strBulBodyContent.Append("Wayleave");
            strBulBodyContent.Append("</div>");
            strBulBodyContent.Append("</body>");
            strBulBodyContent.Append("</html>");
            return strBulBodyContent;
        }

        public static StringBuilder SendWLAccountUpdateStatus(string name, string username, string pass, string accountNumber, string accountStatus)
        {
            StringBuilder strBulBodyContent = new StringBuilder();
            strBulBodyContent.Append("<html>");
            strBulBodyContent.Append("<head>");
            strBulBodyContent.Append("</head>");
            strBulBodyContent.Append("<body>");
            strBulBodyContent.Append("<div>");
            strBulBodyContent.Append("<div>Dear " + name + ",</div><br /><br/>");
            //strBulBodyContent.Append("<div>Your account number is : <b>"+ accountNumber + "</b></div><br /><br/>");
            strBulBodyContent.Append("<div>Your account has been updated.</div><br/>");
            strBulBodyContent.Append("<div>Account status:<b> " + accountStatus + " </b></div><br/>");
            strBulBodyContent.Append("<div>Account number: " + accountNumber + "</div><br/>");
            strBulBodyContent.Append("<div>Username: " + username + "</div><br/>");
            strBulBodyContent.Append("<div>Password: " + pass + "</div><br/>");
            string url = System.Web.HttpContext.Current.Request.Url.AbsoluteUri;
            string urlnew = url.Substring(0, url.LastIndexOf('/'));
            //strBulBodyContent.Append("<div style='width:90%;text-align:left;margin-top:20px;margin-bottom:20px;font-size:10pt;padding-left:10px'>");
            //url = string.Format("{0}/Home/ChangePassword?e={1}&e1={2}&e2={3}", urlnew.Substring(0, urlnew.LastIndexOf('/')), BAL.Encrypt(UserData.EMAIL_ADDRESS), BAL.Encrypt(UserData.PASSWORD), BAL.Encrypt("User"));

            //strBulBodyContent.Append("<a href='" + url + "' style='cursor:pointer'><input type='button' value='Password Change' style='height:50px;width:200px;background-color:green;border-radius:3px;color:white' /></a>");

            //strBulBodyContent.Append("</div>");

            strBulBodyContent.Append("<br/><br/><br/>Regards<br />");
            strBulBodyContent.Append("Wayleave");
            strBulBodyContent.Append("</div>");
            strBulBodyContent.Append("</body>");
            strBulBodyContent.Append("</html>");
            return strBulBodyContent;
        }
    }
}