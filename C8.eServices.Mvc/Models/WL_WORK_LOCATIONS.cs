using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public partial class WL_WORK_LOCATIONS : BaseModel
    {
        [Key]
        public int WL_ID { get; set; }

        [StringLength(50)]
        public string GPS_START_LATITUDE { get; set; }

        [StringLength(50)]
        public string GPS_START_LONGITUDE { get; set; }

        [StringLength(50)]
        public string GPS_END_LATITUDE { get; set; }

        [StringLength(50)]
        public string GPS_END_LONGITUDE { get; set; }

        [StringLength(200)]
        public string WORK_LOCATION_TYPE { get; set; }
        public string GPS_START_ADDRESS { get; set; }
        public string GPS_END_ADDRESS { get; set; }

        public int APP_ID { get; set; }

        public DateTime CREATED_DATE { get; set; }

        public int CREATED_BY { get; set; }

        public DateTime? MODIFIED_DATE { get; set; }

        public int? MODIFIED_BY { get; set; }

        [ForeignKey("APP_ID")]
        public virtual WL_APPLICATIONFORM WL_APPLICATIONFORM { get; set; }
    }
}