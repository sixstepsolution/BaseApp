namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingresponsedateindepartments : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_DEPARTMENTS", "RESPONSE_DATE", c => c.DateTime());
        }
        
        public override void Down()
        {
            DropColumn("dbo.WL_DEPARTMENTS", "RESPONSE_DATE");
        }
    }
}
