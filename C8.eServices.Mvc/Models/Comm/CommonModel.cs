using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace C8.eServices.Mvc.Models.Comm
{
    public class CommonModel
    {
        public int userId { get; set; }
        public string userName { get; set; }
        public string[] roles { get; set; }
        public static string CreateRandomPassword(int length)
        {
            const string valid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890@!#$*&";
            StringBuilder res = new StringBuilder();
            Random rnd = new Random();
            while (0 < length--)
            {
                res.Append(valid[rnd.Next(valid.Length)]);
            }
            return res.ToString();

        }
        public string deptartmentname { get; set; }

    }

    public class IPAddressModel {
        public string GetIP4Address()
        {
            
            string IP4Address = String.Empty;
            if (IP4Address != String.Empty)
            {
                return IP4Address;
            }

            foreach (IPAddress IPA in Dns.GetHostAddresses(Dns.GetHostName()))
            {
                if (IPA.AddressFamily.ToString() == "InterNetwork")
                {
                    IP4Address = IPA.ToString();
                    break;
                }
            }

            return IP4Address;
        }
        public string GetIP()
        {
            string Str = "";
            Str = System.Net.Dns.GetHostName();
            IPHostEntry ipEntry = System.Net.Dns.GetHostEntry(Str);
            IPAddress[] addr = ipEntry.AddressList;
            return addr[addr.Length - 1].ToString();
        }
    }

    public class ReportRequestModel
    {
        public string documentType { get; set; }
        public string reportType { get; set; }
        public DateTime? startDate { get; set; }
        public DateTime? endDate { get; set; }
        public string[] status { get; set; }
    }
}