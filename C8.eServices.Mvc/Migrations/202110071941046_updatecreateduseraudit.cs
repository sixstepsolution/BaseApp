namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatecreateduseraudit : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_ACCOUNT_AUDIT", "CREATED_USER", c => c.String());
            AddColumn("dbo.WL_ACCOUNT_AUDIT", "MODIFIED_USER", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM_AUDIT", "CREATED_USER", c => c.String());
            AddColumn("dbo.WL_APPLICATIONFORM_AUDIT", "MODIFIED_USER", c => c.String());
            AlterColumn("dbo.WL_ACCOUNT_AUDIT", "CREATED_BY", c => c.Int(nullable: false));
            AlterColumn("dbo.WL_ACCOUNT_AUDIT", "MODIFIED_BY", c => c.Int());
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "CREATED_BY", c => c.Int(nullable: false));
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "MODIFIED_BY", c => c.Int());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "MODIFIED_BY", c => c.String());
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "CREATED_BY", c => c.String());
            AlterColumn("dbo.WL_ACCOUNT_AUDIT", "MODIFIED_BY", c => c.String());
            AlterColumn("dbo.WL_ACCOUNT_AUDIT", "CREATED_BY", c => c.String());
            DropColumn("dbo.WL_APPLICATIONFORM_AUDIT", "MODIFIED_USER");
            DropColumn("dbo.WL_APPLICATIONFORM_AUDIT", "CREATED_USER");
            DropColumn("dbo.WL_ACCOUNT_AUDIT", "MODIFIED_USER");
            DropColumn("dbo.WL_ACCOUNT_AUDIT", "CREATED_USER");
        }
    }
}
