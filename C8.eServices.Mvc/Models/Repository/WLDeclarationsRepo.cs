using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace C8.eServices.Mvc.Models.Repository
{
    public class WLDeclarationsRepo: IWLDeclarations
    {
        private WayleaveDbContext _context;
        private readonly IWayleave _wayleave;
        public WLDeclarationsRepo(WayleaveDbContext context, IWayleave wayleave)
        {
            _context = context;
            _wayleave = wayleave;
        }
        public string AddDeclarations(WL_DECLARATIONS declaration)
        {
            throw new NotImplementedException();
        }

        public bool DeleteDeclaration(int id)
        {
            WL_DECLARATIONS declaration = _context.WL_DECLARATIONS.Find(id);
            _context.WL_DECLARATIONS.Remove(declaration);
            if (SaveChanges())
            {
                _wayleave.deleteFileFromDirectrory(declaration.DECLARATION_NAME);
            }
            return SaveChanges();
        }

        public IQueryable<WL_DECLARATIONS> GetAllDeclarations()
        {
            throw new NotImplementedException();
        }
        
        public IQueryable<WL_DECLARATIONS> GetDeclarationsData(int id)
        {
            _context.Configuration.LazyLoadingEnabled = false;
            return _context.WL_DECLARATIONS.Where(s => s.APP_ID == id);
        }

        public bool SaveChanges()
        {
            return _context.SaveChanges() >= 0 ? true : false;
        }

        public int UpdateDeclarations(WL_DECLARATIONS declarations)
        {
            throw new NotImplementedException();
        }
    }
}