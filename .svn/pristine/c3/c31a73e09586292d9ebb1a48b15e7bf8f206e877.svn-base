using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace C8.eServices.Mvc.Models
{
    public partial class WL_INSPECTION_LIST
    {
        [Key]
        public int INSPECTION_ID { get; set; }
        public int INS_ID { get; set; }

        [Required]
        public string INSPECTION_NAME { get; set; }
        public string INSPECTION_TYPE { get; set; }
        public DateTime? CREATED_ON { get; set; }
        public int APP_ID { get; set; }

        [ForeignKey("APP_ID")]
        public virtual WL_APPLICATIONFORM WL_APPLICATIONFORM { get; set; }
    }
}