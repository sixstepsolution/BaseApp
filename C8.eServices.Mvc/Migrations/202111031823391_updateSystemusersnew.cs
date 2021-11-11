namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updateSystemusersnew : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.SystemUsers", "IsActiveDirectory", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.SystemUsers", "IsActiveDirectory");
        }
    }
}
