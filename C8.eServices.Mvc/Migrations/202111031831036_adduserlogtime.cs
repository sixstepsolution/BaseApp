namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class adduserlogtime : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.SystemUserLogTimes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        SystemUserId = c.Int(nullable: false),
                        SessionId = c.String(),
                        IPAddress = c.String(),
                        LoginTime = c.DateTime(nullable: false),
                        LogoutTime = c.DateTime(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.SystemUsers", t => t.SystemUserId)
                .Index(t => t.SystemUserId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.SystemUserLogTimes", "SystemUserId", "dbo.SystemUsers");
            DropIndex("dbo.SystemUserLogTimes", new[] { "SystemUserId" });
            DropTable("dbo.SystemUserLogTimes");
        }
    }
}
