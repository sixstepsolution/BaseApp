namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updateSystemuserss : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.SystemUsers", "Password", c => c.String());
            AddColumn("dbo.SystemUsers", "DepartmentName", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.SystemUsers", "DepartmentName");
            DropColumn("dbo.SystemUsers", "Password");
        }
    }
}
