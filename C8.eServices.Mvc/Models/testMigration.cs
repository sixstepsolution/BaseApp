namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("testMigration")]
    public partial class testMigration
    {
        public int id { get; set; }

        [StringLength(100)]
        public string name { get; set; }
    }
}
