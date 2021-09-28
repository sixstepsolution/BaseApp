namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingPropinUserform : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Users", "signature", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Users", "signature");
        }
    }
}
