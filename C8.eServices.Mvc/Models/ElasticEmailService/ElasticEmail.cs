using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace wayleave.Models.ElasticEmailService
{
    public class ElasticEmail
    {
        public static string USERNAME = System.Configuration.ConfigurationManager.AppSettings["Elastic_UserName"].ToString();
        public static string API_KEY = System.Configuration.ConfigurationManager.AppSettings["Elastic_Api_Key"].ToString();
        //public static string USERNAME="mahesh.v540@gmail.com";
        //public static string API_KEY = "add07e48-8be0-4d66-a3d3-debc6c3f1798";
        //public static string USERNAME = "kiranmanam.net@gmail.com";
        //public static string API_KEY = "42fa6299-d45c-42da-8c7d-ccdeac803e3f";
        //public static string USERNAME = "prasadthummala558@gmail.com";
        //public static string API_KEY = "44359c63-e03d-4f21-8dee-9b80f5845866";
        public static string SendEmail(string to, string subject, string bodyText, string bodyHtml, string from, string fromName, string attachments)
        {

            WebClient client = new WebClient();
            NameValueCollection values = new NameValueCollection();
            values.Add("username", USERNAME);
            values.Add("api_key", API_KEY);
            values.Add("from", from);
            values.Add("from_name", fromName);
            values.Add("subject", subject);
            if (bodyHtml != null)
                values.Add("body_html", bodyHtml);
            if (bodyText != null)
                values.Add("body_text", bodyText);
            values.Add("to", to);
            if (attachments != null)
                values.Add("attachments", attachments);
            byte[] response = client.UploadValues("http://api.elasticemail.com/mailer/send", values);
            return Encoding.UTF8.GetString(response);
        }
        public string UploadAttachment(string filepath, string filename)
        {
            FileStream stream = File.OpenRead(filepath);
            WebRequest request = WebRequest.Create("http://api.elasticemail.com/attachments/upload?username=" + USERNAME + "&api_key=" + API_KEY + "&file=" + filename);
            request.Method = "PUT";
            request.ContentLength = stream.Length;
            Stream outstream = request.GetRequestStream();
            stream.CopyTo(outstream, 4096);
            stream.Close();
            WebResponse response = request.GetResponse();
            string result = new StreamReader(response.GetResponseStream(), Encoding.UTF8).ReadToEnd();
            response.Close();
            return result;
        }

    }
}