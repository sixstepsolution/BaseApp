namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.MASTER_CUSTOMERCARE_CENTERS_REGIONS",
                c => new
                    {
                        CCC_ID = c.Int(nullable: false, identity: true),
                        CCC_NAME = c.String(),
                        CCC_CODE = c.String(),
                        ROAD_NUMBER = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.CCC_ID);
            
            CreateTable(
                "dbo.MASTER_DEPARTMENTS",
                c => new
                    {
                        DPT_ID = c.Int(nullable: false, identity: true),
                        DEPARTMENT_NAME = c.String(maxLength: 250),
                        SERVICE_ID = c.Int(),
                        CREATED_ON = c.DateTime(),
                    })
                .PrimaryKey(t => t.DPT_ID)
                .ForeignKey("dbo.MASTER_SERVICE_TYPES", t => t.SERVICE_ID)
                .Index(t => t.SERVICE_ID);
            
            CreateTable(
                "dbo.MASTER_SERVICE_TYPES",
                c => new
                    {
                        SERVICE_ID = c.Int(nullable: false, identity: true),
                        DESCRIPTION = c.String(maxLength: 250),
                        CREATED_ON = c.DateTime(),
                    })
                .PrimaryKey(t => t.SERVICE_ID);
            
            CreateTable(
                "dbo.MASTER_SERVICE_SUB_TYPES",
                c => new
                    {
                        SUB_ID = c.Int(nullable: false, identity: true),
                        DESCRIPTION = c.String(maxLength: 250),
                        SERVICE_ID = c.Int(),
                        CREATED_ON = c.DateTime(),
                    })
                .PrimaryKey(t => t.SUB_ID)
                .ForeignKey("dbo.MASTER_SERVICE_TYPES", t => t.SERVICE_ID)
                .Index(t => t.SERVICE_ID);
            
            CreateTable(
                "dbo.WL_APPLICATIONFORM",
                c => new
                    {
                        APP_ID = c.Int(nullable: false, identity: true),
                        APPLICATION_NUMBER = c.String(maxLength: 100),
                        COMPANY_ID = c.Int(),
                        PROPERTYOWNER_ACCOUNT_NO = c.String(maxLength: 50),
                        PROPERTYOWNER_NAME = c.String(maxLength: 150),
                        PROPERTYOWNER_SURNAME = c.String(maxLength: 100),
                        PROPERTYOWNER_CONTACTNO = c.String(maxLength: 15),
                        PROPERTYOWNER_EMAIL = c.String(maxLength: 150),
                        CONSULTANT_NO = c.String(maxLength: 50),
                        CONSULTANT_COMPANYNAME = c.String(maxLength: 150),
                        CONSULTANT_NAME = c.String(maxLength: 150),
                        CONSULTANT_SURNAME = c.String(maxLength: 100),
                        CONSULTANT_CONTACTNO = c.String(maxLength: 15),
                        CONSULTANT_EMAIL = c.String(maxLength: 150),
                        WAYLEAVE_ATTENTION = c.String(maxLength: 10),
                        SERVICE_TYPE = c.Int(nullable: false),
                        SERVICE_SUB_TYPE = c.Int(nullable: false),
                        STAGE_TYPE = c.Int(nullable: false),
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
                        CREATED_BY = c.Int(nullable: false),
                        CREATED_DATE = c.DateTime(nullable: false),
                        MODIFIED_BY = c.Int(),
                        MODIFIED_DATE = c.DateTime(),
                    })
                .PrimaryKey(t => t.APP_ID)
                .ForeignKey("dbo.MASTER_SERVICE_SUB_TYPES", t => t.SERVICE_SUB_TYPE, cascadeDelete: true)
                .ForeignKey("dbo.MASTER_SERVICE_TYPES", t => t.SERVICE_TYPE, cascadeDelete: true)
                .ForeignKey("dbo.MASTER_STATUS_TYPES", t => t.STATUS_ID, cascadeDelete: true)
                .Index(t => t.SERVICE_TYPE)
                .Index(t => t.SERVICE_SUB_TYPE)
                .Index(t => t.STATUS_ID);
            
            CreateTable(
                "dbo.MASTER_STATUS_TYPES",
                c => new
                    {
                        STATUS_ID = c.Int(nullable: false, identity: true),
                        DESCRIPTION = c.String(maxLength: 150),
                        TABLE_NAME = c.String(),
                        SEQUENCE_ID = c.Int(nullable: false),
                        CREATED_ON = c.DateTime(),
                    })
                .PrimaryKey(t => t.STATUS_ID);
            
            CreateTable(
                "dbo.WL_ACCOUNT",
                c => new
                    {
                        ACCOUNT_ID = c.Int(nullable: false, identity: true),
                        ACCOUNT_NUMBER = c.String(nullable: false),
                        TYPE_USER = c.String(nullable: false, maxLength: 200),
                        COMPANY_ID = c.Int(nullable: false),
                        COMPANY_NAME = c.String(nullable: false, maxLength: 400),
                        COMPANY_FULL_NAME = c.String(nullable: false, maxLength: 300),
                        COMPANY_REGISTRATION_NUMBER = c.String(maxLength: 200),
                        TRADE_LICENSE_EXPIRE_DATE = c.DateTime(),
                        TRADE_LICENSE_FILE = c.String(),
                        CONTACT_PERSON_FIRST_NAME = c.String(nullable: false, maxLength: 200),
                        CONTACT_PERSON_LAST_NAME = c.String(nullable: false, maxLength: 200),
                        DESIGNATION = c.String(nullable: false, maxLength: 200),
                        TELEPHONE_NUMBER = c.String(maxLength: 100),
                        MOBILE = c.String(nullable: false, maxLength: 20),
                        EMAIL = c.String(nullable: false, maxLength: 300),
                        FAX = c.String(maxLength: 20),
                        STREET_NAME = c.String(nullable: false, maxLength: 300),
                        CITY = c.String(nullable: false, maxLength: 200),
                        PROVINCE = c.String(nullable: false, maxLength: 200),
                        COUNTRY = c.String(nullable: false, maxLength: 100),
                        POST_CODE = c.String(nullable: false, maxLength: 50),
                        REGISTRATION_CERTIFICATE_NAME = c.String(),
                        TAX_CERTIFICATE_NAME = c.String(),
                        IS_ACTIVE = c.String(maxLength: 5),
                        COMMENTS = c.String(),
                        STATUS_ID = c.Int(nullable: false),
                        CREATED_BY = c.Int(nullable: false),
                        CREATED_DATE = c.DateTime(nullable: false),
                        MODIFIED_BY = c.Int(),
                        MODIFIED_DATE = c.DateTime(),
                        PASSWORD = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.ACCOUNT_ID)
                .ForeignKey("dbo.MASTER_STATUS_TYPES", t => t.STATUS_ID, cascadeDelete: true)
                .Index(t => t.STATUS_ID);
            
            CreateTable(
                "dbo.WL_ACCO_CONTACT",
                c => new
                    {
                        CONTACT_ID = c.Int(nullable: false, identity: true),
                        ACCOUNT_ID = c.Int(nullable: false),
                        FIRST_NAME = c.String(nullable: false, maxLength: 200),
                        SURNAME = c.String(nullable: false, maxLength: 200),
                        MOBILE = c.String(nullable: false, maxLength: 20),
                        EMAIL = c.String(nullable: false, maxLength: 400),
                        DESIGNIATION = c.String(nullable: false, maxLength: 400),
                        CREATED_DATE = c.DateTime(nullable: false),
                        CREATED_BY = c.Int(nullable: false),
                        MODIFIED_DATE = c.DateTime(),
                        MODIFIED_BY = c.Int(),
                    })
                .PrimaryKey(t => t.CONTACT_ID)
                .ForeignKey("dbo.WL_ACCOUNT", t => t.ACCOUNT_ID, cascadeDelete: true)
                .Index(t => t.ACCOUNT_ID);
            
            CreateTable(
                "dbo.WL_CONTACT_PERSONS",
                c => new
                    {
                        CID = c.Int(nullable: false, identity: true),
                        FIRST_NAME = c.String(nullable: false, maxLength: 150),
                        LAST_NAME = c.String(maxLength: 150),
                        REGISTRATION_NUMBER = c.String(maxLength: 150),
                        CONTACT_NUMBER = c.String(maxLength: 15),
                        APP_ID = c.Int(nullable: false),
                        CREATED_DATE = c.DateTime(nullable: false),
                        CREATED_BY = c.Int(nullable: false),
                        MODIFIED_DATE = c.DateTime(),
                        MODIFIED_BY = c.Int(),
                    })
                .PrimaryKey(t => t.CID)
                .ForeignKey("dbo.WL_APPLICATIONFORM", t => t.APP_ID, cascadeDelete: true)
                .Index(t => t.APP_ID);
            
            CreateTable(
                "dbo.WL_DEPARTMENTS",
                c => new
                    {
                        DEPARTMENT_ID = c.Int(nullable: false, identity: true),
                        DEPARTMENT_NAME = c.String(maxLength: 250),
                        SERVICE_ID = c.Int(),
                        APP_ID = c.Int(),
                        DPT_ID = c.Int(),
                        CREATED_ON = c.DateTime(),
                        APPROVE_OR_REJECT_COMMENTS = c.String(),
                        APPLICATION_STATUS = c.String(),
                    })
                .PrimaryKey(t => t.DEPARTMENT_ID)
                .ForeignKey("dbo.MASTER_DEPARTMENTS", t => t.DPT_ID)
                .ForeignKey("dbo.MASTER_SERVICE_TYPES", t => t.SERVICE_ID)
                .ForeignKey("dbo.WL_APPLICATIONFORM", t => t.APP_ID)
                .Index(t => t.SERVICE_ID)
                .Index(t => t.APP_ID)
                .Index(t => t.DPT_ID);
            
            CreateTable(
                "dbo.WL_INSPECTION_LIST",
                c => new
                    {
                        INSPECTION_ID = c.Int(nullable: false, identity: true),
                        INS_ID = c.Int(nullable: false),
                        INSPECTION_NAME = c.String(nullable: false),
                        INSPECTION_TYPE = c.String(),
                        CREATED_ON = c.DateTime(),
                        APP_ID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.INSPECTION_ID)
                .ForeignKey("dbo.WL_APPLICATIONFORM", t => t.APP_ID, cascadeDelete: true)
                .Index(t => t.APP_ID);
            
            CreateTable(
                "dbo.WL_REGIONS",
                c => new
                    {
                        RID = c.Int(nullable: false, identity: true),
                        REGION_ID = c.Int(nullable: false),
                        REGION_CODE = c.String(nullable: false, maxLength: 10),
                        REGION_NAME = c.String(maxLength: 150),
                        ROAD_NUMBER = c.String(maxLength: 50),
                        APP_ID = c.Int(nullable: false),
                        CREATED_DATE = c.DateTime(),
                        CREATED_BY = c.Int(nullable: false),
                        MODIFIED_DATE = c.DateTime(),
                        MODIFIED_BY = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.RID)
                .ForeignKey("dbo.WL_APPLICATIONFORM", t => t.APP_ID, cascadeDelete: true)
                .Index(t => t.APP_ID);
            
            CreateTable(
                "dbo.WL_SUPPORTING_DOCUMENTS",
                c => new
                    {
                        WSD_ID = c.Int(nullable: false, identity: true),
                        DOCUMENT_TYPE = c.String(maxLength: 250),
                        DOCUMENT_NAME = c.String(maxLength: 250),
                        APP_ID = c.Int(nullable: false),
                        SD_ID = c.Int(nullable: false),
                        CREATED_DATE = c.DateTime(nullable: false),
                        CREATED_BY = c.Int(nullable: false),
                        MODIFIED_DATE = c.DateTime(),
                        MODIFIED_BY = c.Int(),
                    })
                .PrimaryKey(t => t.WSD_ID)
                .ForeignKey("dbo.WL_APPLICATIONFORM", t => t.APP_ID, cascadeDelete: true)
                .Index(t => t.APP_ID);
            
            CreateTable(
                "dbo.WL_WORK_LOCATIONS",
                c => new
                    {
                        WL_ID = c.Int(nullable: false, identity: true),
                        GPS_START_LATITUDE = c.String(maxLength: 50),
                        GPS_START_LONGITUDE = c.String(maxLength: 50),
                        GPS_END_LATITUDE = c.String(maxLength: 50),
                        GPS_END_LONGITUDE = c.String(maxLength: 50),
                        WORK_LOCATION_TYPE = c.String(maxLength: 200),
                        GPS_START_ADDRESS = c.String(),
                        GPS_END_ADDRESS = c.String(),
                        APP_ID = c.Int(nullable: false),
                        CREATED_DATE = c.DateTime(nullable: false),
                        CREATED_BY = c.Int(nullable: false),
                        MODIFIED_DATE = c.DateTime(),
                        MODIFIED_BY = c.Int(),
                    })
                .PrimaryKey(t => t.WL_ID)
                .ForeignKey("dbo.WL_APPLICATIONFORM", t => t.APP_ID, cascadeDelete: true)
                .Index(t => t.APP_ID);
            
            CreateTable(
                "dbo.MASTER_INSPECTIONS",
                c => new
                    {
                        INS_ID = c.Int(nullable: false, identity: true),
                        INSPECTION_NAME = c.String(),
                        INSPECTION_TYPE = c.String(),
                        CREATED_ON = c.DateTime(),
                    })
                .PrimaryKey(t => t.INS_ID);
            
            CreateTable(
                "dbo.MASTER_REGIONS",
                c => new
                    {
                        REGION_ID = c.Int(nullable: false, identity: true),
                        REGION_CODE = c.String(nullable: false, maxLength: 10),
                        REGION_NAME = c.String(maxLength: 150),
                        ROAD_NUMBER = c.String(maxLength: 50),
                        CREATED_ON = c.DateTime(),
                    })
                .PrimaryKey(t => t.REGION_ID);
            
            CreateTable(
                "dbo.MASTER_ROLES",
                c => new
                    {
                        ROLE_ID = c.Int(nullable: false, identity: true),
                        DESCRIPTION = c.String(maxLength: 250),
                        CREATED_ON = c.DateTime(),
                    })
                .PrimaryKey(t => t.ROLE_ID);
            
            CreateTable(
                "dbo.MASTER_SERVICE_DOCUMENTS",
                c => new
                    {
                        SD_ID = c.Int(nullable: false, identity: true),
                        DESCRIPTION = c.String(maxLength: 250),
                        SERVICE_ID = c.Int(),
                        CREATED_ON = c.DateTime(),
                    })
                .PrimaryKey(t => t.SD_ID)
                .ForeignKey("dbo.MASTER_SERVICE_TYPES", t => t.SERVICE_ID)
                .Index(t => t.SERVICE_ID);
            
            CreateTable(
                "dbo.Roles",
                c => new
                    {
                        role_id = c.Int(nullable: false, identity: true),
                        role_name = c.String(nullable: false),
                        userid = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.role_id)
                .ForeignKey("dbo.Users", t => t.userid, cascadeDelete: true)
                .Index(t => t.userid);
            
            CreateTable(
                "dbo.Users",
                c => new
                    {
                        userid = c.Int(nullable: false, identity: true),
                        username = c.String(nullable: false),
                        password = c.String(nullable: false),
                        deptartmentname = c.String(),
                    })
                .PrimaryKey(t => t.userid);
            
            CreateTable(
                "dbo.Students",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 200),
                        Password = c.String(nullable: false, maxLength: 100),
                        Price = c.Decimal(nullable: false, precision: 18, scale: 2),
                        CreatedDate = c.DateTime(nullable: false),
                        Country = c.String(nullable: false),
                        State = c.String(nullable: false, maxLength: 100),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.tblEmployee",
                c => new
                    {
                        EmployeeID = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 20),
                        City = c.String(nullable: false, maxLength: 20),
                        Department = c.String(nullable: false, maxLength: 20),
                        Gender = c.String(nullable: false, maxLength: 6),
                    })
                .PrimaryKey(t => t.EmployeeID);
            
            CreateTable(
                "dbo.testMigration",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        name = c.String(maxLength: 100),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Roles", "userid", "dbo.Users");
            DropForeignKey("dbo.MASTER_SERVICE_DOCUMENTS", "SERVICE_ID", "dbo.MASTER_SERVICE_TYPES");
            DropForeignKey("dbo.MASTER_DEPARTMENTS", "SERVICE_ID", "dbo.MASTER_SERVICE_TYPES");
            DropForeignKey("dbo.WL_WORK_LOCATIONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_SUPPORTING_DOCUMENTS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_REGIONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_INSPECTION_LIST", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_DEPARTMENTS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_DEPARTMENTS", "SERVICE_ID", "dbo.MASTER_SERVICE_TYPES");
            DropForeignKey("dbo.WL_DEPARTMENTS", "DPT_ID", "dbo.MASTER_DEPARTMENTS");
            DropForeignKey("dbo.WL_CONTACT_PERSONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_APPLICATIONFORM", "STATUS_ID", "dbo.MASTER_STATUS_TYPES");
            DropForeignKey("dbo.WL_ACCO_CONTACT", "ACCOUNT_ID", "dbo.WL_ACCOUNT");
            DropForeignKey("dbo.WL_ACCOUNT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES");
            DropForeignKey("dbo.WL_APPLICATIONFORM", "SERVICE_TYPE", "dbo.MASTER_SERVICE_TYPES");
            DropForeignKey("dbo.WL_APPLICATIONFORM", "SERVICE_SUB_TYPE", "dbo.MASTER_SERVICE_SUB_TYPES");
            DropForeignKey("dbo.MASTER_SERVICE_SUB_TYPES", "SERVICE_ID", "dbo.MASTER_SERVICE_TYPES");
            DropIndex("dbo.Roles", new[] { "userid" });
            DropIndex("dbo.MASTER_SERVICE_DOCUMENTS", new[] { "SERVICE_ID" });
            DropIndex("dbo.WL_WORK_LOCATIONS", new[] { "APP_ID" });
            DropIndex("dbo.WL_SUPPORTING_DOCUMENTS", new[] { "APP_ID" });
            DropIndex("dbo.WL_REGIONS", new[] { "APP_ID" });
            DropIndex("dbo.WL_INSPECTION_LIST", new[] { "APP_ID" });
            DropIndex("dbo.WL_DEPARTMENTS", new[] { "DPT_ID" });
            DropIndex("dbo.WL_DEPARTMENTS", new[] { "APP_ID" });
            DropIndex("dbo.WL_DEPARTMENTS", new[] { "SERVICE_ID" });
            DropIndex("dbo.WL_CONTACT_PERSONS", new[] { "APP_ID" });
            DropIndex("dbo.WL_ACCO_CONTACT", new[] { "ACCOUNT_ID" });
            DropIndex("dbo.WL_ACCOUNT", new[] { "STATUS_ID" });
            DropIndex("dbo.WL_APPLICATIONFORM", new[] { "STATUS_ID" });
            DropIndex("dbo.WL_APPLICATIONFORM", new[] { "SERVICE_SUB_TYPE" });
            DropIndex("dbo.WL_APPLICATIONFORM", new[] { "SERVICE_TYPE" });
            DropIndex("dbo.MASTER_SERVICE_SUB_TYPES", new[] { "SERVICE_ID" });
            DropIndex("dbo.MASTER_DEPARTMENTS", new[] { "SERVICE_ID" });
            DropTable("dbo.testMigration");
            DropTable("dbo.tblEmployee");
            DropTable("dbo.Students");
            DropTable("dbo.Users");
            DropTable("dbo.Roles");
            DropTable("dbo.MASTER_SERVICE_DOCUMENTS");
            DropTable("dbo.MASTER_ROLES");
            DropTable("dbo.MASTER_REGIONS");
            DropTable("dbo.MASTER_INSPECTIONS");
            DropTable("dbo.WL_WORK_LOCATIONS");
            DropTable("dbo.WL_SUPPORTING_DOCUMENTS");
            DropTable("dbo.WL_REGIONS");
            DropTable("dbo.WL_INSPECTION_LIST");
            DropTable("dbo.WL_DEPARTMENTS");
            DropTable("dbo.WL_CONTACT_PERSONS");
            DropTable("dbo.WL_ACCO_CONTACT");
            DropTable("dbo.WL_ACCOUNT");
            DropTable("dbo.MASTER_STATUS_TYPES");
            DropTable("dbo.WL_APPLICATIONFORM");
            DropTable("dbo.MASTER_SERVICE_SUB_TYPES");
            DropTable("dbo.MASTER_SERVICE_TYPES");
            DropTable("dbo.MASTER_DEPARTMENTS");
            DropTable("dbo.MASTER_CUSTOMERCARE_CENTERS_REGIONS");
        }
    }
}
