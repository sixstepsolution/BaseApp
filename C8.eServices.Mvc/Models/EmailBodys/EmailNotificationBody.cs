using C8.eServices.Mvc.Models.Comm;
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

        public static StringBuilder SentForgotPasswordDetails(string name, string username, string pass, string accountNumber)
        {
            string pwd = CommonModel.CreateRandomPassword(8);
            pwd = pwd + "TEMP!@*";
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
            strBulBodyContent.Append("<div>Password: " + pwd + "</div><br/>");
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
        public static StringBuilder SentApplicationFormGrantStatus(string firstName, string lastName, string accountNumber, string grantStatus,string applicationComment)
        {
            StringBuilder strBulBodyContent = new StringBuilder();
            strBulBodyContent.Append("<html>");
            strBulBodyContent.Append("<head>");
            strBulBodyContent.Append("</head>");
            strBulBodyContent.Append("<body>");
            strBulBodyContent.Append("<div>");
            strBulBodyContent.Append("<div>Dear " + firstName + " " + lastName + ",</div><br /><br/>");
            strBulBodyContent.Append("<div>Your Wayleave application <b>" + accountNumber + "</b> has been <b>"+ grantStatus + "</b>.</div><br />");
            if(!String.IsNullOrEmpty(applicationComment))
            {
                strBulBodyContent.Append("<div>Comments: <b>" + applicationComment + "</b></div><br />");
            }
            strBulBodyContent.Append("<br/><br/><br/>Regards<br />");
            strBulBodyContent.Append("Wayleave");
            strBulBodyContent.Append("</div>");
            strBulBodyContent.Append("</body>");
            strBulBodyContent.Append("</html>");
            return strBulBodyContent;
        }

        public static StringBuilder SentCloseApplicationForm(string firstName, string lastName, string accountNumber, string grantStatus, string applicationComment)
        {
            StringBuilder strBulBodyContent = new StringBuilder();
            strBulBodyContent.Append("<html>");
            strBulBodyContent.Append("<head>");
            strBulBodyContent.Append("</head>");
            strBulBodyContent.Append("<body>");
            strBulBodyContent.Append("<div>");
            strBulBodyContent.Append("<div>Dear " + firstName + " " + lastName + ",</div><br /><br/>");
            strBulBodyContent.Append("<div>Your Wayleave application <b>" + accountNumber + "</b> has been closed.</div><br />");
            if (!String.IsNullOrEmpty(applicationComment))
            {
                strBulBodyContent.Append("<div>Comments: <b>" + applicationComment + "</b></div><br />");
            }
            strBulBodyContent.Append("<br/><br/><br/>Regards<br />");
            strBulBodyContent.Append("Wayleave");
            strBulBodyContent.Append("</div>");
            strBulBodyContent.Append("</body>");
            strBulBodyContent.Append("</html>");
            return strBulBodyContent;
        }


        public static StringBuilder SentWayleaveaccountStatus(string firstName, string lastName, string accountNumber, DateTime? updatedDate)
        {
            StringBuilder strBulBodyContent = new StringBuilder();
            strBulBodyContent.Append("<html>");
            strBulBodyContent.Append("<head>");
            strBulBodyContent.Append("</head>");
            strBulBodyContent.Append("<body>");
            strBulBodyContent.Append("<div>");
            strBulBodyContent.Append("<div>Dear " + firstName + " " + lastName + ",</div><br /><br/>");
            strBulBodyContent.Append("<div>Your Wayleave profile <b>" + accountNumber + "</b> has been updated.</div><br />");
            strBulBodyContent.Append("<br/><br/><br/>Regards<br />");
            strBulBodyContent.Append("Wayleave");
            strBulBodyContent.Append("</div>");
            strBulBodyContent.Append("</body>");
            strBulBodyContent.Append("</html>");
            return strBulBodyContent;
        }


        public static StringBuilder SentApplicationFormStatustoConsultant(string firstName, string lastName, string accountNumber)
        {
            StringBuilder strBulBodyContent = new StringBuilder();
            strBulBodyContent.Append("<html>");
            strBulBodyContent.Append("<head>");
            strBulBodyContent.Append("</head>");
            strBulBodyContent.Append("<body>");
            strBulBodyContent.Append("<div>");
            strBulBodyContent.Append("<div>Dear " + firstName + " " + lastName + ",</div><br /><br/>");
            strBulBodyContent.Append("<div>Wayleave application <b>" + accountNumber + "</b> has been distributed to departments for review.</div><br />");
            
            strBulBodyContent.Append("<br/><br/><br/>Regards<br />");
            strBulBodyContent.Append("Wayleave");
            strBulBodyContent.Append("</div>");
            strBulBodyContent.Append("</body>");
            strBulBodyContent.Append("</html>");
            return strBulBodyContent;
        }

        public static StringBuilder SentApplicationtoDepartments(string userName, string applicationNumber, string department, string stepDescription,DateTime? createdDate, DateTime? completionDate)
        {
            StringBuilder strBulBodyContent = new StringBuilder();
            strBulBodyContent.Append("<html>");
            strBulBodyContent.Append("<head>");
            strBulBodyContent.Append("</head>");
            strBulBodyContent.Append("<body>");
            strBulBodyContent.Append("<div>");
            strBulBodyContent.Append("<div>Dear " + userName +  ",</div><br /><br/>");
            strBulBodyContent.Append("<div>New Wayleave application <b>" + applicationNumber + "</b> has been distributed to <b>" + department + " department</b>.</div><br />");
            //if (!String.IsNullOrEmpty(applicationComment))
            //{
            strBulBodyContent.Append("<div>Please find the below application details</div><br/>");
            strBulBodyContent.Append("<div>Application Number: <b>" + applicationNumber + "</b></div><br />");
            strBulBodyContent.Append("<div>Application Status: <b>" + stepDescription + "</b></div><br />");
            //strBulBodyContent.Append("<div>Application date: <b>" + createdDate + "</b></div><br />");
            //strBulBodyContent.Append("<div>Completion date: <b>" + completionDate + "</b></div><br />");
            //}
            strBulBodyContent.Append("<br/><br/><br/>Regards<br />");
            strBulBodyContent.Append("Wayleave");
            strBulBodyContent.Append("</div>");
            strBulBodyContent.Append("</body>");
            strBulBodyContent.Append("</html>");
            return strBulBodyContent;
        }

        public static StringBuilder SentPaylaterNotification(string userName, string applicationNumber, string department, string stepDescription, decimal? fee)
        {
            StringBuilder strBulBodyContent = new StringBuilder();
            strBulBodyContent.Append("<html>");
            strBulBodyContent.Append("<head>");
            strBulBodyContent.Append("</head>");
            strBulBodyContent.Append("<body>");
            strBulBodyContent.Append("<div>");
            strBulBodyContent.Append("<div>Dear " + userName + ",</div><br /><br/>");
            strBulBodyContent.Append("<div>Please make a payment towards your Wayleave application at your nearest Customer Care Center, or a Point of Sale. </div><br />");
            
            strBulBodyContent.Append("<div>Wayleave application fee: <b>R" + fee + "</b></div><br />");
            strBulBodyContent.Append("<div>Reference Number: <b>" + applicationNumber + "</b></div><br /><br />");
            strBulBodyContent.Append("<div><b>After you have made a cash payment, login to the Wayleave system and perform the following:</b></div><br />");
            strBulBodyContent.Append("<div><b>- Access your application from the Pending Payment queue</b></div><br />");
            strBulBodyContent.Append("<div><b>- Upload your EFT Payment Receipt under the Supporting Documents section</b></div><br />");
            strBulBodyContent.Append("<div><b>- Click on Submit</b></div><br />");
            //}
            strBulBodyContent.Append("<br/><br/><br/>Regards<br />");
            strBulBodyContent.Append("Wayleave");
            strBulBodyContent.Append("</div>");
            strBulBodyContent.Append("</body>");
            strBulBodyContent.Append("</html>");
            return strBulBodyContent;
        }
        public static StringBuilder DepartmentResponseStatus(string firstName, string lastName, string accountNumber, string grantStatus, string applicationComment, string department)
        {
            StringBuilder strBulBodyContent = new StringBuilder();
            strBulBodyContent.Append("<html>");
            strBulBodyContent.Append("<head>");
            strBulBodyContent.Append("</head>");
            strBulBodyContent.Append("<body>");
            strBulBodyContent.Append("<div>");
            strBulBodyContent.Append("<div>Dear " + firstName + " " + lastName + ",</div><br /><br/>");
            strBulBodyContent.Append("<div>Your Wayleave application <b>" + accountNumber + "</b> under the department <b>" + department + "</b>  has been <b>" + grantStatus + "</b>.</div><br />");
            if (!String.IsNullOrEmpty(applicationComment))
            {
                strBulBodyContent.Append("<div>Comments: <b>" + applicationComment + "</b></div><br />");
            }
            strBulBodyContent.Append("<br/><br/><br/>Regards<br />");
            strBulBodyContent.Append("Wayleave");
            strBulBodyContent.Append("</div>");
            strBulBodyContent.Append("</body>");
            strBulBodyContent.Append("</html>");
            return strBulBodyContent;
        }

    }
}