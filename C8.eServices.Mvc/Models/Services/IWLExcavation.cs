using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace C8.eServices.Mvc.Models.Services
{
    public interface IWLExcavation
    {
        bool SaveChanges();
        IQueryable<WL_EXCAVATION_DETAILS> GetAllExcavations();
        string AddExcavation(WL_EXCAVATION_DETAILS excavation);
        int UpdateExcavation(WL_EXCAVATION_DETAILS excavation);
        IQueryable<WL_EXCAVATION_DETAILS> GetExcavationData(int id);
        bool DeleteExcavation(int id);

    }
}
