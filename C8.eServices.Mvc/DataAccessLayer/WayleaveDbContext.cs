using System;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using C8.eServices.Mvc.Models;
namespace C8.eServices.Mvc.DataAccessLayer
{   
    public partial class WayleaveDbContext : DbContext
    {
        public WayleaveDbContext()

            : base("name=WayleaveDBContext")
        {
        }

        public virtual DbSet<MASTER_ROLES> MASTER_ROLES { get; set; }
        public virtual DbSet<MASTER_SERVICE_SUB_TYPES> MASTER_SERVICE_SUB_TYPES { get; set; }
        public virtual DbSet<MASTER_SERVICE_TYPES> MASTER_SERVICE_TYPES { get; set; }
        public virtual DbSet<MASTER_STATUS_TYPES> MASTER_STATUS_TYPES { get; set; }
        public virtual DbSet<MASTER_DECLARATIONS> MASTER_DECLARATIONS { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Student> Students { get; set; }
        public virtual DbSet<tblEmployee> tblEmployees { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<LOGIN_HISTORY> LOGIN_HISTORY { get; set; }
        public virtual DbSet<WL_APPLICATIONFORM> WL_APPLICATIONFORM { get; set; }
        public virtual DbSet<WL_REGIONS> WL_REGIONS { get; set; }
        public virtual DbSet<MASTER_REGIONS> MASTER_REGIONS { get; set; }
        public virtual DbSet<WL_CONTACT_PERSONS> WL_CONTACT_PERSONS { get; set; }
        public virtual DbSet<WL_ACCOUNT> WL_ACCOUNTS { get; set; }
        public virtual DbSet<WL_ACCO_CONTACT> WL_ACCO_CONTACTS { get; set; }
        public virtual DbSet<WL_WORK_LOCATIONS> WL_WORK_LOCATIONS { get; set; }
        public virtual DbSet<WL_SUPPORTING_DOCUMENTS> WL_SUPPORTING_DOCUMENTS { get; set; }
        public virtual DbSet<MASTER_SERVICE_DOCUMENTS> MASTER_SERVICE_DOCUMENTS { get; set; }
        public virtual DbSet<MASTER_DEPARTMENTS> MASTER_DEPARTMENTS { get; set; }
        public virtual DbSet<WL_DEPARTMENTS> WL_DEPARTMENTS { get; set; }
        public virtual DbSet<APPLICATION_PAYMENT_PRICE> APPLICATION_PAYMENT_PRICE { get; set; }
        public virtual DbSet<testMigration> testMigrations { get; set; }
        public virtual DbSet<MASTER_INSPECTIONS> MASTER_INSPECTIONS { get; set; }
        public virtual DbSet<WL_INSPECTION_LIST> WL_INSPECTION_LIST { get; set; }
        public virtual DbSet<WL_DECLARATIONS> WL_DECLARATIONS { get; set; }
        public virtual DbSet<WL_UPLOAD_SIGNATURE> WL_UPLOAD_SIGNATURE { get; set; }
        public virtual DbSet<WL_APPLICATIONFORM_AUDIT> WL_APPLICATIONFORM_AUDIT { get; set; }
        public virtual DbSet<WL_ACCOUNT_AUDIT> WL_ACCOUNT_AUDIT { get; set; }
        public virtual DbSet<UserAudit> UserAudit { get; set; }
        public virtual DbSet<APPLICATION_PAYMENT_PRICE_AUDIT> APPLICATION_PAYMENT_PRICE_AUDIT { get; set; }
        public virtual DbSet<MASTER_CUSTOMERCARE_CENTERS_REGIONS> MASTER_CUSTOMERCARE_CENTERS_REGIONS { get; set; }
        //public DbSet<SystemUser> SystemUsers { get; set; }
        //public DbSet<SystemUserException> SystemUserException { get; set; }
        //public DbSet<SystemUserLogTime> SystemUserLogTimes { get; set; }
        //public DbSet<SystemUserType> SystemUserTypes { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {            
            Database.SetInitializer<WayleaveDbContext>(null);
            base.OnModelCreating(modelBuilder);

            //modelBuilder.Entity<SystemUser>()
            //    .HasOptional(f => f.CreatedBySystemUser)
            //    .WithMany()
            //    .HasForeignKey(f => f.CreatedBySystemUserId);

            //modelBuilder.Entity<SystemUser>()
            //    .HasOptional(f => f.ModifiedBySystemUser)
            //    .WithMany()
            //    .HasForeignKey(f => f.ModifiedBySystemUserId);
            //modelBuilder.Entity<MASTER_ROLES>()
            //    .Property(e => e.DESCRIPTION)
            //    .IsUnicode(false);

            //modelBuilder.Entity<MASTER_SERVICE_SUB_TYPES>()
            //    .Property(e => e.DESCRIPTION)
            //    .IsUnicode(false);

            //modelBuilder.Entity<MASTER_SERVICE_TYPES>()
            //    .Property(e => e.DESCRIPTION)
            //    .IsUnicode(false);

            //modelBuilder.Entity<MASTER_STATUS_TYPES>()
            //    .Property(e => e.DESCRIPTION)
            //    .IsUnicode(false);

            //modelBuilder.Entity<tblEmployee>()
            //    .Property(e => e.Name)
            //    .IsUnicode(false);

            //modelBuilder.Entity<tblEmployee>()
            //    .Property(e => e.City)
            //    .IsUnicode(false);

            //modelBuilder.Entity<tblEmployee>()
            //    .Property(e => e.Department)
            //    .IsUnicode(false);

            //modelBuilder.Entity<tblEmployee>()
            //    .Property(e => e.Gender)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.APPLICATION_NUMBER)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.PROPERTYOWNER_ACCOUNT_NO)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.PROPERTYOWNER_NAME)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.PROPERTYOWNER_SURNAME)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.PROPERTYOWNER_CONTACTNO)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.PROPERTYOWNER_EMAIL)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.CONSULTANT_NO)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.CONSULTANT_COMPANYNAME)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.CONSULTANT_NAME)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.CONSULTANT_SURNAME)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.CONSULTANT_CONTACTNO)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.CONSULTANT_EMAIL)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.WAYLEAVE_ATTENTION)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.MAP_SIZE)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.PROJECT_NUMBER)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.PROJECT_NAME)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.APPLYING_ON_BEHALF)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.PROJECT_DESCRIPTION)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.ROAD_NUMBER)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.REGION_OR_AREA)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.AREA_DESCRIPTION)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.CONTACT_PERSON_FIRSTNAME)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.CONTACT_PERSON_LASTNAME)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.CONTACT_PERSON_REGISTRATION_NO)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.CONTACT_PERSON_CONTACTNO)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.COVER_LETTER)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.APPLICATION_STATUS)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.APPLICATION_STEP_NO)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.APPLICATION_STEP_DESCRIPTION)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_APPLICATIONFORM>()
            //    .Property(e => e.IS_ACTIVE)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_REGIONS>()
            //    .Property(e => e.REGION_CODE)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_REGIONS>()
            //    .Property(e => e.REGION_NAME)
            //    .IsUnicode(false);

            //modelBuilder.Entity<WL_REGIONS>()
            //    .Property(e => e.ROAD_NUMBER)
            //    .IsUnicode(false);

            //modelBuilder.Entity<testMigration>()
            //   .Property(e => e.name)
            //   .IsUnicode(false);

        }
    }
}