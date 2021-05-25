using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;

namespace C8.eServices.Mvc.Models.Authentication
{
    public class WayleaveAuthRepository: IDisposable
    {
        // GGBEntities it is your context class
        WayleaveDbContext context = new WayleaveDbContext();
        //This method is used to check and validate the user credentials
        public User ValidateUser(string username, string password)
        {
            return context.Users.FirstOrDefault(user =>
            user.username.Equals(username, StringComparison.OrdinalIgnoreCase)
            && user.password == password);
        }
        public void Dispose()
        {
            context.Dispose();
        }
    }
}