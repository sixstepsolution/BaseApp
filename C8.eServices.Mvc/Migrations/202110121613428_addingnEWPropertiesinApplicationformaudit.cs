namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingnEWPropertiesinApplicationformaudit : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_APPLICATIONFORM_AUDIT", "OUTCOME", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM_AUDIT", "DEVICE_IP_ADDRESS", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.WL_APPLICATIONFORM_AUDIT", "DEVICE_IP_ADDRESS");
            DropColumn("dbo.WL_APPLICATIONFORM_AUDIT", "OUTCOME");
        }
    }
}
