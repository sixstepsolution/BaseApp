namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class WL_CONTACT_PERSONS
    {
        [Key]
        public int CID { get; set; }

        [Required]
        [StringLength(150)]
        public string FIRST_NAME { get; set; }

        [StringLength(150)]
        public string LAST_NAME { get; set; }

        [StringLength(150)]
        public string REGISTRATION_NUMBER { get; set; }

        [StringLength(15)]
        public string CONTACT_NUMBER { get; set; }

        public int APP_ID { get; set; }

        public DateTime CREATED_DATE { get; set; }

        public int CREATED_BY { get; set; }

        public DateTime? MODIFIED_DATE { get; set; }

        public int? MODIFIED_BY { get; set; }

        [ForeignKey("APP_ID")]
        public virtual WL_APPLICATIONFORM WL_APPLICATIONFORM { get; set; }
    }
}
