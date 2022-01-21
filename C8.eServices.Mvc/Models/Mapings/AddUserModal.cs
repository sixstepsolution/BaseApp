using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class AddUserModal
    {
        public int userid { get; set; }
        public string userType { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string username { get; set; }
        public string emailAddress { get; set; }
        public string cellPhone { get; set; }
        public string deptartmentname { get; set; }
        public string userRole { get; set; }
        public string isActiveDirectory { get; set; }
        public string paymentPrice { get; set; }
        public string region { get; set; }
    }
}