namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class adddduserauditt : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.UserAudits",
                c => new
                    {
                        auditId = c.Int(nullable: false, identity: true),
                        action = c.String(),
                        username = c.String(),
                        userid = c.Int(),
                        password = c.String(),
                        deptartmentname = c.String(),
                        firstName = c.String(),
                        lastName = c.String(),
                        emailAddress = c.String(),
                        cellPhone = c.String(maxLength: 20),
                        isActiveDirectory = c.String(maxLength: 5),
                        signature = c.String(),
                        createdDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.auditId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.UserAudits");
        }
    }
}
