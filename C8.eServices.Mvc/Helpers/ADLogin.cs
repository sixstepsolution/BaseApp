﻿using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Keys;
using C8.eServices.Mvc.ViewModels;
using System;
using System.Collections.Generic;
using System.DirectoryServices;
using System.DirectoryServices.AccountManagement;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace C8.eServices.Mvc.Helpers
{
    public class AdLogin
    {

        private eServicesDbContext db = new eServicesDbContext();

        public bool Valid { get; private set; }
        public string UniqueName { get; private set; }
        public string EmailAddress { get; private set; }

        public async Task<List<string>> Validate(string domain, bool searchUid, LoginViewModel model)
        {
            List<string> userInfo = new List<string>();
            try
            {
                using (var principalContext = new PrincipalContext(ContextType.Domain, domain, model.UserName, model.Password))
                {
                    Valid = principalContext.ValidateCredentials(model.UserName, model.Password);
                    UniqueName = model.UserName;

                    if (searchUid && Valid)
                    {
                        using (var userPrincipal = new UserPrincipal(principalContext))
                        {
                            userPrincipal.SamAccountName = model.UserName;
                            using (var principalSearcher = new PrincipalSearcher())
                            {
                                principalSearcher.QueryFilter = userPrincipal;
                                Principal searchResult = principalSearcher.FindOne();
                                if (searchResult != null)
                                {
                                    DirectoryEntry directoryEntry = (DirectoryEntry)searchResult.GetUnderlyingObject();
                                    if (directoryEntry.Properties.Contains("mail"))
                                    {
                                        userInfo.Add(directoryEntry.Properties["mail"].Value.ToString());
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Valid = false;
            }
            return userInfo.ToList();
        }


        public async Task<bool> ValidateUser(string UserName, string Password)
        {
            try
            {
                // Please store the  line below in the db and call/ them from there
                var activeDirectoryDomain = "10.31.3.51";
                //
                UserName = UserName.Trim();
                using (var context = new PrincipalContext(ContextType.Domain, activeDirectoryDomain))
                {
                    return context.ValidateCredentials(UserName, Password);
                }
            }
            catch
            {
                //TODO: Inject logging and log exception
                return false;
            }
        }

        public bool ValidateAdUserName(string domain, bool searchUid, string SearchFor, string UserName, string Password)
        {
            bool UserNameExists = false;
            var principalContext = new PrincipalContext(ContextType.Domain, domain, UserName.Trim(), Password);
            try
            {
                using (var userPrincipal = new UserPrincipal(principalContext))
                {
                    userPrincipal.SamAccountName = SearchFor;
                    using (var principalSearcher = new PrincipalSearcher())
                    {
                        principalSearcher.QueryFilter = userPrincipal;
                        Principal searchResult = principalSearcher.FindOne();
                        if (searchResult != null)
                        {
                            DirectoryEntry directoryEntry = (DirectoryEntry)searchResult.GetUnderlyingObject();
                            if (directoryEntry.Properties.Contains("sAMAccountName"))
                            {
                                UserNameExists = true;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                var e = ex.Message;
                Valid = false;
            }
            return UserNameExists;
        }
    }

}