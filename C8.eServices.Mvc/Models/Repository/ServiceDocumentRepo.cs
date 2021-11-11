using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class ServiceDocumentRepo:IServiceDocument
    {
        private WayleaveDBContext _context;
        private readonly IWayleave _wayleave;
        public ServiceDocumentRepo(WayleaveDBContext context, IWayleave wayleave)
        {
            _context = context;
            _wayleave = wayleave;
        }
        public IQueryable<MASTER_SERVICE_DOCUMENTS> GetServiceDocuments()
        {
            return _context.MASTER_SERVICE_DOCUMENTS;
        }

        public IQueryable<MASTER_SERVICE_DOCUMENTS> GetServiceDocumentsById(int id)
        {
            return _context.MASTER_SERVICE_DOCUMENTS.Where(s => s.SERVICE_ID == id);
        }
        public bool SaveChanges()
        {
            throw new NotImplementedException();
        }
    }
}