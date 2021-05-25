using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
    public interface ISupportingDocument
    {
        bool SaveChanges();
        IQueryable<WL_SUPPORTING_DOCUMENTS> GetAllSupportingDocuments();
        string AddSupportingDocuments(WL_SUPPORTING_DOCUMENTS document);
        int UpdateSupportingDocuments(WL_SUPPORTING_DOCUMENTS document);
        WL_SUPPORTING_DOCUMENTS GetSupportingDocumentsData(int id);
        bool DeleteSupportingDocuments(int id);
    }
}
