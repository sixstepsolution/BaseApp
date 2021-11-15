namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Role : BaseModel
    {
        
        public int role_id { get; set; }

        [Required]
        public string role_name { get; set; }

        public int userid { get; set; }

        public virtual User User { get; set; }
    }
}
