using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using C8.eServices.Mvc.Models.Mapings;

namespace C8.eServices.Mvc.Models.Services
{
   public interface IWlAccount:IDisposable
    {
        bool SaveChanges();
        IQueryable<WL_ACCOUNT> GetAllWLAccounts();
        IQueryable<WL_ACCOUNT> GetAllWLAccounts(WayleaveInputClaimModel inpuclaims);
        int AddWL_ACCOUNT(WL_ACCOUNT formData);
        int UpdateWL_ACCOUNT(WL_ACCOUNT formData);
        WL_ACCOUNT GetWL_ACCOUNT(int id);
        WL_ACCOUNT GetWL_ACCOUNT(string accountNo);
        int DeleteWL_ACCOUNT(int id);
        bool ExistsEmail(string email,string userType);
        WL_ACCOUNT WayleaveAccountLogin(string username, string password);
        Dictionary<string, object> AddWL_ACCOUNT(WL_ACCOUNT account,List<WL_ACCO_CONTACT> contactList, HttpPostedFile tradeLicensefile, HttpPostedFile regCertificatefile, HttpPostedFile taxCertificatefile, string browser, int appCount);
        Dictionary<string, object> UpdateWL_ACCOUNT(WL_ACCOUNT account, List<WL_ACCO_CONTACT> contactList, HttpPostedFile tradeLicensefile, HttpPostedFile regCertificatefile, HttpPostedFile taxCertificatefile, string browser, int appCount);

    }
}
