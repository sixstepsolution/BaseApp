using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class WLApplicationContactPersonModel
    {
        public int CID { get; set; }
        public string FIRST_NAME { get; set; }
        public string LAST_NAME { get; set; }
        public string REGISTRATION_NUMBER { get; set; }
        public string CONTACT_NUMBER { get; set; }
        public int APP_ID { get; set; }
    }
}