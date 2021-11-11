using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public class WL_ACCO_CONTACT : BaseModel
    {
        [Key]
        public int CONTACT_ID { get; set; }

        [Required]
        public int ACCOUNT_ID { get; set; }

        [Required]
        [StringLength(200)]
        public string FIRST_NAME { get; set; }

        [Required]
        [StringLength(200)]
        public string SURNAME { get; set; }

        [Required]
        [StringLength(20)]
        public string MOBILE { get; set; }
        [Required]
        [StringLength(400)]
        public string EMAIL { get; set; }

        [Required]
        [StringLength(400)]
        public string DESIGNIATION { get; set; }
       

        public DateTime CREATED_DATE { get; set; }

        public int CREATED_BY { get; set; }

        public DateTime? MODIFIED_DATE { get; set; }

        public int? MODIFIED_BY { get; set; }

        [ForeignKey("ACCOUNT_ID")]
        public virtual WL_ACCOUNT WL_ACCOUNT { get; set; }
    }
}