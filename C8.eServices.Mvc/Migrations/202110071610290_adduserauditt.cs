namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class adduserauditt : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.UserAudits",
                c => new
                    {
                        auditId = c.Int(nullable: false, identity: true),
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
            
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "ACTION", c => c.String(maxLength: 50));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "ACTION", c => c.String());
            DropTable("dbo.UserAudits");
        }
    }
}
