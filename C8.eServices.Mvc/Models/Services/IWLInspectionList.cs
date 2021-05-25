using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
    public interface IWLInspectionList
    {
        bool SaveChanges();
        IQueryable<WL_INSPECTION_LIST> GetAllInspectionForm();
        IQueryable<WL_INSPECTION_LIST> GetAllInspectionsbyId(int id);
        int AddInspection(List<WL_INSPECTION_LIST> inspectionForm,string inspectionType);
        int UpdateInspection(WL_INSPECTION_LIST inspectionForm);
    }
}
