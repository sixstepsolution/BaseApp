namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addfieldinapplicationformudit : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "CREATED_BY", c => c.String());
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "MODIFIED_BY", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "MODIFIED_BY", c => c.Int());
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "CREATED_BY", c => c.Int(nullable: false));
        }
    }
}
