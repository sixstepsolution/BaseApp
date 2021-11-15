namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class MASTER_SERVICE_SUB_TYPES : BaseModel
    {
        public MASTER_SERVICE_SUB_TYPES()
        {
            WL_APPLICATIONFORM = new HashSet<WL_APPLICATIONFORM>();
        }
        
        public int SUB_ID { get; set; }

        [StringLength(250)]
        public string DESCRIPTION { get; set; }

        public int? SERVICE_ID { get; set; }

        public DateTime? CREATED_ON { get; set; }

        [ForeignKey("SERVICE_ID")]
        public virtual MASTER_SERVICE_TYPES MASTER_SERVICE_TYPES { get; set; }

        public virtual ICollection<WL_APPLICATIONFORM> WL_APPLICATIONFORM { get; set; }
    }
}
