namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addPropertiesinApplicationformAuditt : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_APPLICATIONFORM_AUDIT", "BASEAPP_IP_ADDRESS", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.WL_APPLICATIONFORM_AUDIT", "BASEAPP_IP_ADDRESS");
        }
    }
}
