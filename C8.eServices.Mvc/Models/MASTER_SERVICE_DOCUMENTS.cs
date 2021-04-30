using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace C8.eServices.Mvc.Models
{
    public partial class MASTER_SERVICE_DOCUMENTS
    {
        [Key]
        public int SD_ID { get; set; }

        [StringLength(250)]
        public string DESCRIPTION { get; set; }
        public int? SERVICE_ID { get; set; }
        public DateTime? CREATED_ON { get; set; }
        
        public virtual MASTER_SERVICE_TYPES MASTER_SERVICE_TYPES { get; set; }

    }
}