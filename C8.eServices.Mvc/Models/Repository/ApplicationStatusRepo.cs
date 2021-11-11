using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class ApplicationStatusRepo : IApplicationStatus
    {
        private WayleaveDBContext _context;
        public ApplicationStatusRepo(WayleaveDBContext context)
        {
            _context = context;
        }
        public IQueryable<MASTER_STATUS_TYPES> GetStatusTypes()
        {
            return _context.MASTER_STATUS_TYPES;
        }

        public bool SaveChanges()
        {
            throw new NotImplementedException();
        }
    }
}