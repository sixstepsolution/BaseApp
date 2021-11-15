using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public partial class APPLICATION_PAYMENT_PRICE : BaseModel
    {
        
        public int AP_ID { get; set; }
        public decimal? APPLICATION_PRICE { get; set; }
        public DateTime? CREATED_DATE { get; set; }
        public DateTime? MODIFIED_DATE { get; set; }
    }
}