using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
   public interface IContactPersons
    {
        bool SaveChanges();
        IQueryable<WL_CONTACT_PERSONS> GetAllContactPersons();
        string AddContactPersons(WL_CONTACT_PERSONS contactPersons);
        int UpdateContactPersons(WL_CONTACT_PERSONS contactPersons);
        WL_CONTACT_PERSONS GetcontactPersonData(int id);
        bool DeleteContactPersons(int id);
    }
}
