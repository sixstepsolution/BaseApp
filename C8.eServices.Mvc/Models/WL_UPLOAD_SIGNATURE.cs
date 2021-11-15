using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public class WL_UPLOAD_SIGNATURE : BaseModel
    {

        
        public int SIGN_ID { get; set; }
        
        public String DOCUMENT_NAME { get; set; }
        [StringLength(10)]
        public String IS_ACTIVE { get; set; }

        public DateTime? CREATED_DATE { get; set; }

        public DateTime? MODIFIED_DATE { get; set; }
    }
}