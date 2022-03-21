using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class MasterInputCalimsModel
    {
        public int id { get; set; }
        public string description { get; set; }
        public string name { get; set; }
        public string isRequired { get; set; }
        public string comment { get; set; }
        public string applicationStatus { get; set; }
        public string createdDate { get; set; }
    }
}