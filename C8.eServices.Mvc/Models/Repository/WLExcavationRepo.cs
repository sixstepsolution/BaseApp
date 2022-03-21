using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Repository
{
    public class WLExcavationRepo : IWLExcavation
    {
        private WayleaveDbContext _context;
        private readonly IWayleave _wayleave;
        public WLExcavationRepo(WayleaveDbContext context, IWayleave wayleave)
        {
            _context = context;
            _wayleave = wayleave;
        }
        public string AddExcavation(WL_EXCAVATION_DETAILS excavation)
        {
            throw new NotImplementedException();
        }

        public bool DeleteExcavation(int id)
        {
            throw new NotImplementedException();
        }

        public IQueryable<WL_EXCAVATION_DETAILS> GetAllExcavations()
        {
            throw new NotImplementedException();
        }

        public IQueryable<WL_EXCAVATION_DETAILS> GetExcavationData(int id)
        {
            _context.Configuration.LazyLoadingEnabled = false;
            return _context.WL_EXCAVATION_DETAILS.Where(s => s.APP_ID == id);
        }

        public bool SaveChanges()
        {
            return _context.SaveChanges() >= 0 ? true : false;
        }

        public int UpdateExcavation(WL_EXCAVATION_DETAILS excavation)
        {
            throw new NotImplementedException();
        }
    }
}