using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class SeriviceSubTypesRepo : ISeriviceSubTypes
    {
        private WayleaveDBContext _context;
        public SeriviceSubTypesRepo(WayleaveDBContext context)
        {
            _context = context;
        }
        public IQueryable<MASTER_SERVICE_SUB_TYPES> GetSeriveSubTypes()
        {
            return _context.MASTER_SERVICE_SUB_TYPES;
        }

        public IQueryable<MASTER_SERVICE_SUB_TYPES> GetSeriveSubTypesById(int id)
        {
            return _context.MASTER_SERVICE_SUB_TYPES.Where(s => s.SERVICE_ID == id);
        }
        public bool SaveChanges()
        {
            throw new NotImplementedException();
        }
    }
}