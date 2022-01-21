namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatePropertiesinUsers : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Users", "region", c => c.String(maxLength: 50));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Users", "region");
        }
    }
}
