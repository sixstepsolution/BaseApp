namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class WL_REGIONS : BaseModel
    {
        [Key]
        public int RID { get; set; }

        [Required]
        public int REGION_ID { get; set; }

        [Required]
        [StringLength(10)]
        public string REGION_CODE { get; set; }

        [StringLength(150)]
        public string REGION_NAME { get; set; }

        [StringLength(50)]
        public string ROAD_NUMBER { get; set; }

        public int APP_ID { get; set; }

        public DateTime? CREATED_DATE { get; set; }

        public int CREATED_BY { get; set; }

        public DateTime? MODIFIED_DATE { get; set; }

        public int MODIFIED_BY { get; set; }

        [ForeignKey("APP_ID")]
        public virtual WL_APPLICATIONFORM WL_APPLICATIONFORM { get; set; }
    }
}
