namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingPropertiesinApplicationform1 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.MASTER_SERVICE_DOCUMENTS", "IS_REQUIRED", c => c.String(maxLength: 5));
        }
        
        public override void Down()
        {
            DropColumn("dbo.MASTER_SERVICE_DOCUMENTS", "IS_REQUIRED");
        }
    }
}
