using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
   public interface IDepartments
    {
        bool SaveChanges();
        IQueryable<WL_DEPARTMENTS> GetAllDepartments();
        string AddDepartment(WL_DEPARTMENTS department);
        int UpdateDeclarations(WL_DEPARTMENTS declaration);
        IQueryable<WL_DEPARTMENTS> GetDepartmentsData(int id);
        bool DeleteDepartment(int id);

    }
}
