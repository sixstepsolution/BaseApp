namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class MASTER_STATUS_TYPES
    {
        public MASTER_STATUS_TYPES()
        {
            WL_APPLICATIONFORM = new HashSet<WL_APPLICATIONFORM>();
            WL_ACCOUNT = new HashSet<WL_ACCOUNT>();
        }

        [Key]
        public int STATUS_ID { get; set; }

        [StringLength(150)]
        public string DESCRIPTION { get; set; }

        public string TABLE_NAME { get; set; }

        [Required]
        public int SEQUENCE_ID { get; set; }

        public DateTime? CREATED_ON { get; set; }

        public virtual ICollection<WL_APPLICATIONFORM> WL_APPLICATIONFORM { get; set; }
        public virtual ICollection<WL_ACCOUNT> WL_ACCOUNT { get; set; }


    }
}
