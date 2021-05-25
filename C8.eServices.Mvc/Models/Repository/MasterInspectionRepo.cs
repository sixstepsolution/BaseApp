using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class MasterInspectionRepo: IMasterInspections
    {
        private WayleaveDbContext _context;
        public MasterInspectionRepo(WayleaveDbContext context)
        {
            _context = context;
        }
        public IQueryable<MASTER_INSPECTIONS> GetInspections()
        {
            return _context.MASTER_INSPECTIONS;
        }

        public IQueryable<MASTER_INSPECTIONS> GetInspections(int id)
        {
            return _context.MASTER_INSPECTIONS.Where(s => s.INS_ID == id);
        }

        public bool SaveChanges()
        {
            throw new NotImplementedException();
        }
    }
}