namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class WL_APPLICATIONFORM : BaseModel
    {
        public WL_APPLICATIONFORM()
        {
            //WL_CONTACT_PERSONS = new HashSet<WL_CONTACT_PERSONS>();
            //WL_REGIONS = new HashSet<WL_REGIONS>();
            //WL_WORK_LOCATIONS = new HashSet<WL_WORK_LOCATIONS>();
            WL_SUPPORTING_DOCUMENTS = new HashSet<WL_SUPPORTING_DOCUMENTS>();
            WL_DECLARATIONS = new HashSet<WL_DECLARATIONS>();
            WL_DEPARTMENTS = new HashSet<WL_DEPARTMENTS>();
        }

        [Key]
        public int APP_ID { get; set; }

        [StringLength(100)]
        public string APPLICATION_NUMBER { get; set; }

        public int? COMPANY_ID { get; set; }

        [StringLength(50)]
        public string PROPERTYOWNER_ACCOUNT_NO { get; set; }

        [StringLength(150)]
        public string PROPERTYOWNER_NAME { get; set; }

        [StringLength(100)]
        public string PROPERTYOWNER_SURNAME { get; set; }

        [StringLength(15)]
        public string PROPERTYOWNER_CONTACTNO { get; set; }
        [StringLength(10)]
        public string PROPERTYOWNER_MOBILENO { get; set; }

        [StringLength(150)]
        public string PROPERTYOWNER_EMAIL { get; set; }

        [StringLength(50)]
        public string CONSULTANT_NO { get; set; }

        [StringLength(150)]
        public string CONSULTANT_COMPANYNAME { get; set; }

        [StringLength(150)]
        public string CONSULTANT_NAME { get; set; }

        [StringLength(100)]
        public string CONSULTANT_SURNAME { get; set; }

        [StringLength(15)]
        public string CONSULTANT_CONTACTNO { get; set; }
        [StringLength(10)]
        public string CONSULTANT_MOBILENO { get; set; }

        [StringLength(150)]
        public string CONSULTANT_EMAIL { get; set; }
        public string CONSULTANT_ADDRESS { get; set; }

        [StringLength(150)]
        public string CONTRACTOR_NAME { get; set; }
        [StringLength(150)]
        public string CONTRACTOR_SURNAME { get; set; }
        [StringLength(15)]
        public string CONTRACTOR_CONTACTNO { get; set; }
        [StringLength(10)]
        public string CONTRACTOR_MOBILENO { get; set; }
        [StringLength(150)]
        public string CONTRACTOR_EMAIL { get; set; }
        public string CONTRACTOR_ADDRESS { get; set; }




        [StringLength(10)]
        public string WAYLEAVE_ATTENTION { get; set; }

        
        public int? SERVICE_TYPE { get; set; }

        public int? SERVICE_SUB_TYPE { get; set; }

        public int? STAGE_TYPE { get; set; }

        [StringLength(20)]
        public string MAP_SIZE { get; set; }

        [StringLength(50)]
        public string GPS_START_LATITUDE { get; set; }

        [StringLength(50)]
        public string GPS_START_LONGITUDE { get; set; }

        [StringLength(50)]
        public string GPS_END_LATITUDE { get; set; }

        [StringLength(50)]
        public string GPS_END_LONGITUDE { get; set; }
        public string GPS_START_ADDRESS { get; set; }
        public string GPS_END_ADDRESS { get; set; }

        [StringLength(50)]
        public string PROJECT_NUMBER { get; set; }

        [StringLength(250)]
        public string PROJECT_NAME { get; set; }

        [StringLength(150)]
        public string APPLYING_ON_BEHALF { get; set; }

        public string PROJECT_DESCRIPTION { get; set; }

        [StringLength(50)]
        public string ROAD_NUMBER { get; set; }

        [StringLength(50)]
        public string REGION_OR_AREA { get; set; }

        public string AREA_DESCRIPTION { get; set; }

        [StringLength(250)]
        public string CONTACT_PERSON_FIRSTNAME { get; set; }

        [StringLength(250)]
        public string CONTACT_PERSON_LASTNAME { get; set; }

        [StringLength(50)]
        public string CONTACT_PERSON_REGISTRATION_NO { get; set; }

        [StringLength(15)]
        public string CONTACT_PERSON_CONTACTNO { get; set; }

        [StringLength(250)]
        public string COVER_LETTER { get; set; }

       [Required]
        public int STATUS_ID { get; set; }
        //public int INS_ID { get; set; }


        [StringLength(10)]
        public string APPLICATION_STEP_NO { get; set; }

        [StringLength(250)]
        public string APPLICATION_STEP_DESCRIPTION { get; set; } 
      
        public string APPLICATION_COMMENTS { get; set; }

        public DateTime? APPLICATION_DATE { get; set; }
        public DateTime? STARTING_DATE { get; set; }
        public DateTime? COMPLETION_DATE { get; set; }
        public int? DRAWING_NUMBER { get; set; }
        [StringLength(100)]
        public string TYPE_OF_ROADCROSSING { get; set; }
        [StringLength(100)]
        public string TYPE_OF_ROADCROSSING1 { get; set; }
        [StringLength(100)]
        public string TYPE_OF_ROADCROSSING2 { get; set; }

        public decimal? EXCAVATION_LENGTH { get; set; }
        public decimal? RIDING_SURFACE { get; set; }
        public decimal? KERBS { get; set; }
        public decimal? ASPH_FOOTWAY { get; set; }
        public decimal? INTERL_BLOCK { get; set; }
        public decimal? UNPAVED_FOOTWAYS { get; set; }
       
        public DateTime? APPLICATION_GENERATION_DATE { get; set; }

        public DateTime? APPLICATION_DEADLINE_DATE { get; set; }

        [StringLength(5)]
        public string IS_ACTIVE { get; set; }
        public string INSPECTION_STATUS { get; set; }
        public string PRE_INSPECTION_STATUS { get; set; }
        public DateTime? INSPECTION_DATE { get; set; }
        public string PAYMENT_RECEIPT_NO { get; set; }
        public string PAYMENT_STATUS { get; set; }
        public string PAYMENT_MODE { get; set; }
        public string PAYMENT_DESCRIPTION { get; set; }

        public string SERVICE_TYPE_NEW { get; set; }
        public string PAYMENT_DATE { get; set; }
        [StringLength(15)]
        public string IDENTIFICATION_NUMBER { get; set; }

        [StringLength(10)]
        public string IS_OVERDUE { get; set; }

        [StringLength(10)]
        public string GENDER { get; set; }

        public int CREATED_BY { get; set; }

        public DateTime CREATED_DATE { get; set; }

        public int? MODIFIED_BY { get; set; }

        public DateTime? MODIFIED_DATE { get; set; }

        //[ForeignKey("SERVICE_TYPE")]
        //public virtual MASTER_SERVICE_TYPES MASTER_SERVICE_TYPES { get; set; }

        //[ForeignKey("SERVICE_SUB_TYPE")]
        //public virtual MASTER_SERVICE_SUB_TYPES MASTER_SERVICE_SUB_TYPES { get; set; }

        [ForeignKey("STATUS_ID")]
        public virtual MASTER_STATUS_TYPES MASTER_STATUS_TYPES { get; set; }        

        //public virtual ICollection<WL_CONTACT_PERSONS> WL_CONTACT_PERSONS { get; set; }

        //public virtual ICollection<WL_REGIONS> WL_REGIONS { get; set; }

        //public virtual ICollection<WL_WORK_LOCATIONS> WL_WORK_LOCATIONS { get; set; }
        public virtual ICollection<WL_SUPPORTING_DOCUMENTS> WL_SUPPORTING_DOCUMENTS { get; set; }
        public virtual ICollection<WL_DECLARATIONS> WL_DECLARATIONS { get; set; }
        public virtual ICollection<WL_DEPARTMENTS> WL_DEPARTMENTS { get; set; }
        public virtual ICollection<WL_INSPECTION_LIST> WL_INSPECTION_LIST { get; set; }


    }
}
