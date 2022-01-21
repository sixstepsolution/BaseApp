namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatePropertiesinApplicationform : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.MASTER_REGIONS", "REGION_CODE");
            DropColumn("dbo.MASTER_REGIONS", "ROAD_NUMBER");
        }
        
        public override void Down()
        {
            AddColumn("dbo.MASTER_REGIONS", "ROAD_NUMBER", c => c.String(maxLength: 50));
            AddColumn("dbo.MASTER_REGIONS", "REGION_CODE", c => c.String(nullable: false, maxLength: 10));
        }
    }
}
