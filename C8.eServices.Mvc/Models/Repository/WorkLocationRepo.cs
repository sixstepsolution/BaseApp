using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class WorkLocationRepo : IWorkLocations
    {
        private WayleaveDbContext _context;
        public WorkLocationRepo(WayleaveDbContext context)
        {
            _context = context;
        }
        public string AddWorkLocation(WL_WORK_LOCATIONS location)
        {
            throw new NotImplementedException();
        }

        public bool DeleteWorkLocation(int id)
        {
            WL_WORK_LOCATIONS worklocation = _context.WL_WORK_LOCATIONS.Find(id);
            _context.WL_WORK_LOCATIONS.Remove(worklocation);

            return SaveChanges();
        }

        public IQueryable<WL_WORK_LOCATIONS> GetAllWorkLocations()
        {
            throw new NotImplementedException();
        }

        public WL_WORK_LOCATIONS GetWorkLocationData(int id)
        {
            throw new NotImplementedException();
        }

        public int UpdateWorkLocation(WL_WORK_LOCATIONS location)
        {
            throw new NotImplementedException();
        }

        public bool SaveChanges()
        {
            return (_context.SaveChanges() >= 0 ? true : false);
        }

    }
}