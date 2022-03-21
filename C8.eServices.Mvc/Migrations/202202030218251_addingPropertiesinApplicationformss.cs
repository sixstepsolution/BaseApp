namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingPropertiesinApplicationformss : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_APPLICATIONFORM", "INSPECTION_FORM", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM_AUDIT", "INSPECTION_FORM", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.WL_APPLICATIONFORM_AUDIT", "INSPECTION_FORM");
            DropColumn("dbo.WL_APPLICATIONFORM", "INSPECTION_FORM");
        }
    }
}
