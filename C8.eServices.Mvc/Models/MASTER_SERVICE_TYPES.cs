namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class MASTER_SERVICE_TYPES : BaseModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MASTER_SERVICE_TYPES()
        {
            MASTER_SERVICE_SUB_TYPES = new HashSet<MASTER_SERVICE_SUB_TYPES>();
            WL_APPLICATIONFORM = new HashSet<WL_APPLICATIONFORM>();
        }

        
        public int SERVICE_ID { get; set; }

        [StringLength(250)]
        public string DESCRIPTION { get; set; }

        public DateTime? CREATED_ON { get; set; }


        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MASTER_SERVICE_SUB_TYPES> MASTER_SERVICE_SUB_TYPES { get; set; }
        public virtual ICollection<WL_APPLICATIONFORM> WL_APPLICATIONFORM { get; set; }


    }
}
