using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace C8.eServices.Mvc.Models
{
    public class WL_DECLARATIONS
    {
        [Key]
        public int DID { get; set; }
        public int MD_ID { get; set; }

        public string DECLARATION_NAME { get; set; }
        
        public int APP_ID { get; set; }

        public DateTime? CREATED_DATE { get; set; }

        public int CREATED_BY { get; set; }

        public DateTime? MODIFIED_DATE { get; set; }

        public int MODIFIED_BY { get; set; }

        [ForeignKey("APP_ID")]
        public virtual WL_APPLICATIONFORM WL_APPLICATIONFORM { get; set; }
        //[ForeignKey("AUDIT_ID")]
        //public virtual WL_APPLICATIONFORM_AUDIT WL_APPLICATIONFORM_AUDIT { get; set; }
    }
}