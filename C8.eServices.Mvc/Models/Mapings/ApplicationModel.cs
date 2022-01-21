using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class ApplicationModel
    {
        public int APP_ID { get; set; }
        public string APPLICATION_NUMBER { get; set; }

        public int? COMPANY_ID { get; set; }
        public string PROPERTYOWNER_ACCOUNT_NO { get; set; }
        public string PROPERTYOWNER_NAME { get; set; }
        public string PROPERTYOWNER_SURNAME { get; set; }
        public string PROPERTYOWNER_CONTACTNO { get; set; }
        public string PROPERTYOWNER_MOBILENO { get; set; }
        public string PROPERTYOWNER_EMAIL { get; set; }
        public string CONSULTANT_NO { get; set; }
        public string CONSULTANT_COMPANYNAME { get; set; }
        public string CONSULTANT_NAME { get; set; }
        public string CONSULTANT_SURNAME { get; set; }
        public string CONSULTANT_CONTACTNO { get; set; }
        public string CONSULTANT_MOBILENO { get; set; }
        public string CONSULTANT_EMAIL { get; set; }
        public string CONSULTANT_ADDRESS { get; set; }

        public string CONTRACTOR_NAME { get; set; }
        public string CONTRACTOR_SURNAME { get; set; }
        public string CONTRACTOR_CONTACTNO { get; set; }
        public string CONTRACTOR_MOBILENO { get; set; }
        public string CONTRACTOR_EMAIL { get; set; }
        public string CONTRACTOR_ADDRESS { get; set; }



        public string WAYLEAVE_ATTENTION { get; set; }
        public int SERVICE_TYPE { get; set; }
        public int SERVICE_SUB_TYPE { get; set; }
        public int STAGE_TYPE { get; set; }
        public string MAP_SIZE { get; set; }
        public string GPS_START_LATITUDE { get; set; }
        public string GPS_START_LONGITUDE { get; set; }
        public string GPS_END_LATITUDE { get; set; }
        public string GPS_END_LONGITUDE { get; set; }
        public string GPS_START_ADDRESS { get; set; }
        public string GPS_END_ADDRESS { get; set; }
        public string PROJECT_NUMBER { get; set; }
        public string PROJECT_NAME { get; set; }
        public string APPLYING_ON_BEHALF { get; set; }

        public string PROJECT_DESCRIPTION { get; set; }
        public string ROAD_NUMBER { get; set; }
        public string REGION_OR_AREA { get; set; }

        public string AREA_DESCRIPTION { get; set; }
        public string CONTACT_PERSON_FIRSTNAME { get; set; }
        public string CONTACT_PERSON_LASTNAME { get; set; }
        public string CONTACT_PERSON_REGISTRATION_NO { get; set; }
        public string CONTACT_PERSON_CONTACTNO { get; set; }
        public string COVER_LETTER { get; set; }
        public int STATUS_ID { get; set; }
        public string APPLICATION_STEP_NO { get; set; }
        public string APPLICATION_STEP_DESCRIPTION { get; set; }
        public string APPLICATION_COMMENTS { get; set; }
        public string APPLICATION_DATE { get; set; }
        public string STARTING_DATE { get; set; }
        public string COMPLETION_DATE { get; set; }
        public string OPEN_TRENCH_COMMENT { get; set; }
        public int? DRAWING_NUMBER { get; set; }

        public string TYPE_OF_ROADCROSSING { get; set; }
        public string TYPE_OF_ROADCROSSING1 { get; set; }
        public string TYPE_OF_ROADCROSSING2 { get; set; }
        public decimal? EXCAVATION_LENGTH { get; set; }
        public decimal? RIDING_SURFACE { get; set; }
        public decimal? KERBS { get; set; }
        public decimal? ASPH_FOOTWAY { get; set; }
        public decimal? INTERL_BLOCK { get; set; }
        public decimal? UNPAVED_FOOTWAYS { get; set; }

        public DateTime? APPLICATION_GENERATION_DATE { get; set; }
        public string IDENTIFICATION_NUMBER { get; set; }
        public string SERVICE_TYPE_NEW { get; set; }
        public string GENDER { get; set; }
        public DateTime? APPLICATION_DEADLINE_DATE { get; set; }
        public string IS_ACTIVE { get; set; }
        public string INSPECTION_STATUS { get; set; }
        public DateTime? INSPECTION_DATE { get; set; }
        public int CREATED_BY { get; set; }

        public DateTime CREATED_DATE { get; set; }

        public int? MODIFIED_BY { get; set; }

        public DateTime? MODIFIED_DATE { get; set; }

        public List<WLApplicationContactPersonModel> WL_CONTACT_PERSONS { get; set; }

        public List<WLregionsModel> WL_REGIONS { get; set; }

        public List<WLworklocationModel> WL_WORK_LOCATIONS { get; set; }
        public List<WLApplicationDocumentsModel> WL_SUPPORTING_DOCUMENTS { get; set; }
        public List<MasterInputCalimsModel> departments { get; set; }

    }
}