using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class SeriviceTypesRepo : ISeriviceTypes
    {
        private WayleaveDBContext _context;
        public SeriviceTypesRepo(WayleaveDBContext context)
        {
            _context = context;
        }
        public IQueryable<MASTER_SERVICE_TYPES> GetSeriveTypes()
        {
            return _context.MASTER_SERVICE_TYPES;
        }

        public bool SaveChanges()
        {
            throw new NotImplementedException();
        }
    }
}