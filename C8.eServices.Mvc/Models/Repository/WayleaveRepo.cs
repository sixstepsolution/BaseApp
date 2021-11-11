using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Mapings;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class WayleaveRepo : IWayleave
    {
        private WayleaveDBContext _context;
        public WayleaveRepo(WayleaveDBContext context)
        {
            _context = context;
        }
        public IQueryable<AccountsView> GetAccounts(string val)
        {           
            return _context.WL_APPLICATIONFORM.Where(a => a.PROPERTYOWNER_ACCOUNT_NO.Contains(val))
                .Select(s => new AccountsView {id=s.APP_ID,description=s.APPLICATION_STEP_DESCRIPTION,pic= "https://images.creativemarket.com/0.1.0/ps/1382917/1160/772/m1/fpnw/wm0/businessman-avatar-icon-01-.jpg?1466426985&s=e682e5d7c8b4cd43735b642490f43f06", account_no = s.PROPERTYOWNER_ACCOUNT_NO });
        }

        public IQueryable<MasterInputCalimsModel> GetAllConsultantNumbers(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.CONSULTANT_CONTACTNO.Contains(val))
                 .Select(s => new MasterInputCalimsModel { id = s.APP_ID, name = s.CONSULTANT_CONTACTNO });
        }

        public IQueryable<MasterInputCalimsModel> GetAllCreatedUsers(string val)
        {
            //if (val.All(char.IsDigit))
            //{
            //    int created_by = Convert.ToInt32(val);
            //}

            return _context.Users.Where(a =>a.username.ToLower().Contains(val.ToLower()))
                .Select(s => new MasterInputCalimsModel { id = s.userid, name = s.username });
                
        }

        public IQueryable<MasterInputCalimsModel> GetConsultantCompanyNames(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.CONSULTANT_COMPANYNAME.Contains(val))
                 .Select(s => new MasterInputCalimsModel { id = s.APP_ID, name = s.CONSULTANT_COMPANYNAME });
        }

        public IQueryable<MasterInputCalimsModel> GetConsultantEmails(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.CONSULTANT_EMAIL.Contains(val))
                .Select(s => new MasterInputCalimsModel { id = s.APP_ID, name = s.CONSULTANT_EMAIL });
        }

        public IQueryable<MasterInputCalimsModel> GetConsultantFirstNames(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.CONSULTANT_NAME.Contains(val))
                 .Select(s => new MasterInputCalimsModel { id = s.APP_ID, name = s.CONSULTANT_NAME });
        }

        public IQueryable<MasterInputCalimsModel> GetConsultantLastNames(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.CONSULTANT_SURNAME.Contains(val))
                  .Select(s => new MasterInputCalimsModel { id = s.APP_ID, name = s.CONSULTANT_SURNAME });
        }

        public IQueryable<MasterInputCalimsModel> GetContactPersons(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.CONTACT_PERSON_FIRSTNAME.Contains(val))
                 .Select(s => new MasterInputCalimsModel { id = s.APP_ID, name = s.CONTACT_PERSON_FIRSTNAME });
        }

        public IQueryable<MasterInputCalimsModel> GetEmails(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.PROPERTYOWNER_EMAIL.Contains(val))
                .Select(s => new MasterInputCalimsModel { id = s.APP_ID,  name = s.PROPERTYOWNER_EMAIL });
        }

        public IQueryable<MasterInputCalimsModel> GetFirstNames(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.PROPERTYOWNER_NAME.Contains(val))
                 .Select(s => new MasterInputCalimsModel { id = s.APP_ID, name = s.PROPERTYOWNER_NAME });
        }

        public IQueryable<MasterInputCalimsModel> GetLastNames(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.PROPERTYOWNER_SURNAME.Contains(val))
                .Select(s => new MasterInputCalimsModel { id = s.APP_ID, name = s.PROPERTYOWNER_SURNAME });
        }

        public IQueryable<MasterInputCalimsModel> GetMobiles(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.PROPERTYOWNER_CONTACTNO.Contains(val))
                 .Select(s => new MasterInputCalimsModel { id = s.APP_ID, name = s.PROPERTYOWNER_CONTACTNO });
        }

        public IQueryable<MasterInputCalimsModel> GetProjectNames(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.PROJECT_NAME.Contains(val))
                .Select(s => new MasterInputCalimsModel { id = s.APP_ID, name = s.PROJECT_NAME });
        }

        public IQueryable<MasterInputCalimsModel> GetRegionCodes(string val)
        {
            return _context.WL_APPLICATIONFORM.Where(a => a.REGION_OR_AREA.Contains(val))
                .Select(s => new MasterInputCalimsModel { id = s.APP_ID, name = s.REGION_OR_AREA });
        }

        public string SaveUploadedFile(HttpPostedFile file, string browser)
        {
            string file_Name = string.Empty;
            string fileName = string.Empty;
            if (file != null)
            {

                if (browser == "IE" || browser == "INTERNETEXPLORER")
                {
                    string[] testfiles = file.FileName.Split(new char[] { '\\' });
                    fileName = testfiles[testfiles.Length - 1];
                }
                else
                {
                    fileName = file.FileName;
                }

                //fileName = tradeLicensefile.FileName;
                file_Name = string.Format("{0}-{1}", DateTime.Now.ToString("ddMMMyyyyHHmmss"), fileName.Replace("-", ""));
                fileName = Path.Combine(HttpContext.Current.Server.MapPath("~/uploads/"), file_Name);
                file.SaveAs(fileName);
            }
            return file_Name;
        }
        public bool SaveChanges()
        {
            throw new NotImplementedException();
        }


        //--- Delete file from directory ---//
        public  string deleteFileFromDirectrory(string name)
        {
            string FileToDelete;
            string status = "";

            FileToDelete = HttpContext.Current.Server.MapPath("~/uploads/" + name);
            if (System.IO.File.Exists(FileToDelete))
            {
                // Delete a file
                System.IO.File.Delete(FileToDelete);
                status = "success";
            }
            else
            {
                status = "No File Found";
            }
            return status;
        }

        //Wayleave account autocomplete functionality
        public IQueryable<MasterInputCalimsModel> GetWLAccountNumbers(string val)
        {
            return _context.WL_ACCOUNTS.Where(a => a.ACCOUNT_NUMBER.Contains(val))
                .Select(s => new MasterInputCalimsModel { /*id = s.ACCOUNT_ID,  */name = s.ACCOUNT_NUMBER });
        }


        public IQueryable<MasterInputCalimsModel> GetWLAccountPersonFirstNames(string val)
        {
            return _context.WL_ACCOUNTS.Where(a => a.CONTACT_PERSON_FIRST_NAME.Contains(val))
                .Select(s => new MasterInputCalimsModel { id = s.ACCOUNT_ID, name = s.CONTACT_PERSON_FIRST_NAME });
        }
        
        public IQueryable<MasterInputCalimsModel> GetWLAccountPersonLsatNames(string val)
        {
            return _context.WL_ACCOUNTS.Where(a => a.CONTACT_PERSON_LAST_NAME.Contains(val))
                .Select(s => new MasterInputCalimsModel { id = s.ACCOUNT_ID, name = s.CONTACT_PERSON_LAST_NAME });
        }
        
        public IQueryable<MasterInputCalimsModel> GetWLAccountCompanyNames(string val)
        {
            return _context.WL_ACCOUNTS.Where(a => a.COMPANY_FULL_NAME.Contains(val))
                .Select(s => new MasterInputCalimsModel { id = s.ACCOUNT_ID, name = s.COMPANY_FULL_NAME});
        }
        
        public IQueryable<MasterInputCalimsModel> GetWLAccountEmails(string val)
        {
            return _context.WL_ACCOUNTS.Where(a => a.EMAIL.Contains(val))
                .Select(s => new MasterInputCalimsModel { id = s.ACCOUNT_ID, name = s.EMAIL});
        }
        
        
        public IQueryable<MasterInputCalimsModel> GetWLAccountMobiles(string val)
        {
            return _context.WL_ACCOUNTS.Where(a => a.MOBILE.Contains(val))
                .Select(s => new MasterInputCalimsModel { id = s.ACCOUNT_ID, name = s.MOBILE });
        }

    }
}