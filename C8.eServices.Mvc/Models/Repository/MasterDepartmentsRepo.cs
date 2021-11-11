using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class MasterDepartmentsRepo : IMasterDepartments
    {
        private WayleaveDBContext _context;
        public MasterDepartmentsRepo(WayleaveDBContext context)
        {
            _context = context;
        }
        public IQueryable<MASTER_DEPARTMENTS> GetServiceDepartments()
        {
            return _context.MASTER_DEPARTMENTS;
        }

        public IQueryable<MASTER_DEPARTMENTS> GetServiceDepartments(int id)
        {
            return _context.MASTER_DEPARTMENTS.Where(s => s.SERVICE_ID == id);
        }

        public bool SaveChanges()
        {
            throw new NotImplementedException();
        }
    }
}