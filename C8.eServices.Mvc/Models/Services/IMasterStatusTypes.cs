using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
    public interface IMasterStatusTypes
    {
        bool SaveChanges();
        IQueryable<MASTER_STATUS_TYPES> GetStatusTypes();
    }
}
