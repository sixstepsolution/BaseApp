using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
    public interface IMasterCustomerCareCenters
    {
        bool SaveChanges();
        IQueryable<MASTER_CUSTOMERCARE_CENTERS_REGIONS> GetCustomerCareCenters();
    }
}
