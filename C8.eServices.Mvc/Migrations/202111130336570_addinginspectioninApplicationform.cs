namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addinginspectioninApplicationform : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_APPLICATIONFORM", "INSPECTION_REFERENCE_NO", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM", "INSPECTION_COMMENTS", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM", "INSPECTION_BY", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM_AUDIT", "INSPECTION_REFERENCE_NO", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM_AUDIT", "INSPECTION_COMMENTS", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM_AUDIT", "INSPECTION_BY", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.WL_APPLICATIONFORM_AUDIT", "INSPECTION_BY");
            DropColumn("dbo.WL_APPLICATIONFORM_AUDIT", "INSPECTION_COMMENTS");
            DropColumn("dbo.WL_APPLICATIONFORM_AUDIT", "INSPECTION_REFERENCE_NO");
            DropColumn("dbo.WL_APPLICATIONFORM", "INSPECTION_BY");
            DropColumn("dbo.WL_APPLICATIONFORM", "INSPECTION_COMMENTS");
            DropColumn("dbo.WL_APPLICATIONFORM", "INSPECTION_REFERENCE_NO");
        }
    }
}
