using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
    public interface IMasterInspections
    {
        bool SaveChanges();
        IQueryable<MASTER_INSPECTIONS> GetInspections();
        IQueryable<MASTER_INSPECTIONS> GetInspections(int id);
    }
}
