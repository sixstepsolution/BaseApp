using C8.eServices.Mvc.Models;
using C8.eServices.Mvc.Models.Authentication;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.OAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Security;
using wayleave.Models.Authentication;

namespace c8.eServices.Models.Authentication
{
    public class WayleaveAuthProvider : OAuthAuthorizationServerProvider
    {
        #region Private Properties  

        /// <summary>  
        /// Public client ID property.  
        /// </summary>  
        private readonly string _publicClientId;

       
        #endregion


        #region Default Constructor method.  

        /// <summary>  
        /// Default Constructor method.  
        /// </summary>  
        /// <param name="publicClientId">Public client ID parameter</param> 
        //public WayleaveAuthProvider(string publicClientId)
        //{
        //    //TODO: Pull from configuration  
        //    if (publicClientId == null)
        //    {
        //        throw new ArgumentNullException(nameof(publicClientId));
        //    }

        //    // Settings.  
        //    _publicClientId = publicClientId;
        //}
        #endregion

        #region Validate Client authntication override method  

        /// <summary>  
        /// Validate Client authntication override method  
        /// </summary>  
        /// <param name="context">Contect parameter</param>  
        /// <returns>Returns validation of client authentication</returns>  
        public override Task ValidateClientAuthentication(OAuthValidateClientAuthenticationContext context)
        {
           // context.OwinContext.Response.Headers.Add("Access-Control-Allow-Origin", new[] { "*" });
            // Resource owner password credentials does not provide a client ID.
            if (context.ClientId == null)
            {
                context.Validated();
            }

            return Task.FromResult<object>(null);
        }
        #endregion

        #region Grant resource owner credentials override method.  

        /// <summary>  
        /// Grant resource owner credentials overload method.  
        /// </summary>  
        /// <param name="context">Context parameter</param>  
        /// <returns>Returns when task is completed</returns>  
        public override async Task GrantResourceOwnerCredentials(OAuthGrantResourceOwnerCredentialsContext context)
        {

            using (WayleaveAuthRepository _repo = new WayleaveAuthRepository())
            {
                var user = _repo.ValidateUser(context.UserName, context.Password);
                if (user == null)
                {
                    context.SetError("invalid_grant", "Provided username and password is incorrect");
                    return;
                }
                var identity = new ClaimsIdentity(context.Options.AuthenticationType);
                //identity.AddClaim(new Claim(ClaimTypes.Role, user.FirstName));
                //identity.AddClaim(new Claim(ClaimTypes.Name, user.username));
                //identity.AddClaim(new Claim("userName", user.username));
                //identity.AddClaim(new Claim("UserID", Convert.ToString(user.userid)));

                var Roles = user.Roles;
                //identity.AddClaim(new Claim(ClaimTypes.Role, Convert.ToString(Roles)));
                foreach (var r in Roles)
                {
                   // identity.AddClaim(new Claim(ClaimTypes.Role, r.role_name.ToString()));
                }
                //HttpContext.Current.Session["asasa"] = 11;
                //ClaimsIdentity cookiesClaimIdentity = new ClaimsIdentity(context.Options, CookieAuthenticationDefaults.AuthenticationType);

                //FormsAuthentication.SetAuthCookie(Convert.ToString(user.userid), false);
                // Setting user authentication.  
                AuthenticationProperties properties = CreateProperties(user);
                AuthenticationTicket ticket = new AuthenticationTicket(identity, properties);
               
                // Grant access to authorize user.  
                context.Validated(ticket);
                //context.Request.Context.Authentication.SignIn(cookiesClaimIdentity);

                //context.Validated(identity);
            }
        }
        #endregion


        #region Validate client redirect URI override method  

        /// <summary>  
        /// Validate client redirect URI override method  
        /// </summary>  
        /// <param name="context">Context parmeter</param>  
        /// <returns>Returns validation of client redirect URI</returns>  
        public override Task ValidateClientRedirectUri(OAuthValidateClientRedirectUriContext context)
        {
            // Verification.  
            if (context.ClientId == _publicClientId)
            {
                // Initialization.  
                Uri expectedRootUri = new Uri(context.Request.Uri, "/");

                // Verification.  
                if (expectedRootUri.AbsoluteUri == context.RedirectUri)
                {
                    // Validating.  
                    context.Validated();
                }
            }

            // Return info.  
            return Task.FromResult<object>(null);
        }

        #endregion

        public override Task GrantRefreshToken(OAuthGrantRefreshTokenContext context)
        {
            var newIdentity = new ClaimsIdentity(context.Ticket.Identity);

            var newTicket = new AuthenticationTicket(newIdentity, context.Ticket.Properties);
            context.Validated(newTicket);

            return Task.FromResult<object>(null);
        }


        #region Token endpoint override method.  

        /// <summary>  
        /// Token endpoint override method  
        /// </summary>  
        /// <param name="context">Context parameter</param>  
        /// <returns>Returns when task is completed</returns>  
        public override Task TokenEndpoint(OAuthTokenEndpointContext context)
        {
            foreach (KeyValuePair<string, string> property in context.Properties.Dictionary)
            {
                // Adding.  
                context.AdditionalResponseParameters.Add(property.Key, property.Value);
            }

            // Return info.  
            return Task.FromResult<object>(null);
        }

        #endregion

        #region Create Authentication properties method.  

        /// <summary>  
        /// Create Authentication properties method.  
        /// </summary>  
        /// <param name="user">User name parameter</param>  
        /// <returns>Returns authenticated properties.</returns>  
        public static AuthenticationProperties CreateProperties(User user)
        {
            // Settings.  
            IDictionary<string, string> data = new Dictionary<string, string>
                                               {
                                                   { "userName", user.username },
                                                   { "UserID",Convert.ToString(user.userid) },
                                                   {"roles",Newtonsoft.Json.JsonConvert.SerializeObject(user.Roles.Select(x=>x.role_name))},
                                                   {"deptartmentname",user.deptartmentname}
                                               };
           // Return info.  
            return new AuthenticationProperties(data);
        }

        #endregion
    }
}
