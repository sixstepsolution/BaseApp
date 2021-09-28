namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingIDGenderfields : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_APPLICATIONFORM", "IDENTIFICATION_NUMBER", c => c.String(maxLength: 15));
            AddColumn("dbo.WL_APPLICATIONFORM", "GENDER", c => c.String(maxLength: 10));
            AddColumn("dbo.WL_ACCOUNT", "IDENTIFICATION_NUMBER", c => c.String(maxLength: 15));
            AddColumn("dbo.WL_ACCOUNT", "GENDER", c => c.String(maxLength: 10));
            AddColumn("dbo.WL_ACCOUNT", "SUBURB", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.WL_ACCOUNT", "SUBURB");
            DropColumn("dbo.WL_ACCOUNT", "GENDER");
            DropColumn("dbo.WL_ACCOUNT", "IDENTIFICATION_NUMBER");
            DropColumn("dbo.WL_APPLICATIONFORM", "GENDER");
            DropColumn("dbo.WL_APPLICATIONFORM", "IDENTIFICATION_NUMBER");
        }
    }
}
