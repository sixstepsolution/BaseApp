namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingPropertyApplicationformmm : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.WL_APPLICATIONFORM", "IS_OVERDUE", c => c.String(maxLength: 10));
            AddColumn("dbo.WL_APPLICATIONFORM_AUDIT", "IS_OVERDUE", c => c.String(maxLength: 10));
        }
        
        public override void Down()
        {
            DropColumn("dbo.WL_APPLICATIONFORM_AUDIT", "IS_OVERDUE");
            DropColumn("dbo.WL_APPLICATIONFORM", "IS_OVERDUE");
        }
    }
}
