namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class adduploadsignaturetable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.WL_UPLOAD_SIGNATURE",
                c => new
                    {
                        SIGN_ID = c.Int(nullable: false, identity: true),
                        DOCUMENT_NAME = c.String(),
                        CREATED_DATE = c.DateTime(),
                        MODIFIED_DATE = c.DateTime(),
                    })
                .PrimaryKey(t => t.SIGN_ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.WL_UPLOAD_SIGNATURE");
        }
    }
}
