using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using C8.eServices.Mvc.Models.Mapings;

namespace C8.eServices.Mvc.Models.Services
{
   public interface IWayleave
    {
        bool SaveChanges();
        string SaveUploadedFile(HttpPostedFile file, string browser);
        IQueryable<AccountsView> GetAccounts(string val);
        IQueryable<MasterInputCalimsModel> GetFirstNames(string val);
        IQueryable<MasterInputCalimsModel> GetLastNames(string val);
        IQueryable<MasterInputCalimsModel> GetMobiles(string val);
        IQueryable<MasterInputCalimsModel> GetEmails(string val);


        IQueryable<MasterInputCalimsModel> GetAllCreatedUsers(string val);
        IQueryable<MasterInputCalimsModel> GetAllConsultantNumbers(string val);
        IQueryable<MasterInputCalimsModel> GetConsultantCompanyNames(string val);
        IQueryable<MasterInputCalimsModel> GetConsultantFirstNames(string val);
        IQueryable<MasterInputCalimsModel> GetConsultantLastNames(string val);
        IQueryable<MasterInputCalimsModel> GetConsultantEmails(string val);
        IQueryable<MasterInputCalimsModel> GetProjectNames(string val);
        IQueryable<MasterInputCalimsModel> GetRegionCodes(string val);
        IQueryable<MasterInputCalimsModel> GetContactPersons(string val);
        string deleteFileFromDirectrory(string name);


        IQueryable<MasterInputCalimsModel> GetWLAccountNumbers(string val);
        IQueryable<MasterInputCalimsModel> GetWLAccountPersonFirstNames(string val);
        IQueryable<MasterInputCalimsModel> GetWLAccountPersonLsatNames(string val);
        IQueryable<MasterInputCalimsModel> GetWLAccountCompanyNames(string val);
        IQueryable<MasterInputCalimsModel> GetWLAccountEmails(string val);
        IQueryable<MasterInputCalimsModel> GetWLAccountMobiles(string val);


    }
}
