namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingApplicationPrice : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.APPLICATION_PAYMENT_PRICE",
                c => new
                    {
                        AP_ID = c.Int(nullable: false, identity: true),
                        APPLICATION_PRICE = c.Decimal(precision: 18, scale: 2),
                        CREATED_DATE = c.DateTime(),
                        MODIFIED_DATE = c.DateTime(),
                    })
                .PrimaryKey(t => t.AP_ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.APPLICATION_PAYMENT_PRICE");
        }
    }
}
