using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
    public interface IServiceDocument
    {
        bool SaveChanges();
        IQueryable<MASTER_SERVICE_DOCUMENTS> GetServiceDocuments();
        IQueryable<MASTER_SERVICE_DOCUMENTS> GetServiceDocumentsById(int id);
    }
}
