using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
    public interface IWLDeclarations
    {
        bool SaveChanges();
        IQueryable<WL_DECLARATIONS> GetAllDeclarations();
        string AddDeclarations(WL_DECLARATIONS declaration);
        int UpdateDeclarations(WL_DECLARATIONS declaration);
        IQueryable<WL_DECLARATIONS> GetDeclarationsData(int id);
        bool DeleteDeclaration(int id);
    }
}