namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class changedatalengthinApplicationformaudit : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "ACTION", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.WL_APPLICATIONFORM_AUDIT", "ACTION", c => c.String(maxLength: 50));
        }
    }
}
