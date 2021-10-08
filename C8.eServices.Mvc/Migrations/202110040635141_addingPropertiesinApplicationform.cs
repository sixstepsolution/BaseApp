namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingPropertiesinApplicationform : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_APPLICATIONFORM", "SERVICE_TYPE_NEW", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.WL_APPLICATIONFORM", "SERVICE_TYPE_NEW");
        }
    }
}
