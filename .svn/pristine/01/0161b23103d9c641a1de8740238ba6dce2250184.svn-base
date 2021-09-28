namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingPaymentsInApplicationform : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_APPLICATIONFORM", "PAYMENT_RECEIPT_NO", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM", "PAYMENT_STATUS", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM", "PAYMENT_MODE", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM", "PAYMENT_DESCRIPTION", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM", "PAYMENT_DATE", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.WL_APPLICATIONFORM", "PAYMENT_DATE");
            DropColumn("dbo.WL_APPLICATIONFORM", "PAYMENT_DESCRIPTION");
            DropColumn("dbo.WL_APPLICATIONFORM", "PAYMENT_MODE");
            DropColumn("dbo.WL_APPLICATIONFORM", "PAYMENT_STATUS");
            DropColumn("dbo.WL_APPLICATIONFORM", "PAYMENT_RECEIPT_NO");
        }
    }
}
