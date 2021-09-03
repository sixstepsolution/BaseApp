namespace C8.eServices.Mvc.Models
{
    using Microsoft.AspNet.Identity.EntityFramework;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public class Role : IdentityRole
    {
        public Role() : base() { }
        public Role(string name) : base(name) { }
        [Key]
        public int role_id { get; set; }

        [Required]
        public string role_name { get; set; }

        public int userid { get; set; }

        public virtual User User { get; set; }
    }
}
