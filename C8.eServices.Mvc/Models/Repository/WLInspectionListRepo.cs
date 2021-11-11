using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class WLInspectionListRepo : IWLInspectionList
    {
        private WayleaveDBContext _context;
        public WLInspectionListRepo(WayleaveDBContext context)
        {
            _context = context;
        }
        public int AddInspection(List<WL_INSPECTION_LIST> inspectionResponse, string inspectionType)
        {
            foreach (WL_INSPECTION_LIST inspection in inspectionResponse)
            {
                inspection.CREATED_ON = DateTime.Now;
                inspection.INSPECTION_TYPE = inspectionType;
                _context.WL_INSPECTION_LIST.Add(inspection);
            }
            bool n = SaveChanges();

            if (n)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }

        public IQueryable<WL_INSPECTION_LIST> GetAllInspectionForm()
        {
            return _context.WL_INSPECTION_LIST;
        }

        public IQueryable<WL_INSPECTION_LIST> GetAllInspectionsbyId(int id)
        {
            return _context.WL_INSPECTION_LIST.Where(s=>s.APP_ID==id);
        }

        public bool SaveChanges()
        {
            return (_context.SaveChanges() >= 0 ? true : false);
        }

        public int UpdateInspection(WL_INSPECTION_LIST inspectionForm)
        {
            throw new NotImplementedException();
        }
    }
}