using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class ContactPersonRepo : IContactPersons
    {
        private WayleaveDbContext _context;
        public ContactPersonRepo(WayleaveDbContext context)
        {
            _context = context;
        }
        public string AddContactPersons(WL_CONTACT_PERSONS contactPersons)
        {
            throw new NotImplementedException();
        }

        public bool DeleteContactPersons(int id)
        {
            WL_CONTACT_PERSONS contactPersons = _context.WL_CONTACT_PERSONS.Find(id);
            _context.WL_CONTACT_PERSONS.Remove(contactPersons);
            return SaveChanges();

        }

        public IQueryable<WL_CONTACT_PERSONS> GetAllContactPersons()
        {
            throw new NotImplementedException();
        }

        public WL_CONTACT_PERSONS GetcontactPersonData(int id)
        {
            throw new NotImplementedException();
        }

        public bool SaveChanges()
        {
            return _context.SaveChanges() >= 0 ? true : false;
        }

        public int UpdateContactPersons(WL_CONTACT_PERSONS contactPersons)
        {
            throw new NotImplementedException();
        }
    }
}