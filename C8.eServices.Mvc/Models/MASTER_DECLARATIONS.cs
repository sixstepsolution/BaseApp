using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace C8.eServices.Mvc.Models
{
    public class MASTER_DECLARATIONS : BaseModel
    {
       
        public int MD_ID { get; set; }
        
        public string DESCRIPTION { get; set; }        
        public DateTime? CREATED_ON { get; set; }
    }
}