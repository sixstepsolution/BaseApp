using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public partial class WL_EXCAVATION_DETAILS
    {
        [Key]
        public int EXCAVATION_ID { get; set; }
        public int? APP_ID { get; set; }

        [StringLength(250)]
        public string TYPE_OF_ROADCROSSING { get; set; }
        public string OPEN_TRENCH_COMMENT { get; set; }
        public decimal? EXCAVATION_LENGTH { get; set; }
        public decimal? RIDING_SURFACE { get; set; }
        public decimal? KERBS { get; set; }
        public string GPS_START_ADDRESS { get; set; }
        public string GPS_END_ADDRESS { get; set; }
        public string APPLICATION_COMMENTS { get; set; }
        public DateTime? CREATED_DATE { get; set; }
        public int CREATED_BY { get; set; }
        public DateTime? MODIFIED_DATE { get; set; }
        public int MODIFIED_BY { get; set; }

        [ForeignKey("APP_ID")]
        public virtual WL_APPLICATIONFORM WL_APPLICATIONFORM { get; set; }
    }
}