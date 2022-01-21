namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingPropertiesinApplicationformmm : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_APPLICATIONFORM", "OPEN_TRENCH_COMMENT", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM_AUDIT", "OPEN_TRENCH_COMMENT", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.WL_APPLICATIONFORM_AUDIT", "OPEN_TRENCH_COMMENT");
            DropColumn("dbo.WL_APPLICATIONFORM", "OPEN_TRENCH_COMMENT");
        }
    }
}
