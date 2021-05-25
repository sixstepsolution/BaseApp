using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using C8.eServices.Mvc.Models;

namespace C8.eServices.Mvc.Models.Services
{
    public interface ISeriviceSubTypes
    {
        bool SaveChanges();
        IQueryable<MASTER_SERVICE_SUB_TYPES> GetSeriveSubTypes();
        IQueryable<MASTER_SERVICE_SUB_TYPES> GetSeriveSubTypesById(int id);
    }
}
