﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public partial class WL_DEPARTMENTS : BaseModel
    {
        [Key]
        public int DEPARTMENT_ID { get; set; }

        [StringLength(250)]
        public string DEPARTMENT_NAME { get; set; }
        public int? SERVICE_ID { get; set; }
        public int? APP_ID { get; set; }
        public int? DPT_ID { get; set; }
        public DateTime? CREATED_ON { get; set; }
        public DateTime? RESPONSE_DATE { get; set; }
        public string APPROVE_OR_REJECT_COMMENTS { get; set; }
        public string APPLICATION_STATUS { get; set; }

        [ForeignKey("APP_ID")]
        public virtual WL_APPLICATIONFORM WL_APPLICATIONFORM { get; set; }

        [ForeignKey("DPT_ID")]
        public virtual MASTER_DEPARTMENTS MASTER_DEPARTMENTS { get; set; }

        [ForeignKey("SERVICE_ID")]
        public virtual MASTER_SERVICE_TYPES MASTER_SERVICE_TYPES { get; set; }
        //[ForeignKey("AUDIT_ID")]
        //public virtual WL_APPLICATIONFORM_AUDIT WL_APPLICATIONFORM_AUDIT { get; set; }
    }
}