namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingPropertyinUserform : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Users", "createdDate", c => c.DateTime());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Users", "createdDate");
        }
    }
}
