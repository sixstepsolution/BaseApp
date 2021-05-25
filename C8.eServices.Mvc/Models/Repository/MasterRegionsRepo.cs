using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models;
using C8.eServices.Mvc.Models.Services;

namespace wayleave.Models.Repository
{
    public class MasterRegionsRepo : IMasterRegions
    {
        private WayleaveDbContext _context;
        public MasterRegionsRepo(WayleaveDbContext context)
        {
            _context = context;
        }
        public IQueryable<MASTER_REGIONS> GetAllRegions()
        {
            throw new NotImplementedException();
        }

        public bool SaveChanges()
        {
            return (_context.SaveChanges() >= 0 ? true : false);
        }
    }
}