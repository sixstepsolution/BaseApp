namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Student : BaseModel
    {
        //public int Id { get; set; }

        [Required]
        [StringLength(200)]
        public string Name { get; set; }

        [Required]
        [StringLength(100)]
        public string Password { get; set; }

      
        public decimal Price { get; set; }

        public DateTime CreatedDate { get; set; }

        [Required]
        public string Country { get; set; }

        [Required]
        [StringLength(100)]
        public string State { get; set; }

    }
}
