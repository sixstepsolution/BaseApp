namespace C8.eServices.Mvc.MigrationsWayleave
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addingSystemusers : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.WL_APPLICATIONFORM", "STATUS_ID", "dbo.MASTER_STATUS_TYPES");
            DropForeignKey("dbo.WL_DECLARATIONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_INSPECTION_LIST", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_SUPPORTING_DOCUMENTS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_ACCOUNT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES");
            DropForeignKey("dbo.WL_ACCOUNT_AUDIT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES");
            DropForeignKey("dbo.WL_APPLICATIONFORM_AUDIT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES");
            DropForeignKey("dbo.WL_ACCO_CONTACT", "ACCOUNT_ID", "dbo.WL_ACCOUNT");
            DropForeignKey("dbo.Roles", "userid", "dbo.Users");
            DropForeignKey("dbo.WL_CONTACT_PERSONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_REGIONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_WORK_LOCATIONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            CreateTable(
                "dbo.AspNetRoles",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false, maxLength: 256),
                        Discriminator = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.Name, unique: true, name: "RoleNameIndex");
            
            CreateTable(
                "dbo.AspNetUserRoles",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        RoleId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.RoleId })
                .ForeignKey("dbo.AspNetRoles", t => t.RoleId)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.UserId)
                .Index(t => t.RoleId);
            
            CreateTable(
                "dbo.SystemUsers",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        FirstName = c.String(),
                        LastName = c.String(),
                        UserName = c.String(),
                        CompanyName = c.String(),
                        Designation = c.String(),
                        EmailAddress = c.String(),
                        SystemUserTypeId = c.String(),
                        StatusId = c.String(),
                        IsPasswordReset = c.Boolean(nullable: false),
                        IsTemporaryPassword = c.Boolean(nullable: false),
                        MobileNumber = c.String(),
                        Code = c.String(),
                        IdentificationNumber = c.String(maxLength: 100),
                        NotificationTypeId = c.Int(),
                        IsActive = c.Boolean(nullable: false),
                        IsDeleted = c.Boolean(nullable: false),
                        IsLocked = c.Boolean(),
                        CreatedBySystemUserId = c.Int(),
                        CreatedDateTime = c.DateTime(),
                        ModifiedBySystemUserId = c.Int(),
                        ModifiedDateTime = c.DateTime(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.SystemUsers", t => t.CreatedBySystemUserId)
                .ForeignKey("dbo.SystemUsers", t => t.ModifiedBySystemUserId)
                .Index(t => t.CreatedBySystemUserId)
                .Index(t => t.ModifiedBySystemUserId);
            
            CreateTable(
                "dbo.AspNetUsers",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        SystemUserId = c.Int(nullable: false),
                        UnconfirmedEmail = c.String(),
                        Email = c.String(maxLength: 256),
                        EmailConfirmed = c.Boolean(nullable: false),
                        PasswordHash = c.String(),
                        SecurityStamp = c.String(),
                        PhoneNumber = c.String(),
                        PhoneNumberConfirmed = c.Boolean(nullable: false),
                        TwoFactorEnabled = c.Boolean(nullable: false),
                        LockoutEndDateUtc = c.DateTime(),
                        LockoutEnabled = c.Boolean(nullable: false),
                        AccessFailedCount = c.Int(nullable: false),
                        UserName = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.SystemUsers", t => t.SystemUserId)
                .Index(t => t.SystemUserId)
                .Index(t => t.UserName, unique: true, name: "UserNameIndex");
            
            CreateTable(
                "dbo.AspNetUserClaims",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserId = c.String(nullable: false, maxLength: 128),
                        ClaimType = c.String(),
                        ClaimValue = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserLogins",
                c => new
                    {
                        LoginProvider = c.String(nullable: false, maxLength: 128),
                        ProviderKey = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.LoginProvider, t.ProviderKey, t.UserId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.UserId);
            
            AddForeignKey("dbo.WL_APPLICATIONFORM", "STATUS_ID", "dbo.MASTER_STATUS_TYPES", "STATUS_ID");
            AddForeignKey("dbo.WL_DECLARATIONS", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID");
            AddForeignKey("dbo.WL_INSPECTION_LIST", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID");
            AddForeignKey("dbo.WL_SUPPORTING_DOCUMENTS", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID");
            AddForeignKey("dbo.WL_ACCOUNT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES", "STATUS_ID");
            AddForeignKey("dbo.WL_ACCOUNT_AUDIT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES", "STATUS_ID");
            AddForeignKey("dbo.WL_APPLICATIONFORM_AUDIT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES", "STATUS_ID");
            AddForeignKey("dbo.WL_ACCO_CONTACT", "ACCOUNT_ID", "dbo.WL_ACCOUNT", "ACCOUNT_ID");
            AddForeignKey("dbo.Roles", "userid", "dbo.Users", "userid");
            AddForeignKey("dbo.WL_CONTACT_PERSONS", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID");
            AddForeignKey("dbo.WL_REGIONS", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID");
            AddForeignKey("dbo.WL_WORK_LOCATIONS", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.WL_WORK_LOCATIONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_REGIONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_CONTACT_PERSONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.Roles", "userid", "dbo.Users");
            DropForeignKey("dbo.WL_ACCO_CONTACT", "ACCOUNT_ID", "dbo.WL_ACCOUNT");
            DropForeignKey("dbo.WL_APPLICATIONFORM_AUDIT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES");
            DropForeignKey("dbo.WL_ACCOUNT_AUDIT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES");
            DropForeignKey("dbo.WL_ACCOUNT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES");
            DropForeignKey("dbo.WL_SUPPORTING_DOCUMENTS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_INSPECTION_LIST", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_DECLARATIONS", "APP_ID", "dbo.WL_APPLICATIONFORM");
            DropForeignKey("dbo.WL_APPLICATIONFORM", "STATUS_ID", "dbo.MASTER_STATUS_TYPES");
            DropForeignKey("dbo.AspNetUsers", "SystemUserId", "dbo.SystemUsers");
            DropForeignKey("dbo.AspNetUserRoles", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserLogins", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserClaims", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.SystemUsers", "ModifiedBySystemUserId", "dbo.SystemUsers");
            DropForeignKey("dbo.SystemUsers", "CreatedBySystemUserId", "dbo.SystemUsers");
            DropForeignKey("dbo.AspNetUserRoles", "RoleId", "dbo.AspNetRoles");
            DropIndex("dbo.AspNetUserLogins", new[] { "UserId" });
            DropIndex("dbo.AspNetUserClaims", new[] { "UserId" });
            DropIndex("dbo.AspNetUsers", "UserNameIndex");
            DropIndex("dbo.AspNetUsers", new[] { "SystemUserId" });
            DropIndex("dbo.SystemUsers", new[] { "ModifiedBySystemUserId" });
            DropIndex("dbo.SystemUsers", new[] { "CreatedBySystemUserId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "RoleId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "UserId" });
            DropIndex("dbo.AspNetRoles", "RoleNameIndex");
            DropTable("dbo.AspNetUserLogins");
            DropTable("dbo.AspNetUserClaims");
            DropTable("dbo.AspNetUsers");
            DropTable("dbo.SystemUsers");
            DropTable("dbo.AspNetUserRoles");
            DropTable("dbo.AspNetRoles");
            AddForeignKey("dbo.WL_WORK_LOCATIONS", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID", cascadeDelete: true);
            AddForeignKey("dbo.WL_REGIONS", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID", cascadeDelete: true);
            AddForeignKey("dbo.WL_CONTACT_PERSONS", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID", cascadeDelete: true);
            AddForeignKey("dbo.Roles", "userid", "dbo.Users", "userid", cascadeDelete: true);
            AddForeignKey("dbo.WL_ACCO_CONTACT", "ACCOUNT_ID", "dbo.WL_ACCOUNT", "ACCOUNT_ID", cascadeDelete: true);
            AddForeignKey("dbo.WL_APPLICATIONFORM_AUDIT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES", "STATUS_ID", cascadeDelete: true);
            AddForeignKey("dbo.WL_ACCOUNT_AUDIT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES", "STATUS_ID", cascadeDelete: true);
            AddForeignKey("dbo.WL_ACCOUNT", "STATUS_ID", "dbo.MASTER_STATUS_TYPES", "STATUS_ID", cascadeDelete: true);
            AddForeignKey("dbo.WL_SUPPORTING_DOCUMENTS", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID", cascadeDelete: true);
            AddForeignKey("dbo.WL_INSPECTION_LIST", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID", cascadeDelete: true);
            AddForeignKey("dbo.WL_DECLARATIONS", "APP_ID", "dbo.WL_APPLICATIONFORM", "APP_ID", cascadeDelete: true);
            AddForeignKey("dbo.WL_APPLICATIONFORM", "STATUS_ID", "dbo.MASTER_STATUS_TYPES", "STATUS_ID", cascadeDelete: true);
        }
    }
}
