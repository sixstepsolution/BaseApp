using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public partial class WL_SUPPORTING_DOCUMENTS
    {
        [Key]
        public int WSD_ID { get; set; }

        [StringLength(250)]
        public string DOCUMENT_TYPE { get; set; }

        [StringLength(250)]
        public string DOCUMENT_NAME { get; set; }        

        public int APP_ID { get; set; }

        public int SD_ID { get; set; }

        public DateTime CREATED_DATE { get; set; }

        public int CREATED_BY { get; set; }

        public DateTime? MODIFIED_DATE { get; set; }

        public int? MODIFIED_BY { get; set; }

        [ForeignKey("APP_ID")]
        public virtual WL_APPLICATIONFORM WL_APPLICATIONFORM { get; set; }
        //[ForeignKey("AUDIT_ID")]
        //public virtual WL_APPLICATIONFORM_AUDIT WL_APPLICATIONFORM_AUDIT { get; set; }

    }
}