using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Owin;
using Microsoft.Owin;
//using Microsoft.Owin.Cors;
using Microsoft.Owin.Infrastructure;
using Microsoft.Owin.Security.OAuth;

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
        }
    }
}