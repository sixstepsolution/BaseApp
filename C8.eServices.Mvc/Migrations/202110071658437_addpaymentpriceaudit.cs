namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addpaymentpriceaudit : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.APPLICATION_PAYMENT_PRICE_AUDIT",
                c => new
                    {
                        AUDIT_ID = c.Int(nullable: false, identity: true),
                        ACTION = c.String(),
                        AP_ID = c.Int(),
                        APPLICATION_PRICE = c.Decimal(precision: 18, scale: 2),
                        CREATED_BY = c.String(),
                        MODIFIED_BY = c.String(),
                        CREATED_DATE = c.DateTime(),
                        MODIFIED_DATE = c.DateTime(),
                    })
                .PrimaryKey(t => t.AUDIT_ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.APPLICATION_PAYMENT_PRICE_AUDIT");
        }
    }
}
