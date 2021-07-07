namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingdeclarationtable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.MASTER_DECLARATIONS",
                c => new
                    {
                        MD_ID = c.Int(nullable: false, identity: true),
                        DESCRIPTION = c.String(),
                        CREATED_ON = c.DateTime(),
                    })
                .PrimaryKey(t => t.MD_ID);
            
            CreateTable(
                "dbo.WL_DECLARATIONS",
                c => new
                    {
                        DID = c.Int(nullable: false, identity: true),
                        MD_ID = c.Int(nullable: false),
                        DECLARATION_NAME = c.String(),
                        APP_ID = c.Int(nullable: false),
                        CREATED_DATE = c.DateTime(),
                        CREATED_BY = c.Int(nullable: false),
                        MODIFIED_DATE = c.DateTime(),
                        MODIFIED_BY = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.DID)
                .ForeignKey("dbo.WL_APPLICATIONFORM", t => t.APP_ID, cascadeDelete: true)
                .Index(t => t.APP_ID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.WL_DECLARATIONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropIndex("dbo.WL_DECLARATIONS", new[] { "APP_ID" });
            DropTable("dbo.WL_DECLARATIONS");
            DropTable("dbo.MASTER_DECLARATIONS");
        }
    }
}
