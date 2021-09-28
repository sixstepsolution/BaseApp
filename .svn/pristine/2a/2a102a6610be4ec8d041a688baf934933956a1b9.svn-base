using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Repository
{
    public class MasterDeclarationsRepo : IMasterDeclarations
    {
        private WayleaveDbContext _context;
        private readonly IWayleave _wayleave;
        public MasterDeclarationsRepo(WayleaveDbContext context, IWayleave wayleave)
        {
            _context = context;
            _wayleave = wayleave;
        }
        //public IQueryable<MASTER_DECLARATIONS> GetAllDeclarations()
        //{
        //    return _context.MASTER_DECLARATIONS;
        //}

        //public bool SaveChanges()
        //{
        //    return (_context.SaveChanges() >= 0 ? true : false);
        //}
        public IQueryable<MASTER_DECLARATIONS> GetAllDeclarations()
        {
            return _context.MASTER_DECLARATIONS;
        }

        public bool SaveChanges()
        {
            return (_context.SaveChanges() >= 0 ? true : false);
        }
    }
}