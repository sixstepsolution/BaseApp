using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Owin;
using Microsoft.Owin;
//using Microsoft.Owin.Cors;
using Microsoft.Owin.Infrastructure;
using Microsoft.Owin.Security.OAuth;
using C8.eServices.Mvc.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using C8.eServices.Mvc.DataAccessLayer;

[assembly: OwinStartup(typeof(C8.eServices.Mvc.Startup))]
namespace C8.eServices.Mvc
{
    public partial class Startup
    {
        public static OAuthAuthorizationServerOptions OAuthOptions { get; private set; }
        public static string PublicClientId { get; private set; }
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            createRolesandUsers();
        }
        // In this method we will create default User roles and Admin user for login    
        private void createRolesandUsers()
        {
            ApplicationDbContext context = new ApplicationDbContext();

            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            var UserManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));


            // In Startup iam creating first System Admin Role
            if (!roleManager.RoleExists("System Admin"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "System Admin";
                roleManager.Create(role);
            }


            // creating Creating Admin role     
            if (!roleManager.RoleExists("Admin"))
            {

                // first we create Admin rool    
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "Admin";
                roleManager.Create(role);

                //Here we create a Admin super user who will maintain the website                   

                //var user = new ApplicationUser();
                //user.UserName = "shanu";
                //user.Email = "syedshanumcain@gmail.com";

                //string userPWD = "A@Z200711";

                //var chkUser = UserManager.Create(user, userPWD);

                ////Add default User to Role Admin    
                //if (chkUser.Succeeded)
                //{
                //    var result1 = UserManager.AddToRole(user.Id, "Admin");

                //}
            }

            // creating Creating Employee role     
            if (!roleManager.RoleExists("application"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "application";
                roleManager.Create(role);

            }
        }
    }
}