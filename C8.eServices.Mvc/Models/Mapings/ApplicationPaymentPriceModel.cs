using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class ApplicationPaymentPriceModel
    {
        public int? AP_ID { get; set; }
        public decimal? APPLICATION_PRICE { get; set; }
        public string DEPARTMENT_USER { get; set; }
    }
}