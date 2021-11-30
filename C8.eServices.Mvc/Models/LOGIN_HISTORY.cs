using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace C8.eServices.Mvc.Models
{
    public partial class LOGIN_HISTORY
    {
        [Key]
        public int LHID { get; set; }
        public int USERID { get; set; }

        [StringLength(100)]
        public string USER_NAME { get; set; }

        public DateTime? LOGIN_DATE { get; set; }

        [StringLength(100)]
        public string OUTCOME { get; set; }
    }
}