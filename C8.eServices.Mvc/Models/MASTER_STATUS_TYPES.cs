namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class MASTER_STATUS_TYPES : BaseModel
    {
        public MASTER_STATUS_TYPES()
        {
            WL_APPLICATIONFORM = new HashSet<WL_APPLICATIONFORM>();
            WL_APPLICATIONFORM_AUDIT = new HashSet<WL_APPLICATIONFORM_AUDIT>();
            WL_ACCOUNT = new HashSet<WL_ACCOUNT>();
            WL_ACCOUNT_AUDIT = new HashSet<WL_ACCOUNT_AUDIT>();
        }

        
        public int STATUS_ID { get; set; }

        [StringLength(150)]
        public string DESCRIPTION { get; set; }

        public string TABLE_NAME { get; set; }

        [Required]
        public int SEQUENCE_ID { get; set; }

        public DateTime? CREATED_ON { get; set; }

        public virtual ICollection<WL_APPLICATIONFORM> WL_APPLICATIONFORM { get; set; }
        public virtual ICollection<WL_APPLICATIONFORM_AUDIT> WL_APPLICATIONFORM_AUDIT { get; set; }
        public virtual ICollection<WL_ACCOUNT> WL_ACCOUNT { get; set; }
        public virtual ICollection<WL_ACCOUNT_AUDIT> WL_ACCOUNT_AUDIT { get; set; }


    }
}
