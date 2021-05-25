using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class WlAccount_ContactRepo : IWlAccountContact
    {
        private bool disposedValue;
        private WayleaveDbContext _context;
        public WlAccount_ContactRepo(WayleaveDbContext context)
        {
            _context = context;
        }
        public int AddWlAccountContact(WL_ACCO_CONTACT inpuclaims)
        {
            throw new NotImplementedException();
        }

        public string AddWlAccountContact(List<WL_ACCO_CONTACT> contacts)
        {
            throw new NotImplementedException();
        }

        public int DeleteWlAccountContact(int id)
        {
            throw new NotImplementedException();
        }

        public IQueryable<WL_ACCO_CONTACT> GetAllWlAccountContact()
        {
            throw new NotImplementedException();
        }

        public IQueryable<WL_ACCO_CONTACT> GetAllWlAccountContact(WL_ACCO_CONTACT inpuclaims)
        {
            throw new NotImplementedException();
        }

        public WL_ACCO_CONTACT GetWlAccountContact(int id)
        {
          return  _context.WL_ACCO_CONTACTS.Find(id);
        }

        public bool SaveChanges()
        {
            throw new NotImplementedException();
        }

        public int UpdateWlAccountContact(WL_ACCO_CONTACT inpuclaims)
        {
            throw new NotImplementedException();
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!disposedValue)
            {
                if (disposing)
                {
                    // TODO: dispose managed state (managed objects)
                }

                // TODO: free unmanaged resources (unmanaged objects) and override finalizer
                // TODO: set large fields to null
                disposedValue = true;
            }
        }

        // // TODO: override finalizer only if 'Dispose(bool disposing)' has code to free unmanaged resources
        // ~WlAccount_ContactRepo()
        // {
        //     // Do not change this code. Put cleanup code in 'Dispose(bool disposing)' method
        //     Dispose(disposing: false);
        // }

        public void Dispose()
        {
            // Do not change this code. Put cleanup code in 'Dispose(bool disposing)' method
            Dispose(disposing: true);
            GC.SuppressFinalize(this);
        }
    }
}