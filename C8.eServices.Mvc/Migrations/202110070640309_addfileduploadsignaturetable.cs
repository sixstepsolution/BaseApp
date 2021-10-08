namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addfileduploadsignaturetable : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_UPLOAD_SIGNATURE", "IS_ACTIVE", c => c.String(maxLength: 10));
        }
        
        public override void Down()
        {
            DropColumn("dbo.WL_UPLOAD_SIGNATURE", "IS_ACTIVE");
        }
    }
}
