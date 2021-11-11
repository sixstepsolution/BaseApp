using C8.eServices.Mvc.Models.Audits;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public partial class APPLICATION_PAYMENT_PRICE_AUDIT:BaseTypeAudit
    {
        [Key]
        public int AUDIT_ID { get; set; }
        public string ACTION { get; set; }
        public int? AP_ID { get; set; }
        public decimal? APPLICATION_PRICE { get; set; }
        public string CREATED_BY { get; set; }
        public string MODIFIED_BY { get; set; }
        public DateTime? CREATED_DATE { get; set; }
        public DateTime? MODIFIED_DATE { get; set; }
    }
}