using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
   public interface IWlAccountContact:IDisposable
    {
        bool SaveChanges();
        IQueryable<WL_ACCO_CONTACT> GetAllWlAccountContact();
        IQueryable<WL_ACCO_CONTACT> GetAllWlAccountContact(WL_ACCO_CONTACT inpuclaims);
        int AddWlAccountContact(WL_ACCO_CONTACT inpuclaims);
        int UpdateWlAccountContact(WL_ACCO_CONTACT inpuclaims);
        WL_ACCO_CONTACT GetWlAccountContact(int id);
        int DeleteWlAccountContact(int id);

        string AddWlAccountContact(List<WL_ACCO_CONTACT> contacts);

    }
}
