using System;
using System.Collections.Generic;
using System.Linq;
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
}