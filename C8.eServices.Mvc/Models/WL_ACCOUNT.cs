using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public class WL_ACCOUNT : BaseModel
    {
        public WL_ACCOUNT()
        {
            WL_ACCO_CONTACT = new HashSet<WL_ACCO_CONTACT>();
        }

        
        public int ACCOUNT_ID { get; set; }

        [Required]
        public String ACCOUNT_NUMBER { get; set; }

        [StringLength(200)]
        [Required]
        public string TYPE_USER { get; set; }

        public int COMPANY_ID { get; set; }

        [StringLength(400)]
        [Required]
        public string COMPANY_NAME { get; set; }

        [StringLength(300)]
        [Required]
        public string COMPANY_FULL_NAME { get; set; }

        [StringLength(200)]
        public string COMPANY_REGISTRATION_NUMBER { get; set; }

       
        public DateTime? TRADE_LICENSE_EXPIRE_DATE { get; set; }

       
        public string TRADE_LICENSE_FILE { get; set; }

        [StringLength(200)]
        [Required]
        public string CONTACT_PERSON_FIRST_NAME { get; set; }

        [StringLength(200)]
        [Required]
        public string CONTACT_PERSON_LAST_NAME { get; set; }

        [StringLength(200)]
        [Required]
        public string DESIGNATION { get; set; }

        [StringLength(100)]
        public string TELEPHONE_NUMBER { get; set; }

        [StringLength(20)]
        [Required]
        public string MOBILE { get; set; }

        [StringLength(300)]
        [Required]
        public string EMAIL { get; set; }

        [StringLength(20)]
        public string FAX { get; set; }

        [Required]
        [StringLength(300)]
        public string STREET_NAME { get; set; }

        [Required]
        [StringLength(200)]
        public string CITY { get; set; }


        [Required]
        [StringLength(200)]
        public string PROVINCE { get; set; }

         [Required]
        [StringLength(100)]
        public string COUNTRY { get; set; }
        

         [Required]
        [StringLength(50)]
        public string POST_CODE { get; set; }


         public string REGISTRATION_CERTIFICATE_NAME { get; set; }
         public string TAX_CERTIFICATE_NAME { get; set; }

        [StringLength(5)]
        public string IS_ACTIVE { get; set; }
        
      
        public string COMMENTS { get; set; }

         [Required]
        public int STATUS_ID { get; set; }

        public int CREATED_BY { get; set; }

        public DateTime CREATED_DATE { get; set; }

        public int? MODIFIED_BY { get; set; }

        public DateTime? MODIFIED_DATE { get; set; }   
        
        [Required]
        public string PASSWORD { get; set; }

        [StringLength(15)]
        public string IDENTIFICATION_NUMBER { get; set; }

        [StringLength(10)]
        public string GENDER { get; set; }
        
        public string SUBURB { get; set; }    

        [ForeignKey("STATUS_ID")]
        public virtual MASTER_STATUS_TYPES MASTER_STATUS_TYPES { get; set; }
        public virtual ICollection<WL_ACCO_CONTACT> WL_ACCO_CONTACT { get; set; }

    }
}