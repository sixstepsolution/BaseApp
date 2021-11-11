namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class MASTER_REGIONS : BaseModel
    {
        [Key]
        public int REGION_ID { get; set; }

        [Required]
        [StringLength(10)]
        public string REGION_CODE { get; set; }

        [StringLength(150)]
        public string REGION_NAME { get; set; }

        [StringLength(50)]
        public string ROAD_NUMBER { get; set; }

        public DateTime? CREATED_ON { get; set; }
    }
}
