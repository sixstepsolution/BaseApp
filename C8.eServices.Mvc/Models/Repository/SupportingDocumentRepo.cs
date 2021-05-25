using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class SupportingDocumentRepo : ISupportingDocument
    {
        private WayleaveDbContext _context;
        private readonly IWayleave _wayleave;
        public SupportingDocumentRepo(WayleaveDbContext context, IWayleave wayleave)
        {
            _context = context;
            _wayleave = wayleave;
        }
        public string AddSupportingDocuments(WL_SUPPORTING_DOCUMENTS document)
        {
            throw new NotImplementedException();
        }

        public bool DeleteSupportingDocuments(int id)
        {
            WL_SUPPORTING_DOCUMENTS documents = _context.WL_SUPPORTING_DOCUMENTS.Find(id);
            _context.WL_SUPPORTING_DOCUMENTS.Remove(documents);
            if (SaveChanges())
            {
                _wayleave.deleteFileFromDirectrory(documents.DOCUMENT_NAME);
            }
            return SaveChanges();
        }

        public IQueryable<WL_SUPPORTING_DOCUMENTS> GetAllSupportingDocuments()
        {
            throw new NotImplementedException();
        }

        public WL_SUPPORTING_DOCUMENTS GetSupportingDocumentsData(int id)
        {
            throw new NotImplementedException();
        }

        public bool SaveChanges()
        {
            return _context.SaveChanges() >= 0 ? true : false;
        }

        public int UpdateSupportingDocuments(WL_SUPPORTING_DOCUMENTS document)
        {
            throw new NotImplementedException();
        }
    }
}