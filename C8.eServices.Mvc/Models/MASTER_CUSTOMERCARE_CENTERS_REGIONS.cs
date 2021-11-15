using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace C8.eServices.Mvc.Models
{
    public partial class MASTER_CUSTOMERCARE_CENTERS_REGIONS : BaseModel
    {
        
        public int CCC_ID { get; set; }                
        public string CCC_NAME { get; set; }
        public string CCC_CODE { get; set; }
        [StringLength(50)]
        public string ROAD_NUMBER { get; set; }       
    }
}