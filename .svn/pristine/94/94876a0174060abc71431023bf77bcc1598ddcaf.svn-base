namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingPropertiesinUserform : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Users", "firstName", c => c.String());
            AddColumn("dbo.Users", "lastName", c => c.String());
            AddColumn("dbo.Users", "emailAddress", c => c.String());
            AddColumn("dbo.Users", "cellPhone", c => c.String(maxLength: 20));
            AddColumn("dbo.Users", "isActiveDirectory", c => c.String(maxLength: 5));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Users", "isActiveDirectory");
            DropColumn("dbo.Users", "cellPhone");
            DropColumn("dbo.Users", "emailAddress");
            DropColumn("dbo.Users", "lastName");
            DropColumn("dbo.Users", "firstName");
        }
    }
}
