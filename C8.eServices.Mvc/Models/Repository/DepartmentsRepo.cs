using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Repository
{
    public class DepartmentsRepo : IDepartments
    {
        private WayleaveDBContext _context;
        private readonly IWayleave _wayleave;
        public DepartmentsRepo(WayleaveDBContext context, IWayleave wayleave)
        {
            _context = context;
            _wayleave = wayleave;
        }
        public string AddDepartment(WL_DEPARTMENTS department)
        {
            throw new NotImplementedException();
        }

        public bool DeleteDepartment(int id)
        {
            throw new NotImplementedException();
        }

        public IQueryable<WL_DEPARTMENTS> GetAllDepartments()
        {
            throw new NotImplementedException();
        }

        public IQueryable<WL_DEPARTMENTS> GetDepartmentsData(int id)
        {
            _context.Configuration.LazyLoadingEnabled = false;
            return _context.WL_DEPARTMENTS.Where(s => s.APP_ID == id);
        }

        public bool SaveChanges()
        {
            return _context.SaveChanges() >= 0 ? true : false;
        }

        public int UpdateDeclarations(WL_DEPARTMENTS declaration)
        {
            throw new NotImplementedException();
        }
    }
}