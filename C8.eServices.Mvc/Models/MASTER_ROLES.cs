namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class MASTER_ROLES : BaseModel
    {
        
        public int ROLE_ID { get; set; }

        [StringLength(250)]
        public string DESCRIPTION { get; set; }

        public DateTime? CREATED_ON { get; set; }
    }
}
