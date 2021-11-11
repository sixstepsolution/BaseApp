using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public partial class MASTER_DEPARTMENTS : BaseModel
    {
        [Key]
        public int DPT_ID { get; set; }

        [StringLength(250)]
        public string DEPARTMENT_NAME { get; set; }
        public int? SERVICE_ID { get; set; }
        public DateTime? CREATED_ON { get; set; }

        public virtual MASTER_SERVICE_TYPES MASTER_SERVICE_TYPES { get; set; }
    }
}