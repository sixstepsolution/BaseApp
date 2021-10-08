namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addwayleaveaccountaudit : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.WL_ACCOUNT_AUDIT",
                c => new
                    {
                        AUDIT_ID = c.Int(nullable: false, identity: true),
                        ACTION = c.String(maxLength: 200),
                        ACCOUNT_NUMBER = c.String(),
                        ACCOUNT_ID = c.Int(),
                        TYPE_USER = c.String(maxLength: 200),
                        COMPANY_ID = c.Int(nullable: false),
                        COMPANY_NAME = c.String(maxLength: 400),
                        COMPANY_FULL_NAME = c.String(maxLength: 300),
                        COMPANY_REGISTRATION_NUMBER = c.String(maxLength: 200),
                        TRADE_LICENSE_EXPIRE_DATE = c.DateTime(),
                        TRADE_LICENSE_FILE = c.String(),
                        CONTACT_PERSON_FIRST_NAME = c.String(maxLength: 200),
                        CONTACT_PERSON_LAST_NAME = c.String(maxLength: 200),
                        DESIGNATION = c.String(maxLength: 200),
                        TELEPHONE_NUMBER = c.String(maxLength: 100),
                        MOBILE = c.String(maxLength: 20),
                        EMAIL = c.String(maxLength: 300),
                        FAX = c.String(maxLength: 20),
                        STREET_NAME = c.String(maxLength: 300),
                        CITY = c.String(maxLength: 200),
                        PROVINCE = c.String(maxLength: 200),
                        COUNTRY = c.String(maxLength: 100),
                        POST_CODE = c.String(maxLength: 50),
                        REGISTRATION_CERTIFICATE_NAME = c.String(),
                        TAX_CERTIFICATE_NAME = c.String(),
                        IS_ACTIVE = c.String(maxLength: 5),
                        COMMENTS = c.String(),
                        STATUS_ID = c.Int(nullable: false),
                        CREATED_BY = c.Int(nullable: false),
                        CREATED_DATE = c.DateTime(nullable: false),
                        MODIFIED_BY = c.Int(),
                        MODIFIED_DATE = c.DateTime(),
                        PASSWORD = c.String(),
                        IDENTIFICATION_NUMBER = c.String(maxLength: 15),
                        GENDER = c.String(maxLength: 10),
                        SUBURB = c.String(),
                    })
                .PrimaryKey(t => t.AUDIT_ID)
                .ForeignKey("dbo.MASTER_STATUS_TYPES", t => t.STATUS_ID, cascadeDelete: true)
                .Index(t => t.STATUS_ID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.WL_ACCOUNT_AUDIT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES");
            DropIndex("dbo.WL_ACCOUNT_AUDIT", new[] { "STATUS_ID" });
            DropTable("dbo.WL_ACCOUNT_AUDIT");
        }
    }
}
