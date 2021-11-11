using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class MasterCustomerCareCentersRepo : IMasterCustomerCareCenters
    {
        private WayleaveDBContext _context;
        public MasterCustomerCareCentersRepo(WayleaveDBContext context)
        {
            _context = context;
        }
        public IQueryable<MASTER_CUSTOMERCARE_CENTERS_REGIONS> GetCustomerCareCenters()
        {
            return _context.MASTER_CUSTOMERCARE_CENTERS_REGIONS;
        }

        public bool SaveChanges()
        {
            throw new NotImplementedException();
        }
    }
}