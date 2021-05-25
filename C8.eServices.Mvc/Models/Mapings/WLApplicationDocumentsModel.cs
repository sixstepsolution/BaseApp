using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class WLApplicationDocumentsModel
    {
        public int WSD_ID { get; set; }
        public string DOCUMENT_TYPE { get; set; }
        public string DOCUMENT_NAME { get; set; }

        public int APP_ID { get; set; }

        public int SD_ID { get; set; }
    }
}