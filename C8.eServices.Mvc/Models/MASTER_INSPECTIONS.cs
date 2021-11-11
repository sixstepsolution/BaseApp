using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public partial class MASTER_INSPECTIONS : BaseModel
    {
        //public MASTER_INSPECTIONS()
        //{
            //WL_APPLICATIONFORM = new HashSet<WL_APPLICATIONFORM>();
        //}
        [Key]
        public int INS_ID { get; set; }        
        public string INSPECTION_NAME { get; set; }
        public string INSPECTION_TYPE { get; set; }
        public DateTime? CREATED_ON { get; set; }
        //public virtual ICollection<WL_APPLICATIONFORM> WL_APPLICATIONFORM { get; set; }
    }
}