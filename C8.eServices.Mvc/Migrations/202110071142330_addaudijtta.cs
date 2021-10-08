namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addaudijtta : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.WL_APPLICATIONFORM_AUDIT",
                c => new
                {
                    AUDIT_ID = c.Int(nullable: false, identity: true),
                    APPLICATION_NUMBER = c.String(maxLength: 100),
                    APP_ID = c.Int(),
                    COMPANY_ID = c.Int(),
                    PROPERTYOWNER_ACCOUNT_NO = c.String(maxLength: 50),
                    PROPERTYOWNER_NAME = c.String(maxLength: 150),
                    PROPERTYOWNER_SURNAME = c.String(maxLength: 100),
                    PROPERTYOWNER_CONTACTNO = c.String(maxLength: 15),
                    PROPERTYOWNER_MOBILENO = c.String(maxLength: 10),
                    PROPERTYOWNER_EMAIL = c.String(maxLength: 150),
                    CONSULTANT_NO = c.String(maxLength: 50),
                    CONSULTANT_COMPANYNAME = c.String(maxLength: 150),
                    CONSULTANT_NAME = c.String(maxLength: 150),
                    CONSULTANT_SURNAME = c.String(maxLength: 100),
                    CONSULTANT_CONTACTNO = c.String(maxLength: 15),
                    CONSULTANT_MOBILENO = c.String(maxLength: 10),
                    CONSULTANT_EMAIL = c.String(maxLength: 150),
                    CONSULTANT_ADDRESS = c.String(),
                    CONTRACTOR_NAME = c.String(maxLength: 150),
                    CONTRACTOR_SURNAME = c.String(maxLength: 150),
                    CONTRACTOR_CONTACTNO = c.String(maxLength: 15),
                    CONTRACTOR_MOBILENO = c.String(maxLength: 10),
                    CONTRACTOR_EMAIL = c.String(maxLength: 150),
                    CONTRACTOR_ADDRESS = c.String(),
                    WAYLEAVE_ATTENTION = c.String(maxLength: 10),
                    SERVICE_TYPE = c.Int(),
                    SERVICE_SUB_TYPE = c.Int(),
                    STAGE_TYPE = c.Int(),
                    MAP_SIZE = c.String(maxLength: 20),
                    GPS_START_LATITUDE = c.String(maxLength: 50),
                    GPS_START_LONGITUDE = c.String(maxLength: 50),
                    GPS_END_LATITUDE = c.String(maxLength: 50),
                    GPS_END_LONGITUDE = c.String(maxLength: 50),
                    GPS_START_ADDRESS = c.String(),
                    GPS_END_ADDRESS = c.String(),
                    PROJECT_NUMBER = c.String(maxLength: 50),
                    PROJECT_NAME = c.String(maxLength: 250),
                    APPLYING_ON_BEHALF = c.String(maxLength: 150),
                    PROJECT_DESCRIPTION = c.String(),
                    ROAD_NUMBER = c.String(maxLength: 50),
                    REGION_OR_AREA = c.String(maxLength: 50),
                    AREA_DESCRIPTION = c.String(),
                    CONTACT_PERSON_FIRSTNAME = c.String(maxLength: 250),
                    CONTACT_PERSON_LASTNAME = c.String(maxLength: 250),
                    CONTACT_PERSON_REGISTRATION_NO = c.String(maxLength: 50),
                    CONTACT_PERSON_CONTACTNO = c.String(maxLength: 15),
                    COVER_LETTER = c.String(maxLength: 250),
                    STATUS_ID = c.Int(nullable: false),
                    APPLICATION_STEP_NO = c.String(maxLength: 10),
                    APPLICATION_STEP_DESCRIPTION = c.String(maxLength: 250),
                    APPLICATION_COMMENTS = c.String(),
                    APPLICATION_DATE = c.DateTime(),
                    STARTING_DATE = c.DateTime(),
                    COMPLETION_DATE = c.DateTime(),
                    DRAWING_NUMBER = c.Int(),
                    TYPE_OF_ROADCROSSING = c.String(maxLength: 100),
                    TYPE_OF_ROADCROSSING1 = c.String(maxLength: 100),
                    TYPE_OF_ROADCROSSING2 = c.String(maxLength: 100),
                    EXCAVATION_LENGTH = c.Decimal(precision: 18, scale: 2),
                    RIDING_SURFACE = c.Decimal(precision: 18, scale: 2),
                    KERBS = c.Decimal(precision: 18, scale: 2),
                    ASPH_FOOTWAY = c.Decimal(precision: 18, scale: 2),
                    INTERL_BLOCK = c.Decimal(precision: 18, scale: 2),
                    UNPAVED_FOOTWAYS = c.Decimal(precision: 18, scale: 2),
                    APPLICATION_GENERATION_DATE = c.DateTime(),
                    APPLICATION_DEADLINE_DATE = c.DateTime(),
                    IS_ACTIVE = c.String(maxLength: 5),
                    INSPECTION_STATUS = c.String(),
                    PRE_INSPECTION_STATUS = c.String(),
                    INSPECTION_DATE = c.DateTime(),
                    PAYMENT_RECEIPT_NO = c.String(),
                    PAYMENT_STATUS = c.String(),
                    PAYMENT_MODE = c.String(),
                    PAYMENT_DESCRIPTION = c.String(),
                    SERVICE_TYPE_NEW = c.String(),
                    PAYMENT_DATE = c.String(),
                    IDENTIFICATION_NUMBER = c.String(maxLength: 15),
                    GENDER = c.String(maxLength: 10),
                    CREATED_BY = c.Int(nullable: false),
                    CREATED_DATE = c.DateTime(nullable: false),
                    MODIFIED_BY = c.Int(),
                    MODIFIED_DATE = c.DateTime(),
                })
                .PrimaryKey(t => t.AUDIT_ID);

            CreateIndex("dbo.WL_APPLICATIONFORM_AUDIT", "STATUS_ID");
            AddForeignKey("dbo.WL_APPLICATIONFORM_AUDIT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES", "STATUS_ID", cascadeDelete: true);
        }
        
        public override void Down()
        {
           
        }
    }
}
