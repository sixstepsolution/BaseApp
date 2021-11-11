using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class RegionRepo : IRegion
    {
        private WayleaveDBContext _context;
        public RegionRepo(WayleaveDBContext context)
        {
            _context = context;
        }
        public string AddRegions(WL_REGIONS regions)
        {
            throw new NotImplementedException();
        }

        public bool DeleteRegions(int id)
        {
            WL_REGIONS region = _context.WL_REGIONS.Find(id);
            _context.WL_REGIONS.Remove(region);
            return SaveChanges();
        }

        public IQueryable<WL_REGIONS> GetAllRegions()
        {
            throw new NotImplementedException();
        }

        public WL_REGIONS GetRegionsData(int id)
        {
            throw new NotImplementedException();
        }

        public bool SaveChanges()
        {
            return _context.SaveChanges() >= 0 ? true : false;
        }

        public int UpdateRegions(WL_REGIONS regions)
        {
            throw new NotImplementedException();
        }
    }
}