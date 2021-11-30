namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingLoginHistory : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.LOGIN_HISTORY",
                c => new
                    {
                        LHID = c.Int(nullable: false, identity: true),
                        USERID = c.Int(nullable: false),
                        USER_NAME = c.String(maxLength: 100),
                        LOGIN_DATE = c.DateTime(),
                        OUTCOME = c.String(maxLength: 100),
                    })
                .PrimaryKey(t => t.LHID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.LOGIN_HISTORY");
        }
    }
}
