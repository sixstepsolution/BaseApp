namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingExcavationtable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.WL_EXCAVATION_DETAILS",
                c => new
                    {
                        EXCAVATION_ID = c.Int(nullable: false, identity: true),
                        APP_ID = c.Int(),
                        TYPE_OF_ROADCROSSING = c.String(maxLength: 250),
                        OPEN_TRENCH_COMMENT = c.String(),
                        EXCAVATION_LENGTH = c.Decimal(precision: 18, scale: 2),
                        RIDING_SURFACE = c.Decimal(precision: 18, scale: 2),
                        KERBS = c.Decimal(precision: 18, scale: 2),
                        GPS_START_ADDRESS = c.String(),
                        GPS_END_ADDRESS = c.String(),
                        APPLICATION_COMMENTS = c.String(),
                        CREATED_DATE = c.DateTime(),
                        CREATED_BY = c.Int(nullable: false),
                        MODIFIED_DATE = c.DateTime(),
                        MODIFIED_BY = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.EXCAVATION_ID)
                .ForeignKey("dbo.WL_APPLICATIONFORM", t => t.APP_ID)
                .Index(t => t.APP_ID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.WL_EXCAVATION_DETAILS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropIndex("dbo.WL_EXCAVATION_DETAILS", new[] { "APP_ID" });
            DropTable("dbo.WL_EXCAVATION_DETAILS");
        }
    }
}
