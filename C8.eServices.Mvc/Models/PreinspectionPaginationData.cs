using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Comm;
using C8.eServices.Mvc.Models.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public class PreinspectionPaginationData
    {
        public int pageIndex { get; set; }
        public int pageSize { get; set; }
        public string sorting { get; set; }
        public string search { get; set; }

        private WayleaveDBContext _context;
        private readonly IApplicationForm _appFrom = null;
        public PreinspectionPaginationData(WayleaveDBContext context, IApplicationForm appFrom)
        {
            _context = context;
            _appFrom = appFrom;
        }
        public static bool IsDateTime(string txtDate)
        {
            DateTime tempDate;
            return DateTime.TryParse(txtDate, out tempDate) ? true : false;
        }
        public Dictionary<string, object> getAllPreinspectionData(int pageIndex, int pageSize, string sorting, string search)
        {

            Dictionary<string, object> dic = new Dictionary<string, object>();
            //int LoginUserCompanyID = Convert.ToInt32(HttpContext.Current.Session["cid_SCL_account"].ToString());

            try
            {
                IQueryable<WL_APPLICATIONFORM> result = _context.WL_APPLICATIONFORM;
                bool isDate = IsDateTime(search);
                DateTime dt;
                if (isDate)
                {
                    dt = Convert.ToDateTime(search);
                }
                Pagenation<WL_APPLICATIONFORM> employeeList = new Pagenation<WL_APPLICATIONFORM>();
                List<WL_APPLICATIONFORM> listEmp = new List<WL_APPLICATIONFORM>();
                Func<WL_APPLICATIONFORM, object> orderBy = employeeList.orderByType1(sorting);
                listEmp = ((from cd in result
                            where cd.STATUS_ID == 3
                            select new { cd })) //.OrderByDescending(s => s.cd.Id))
                              .ToList()
                            .Select(d => new WL_APPLICATIONFORM
                            {
                                APP_ID = d.cd.APP_ID,
                                APPLICATION_NUMBER = d.cd.APPLICATION_NUMBER,
                                STATUS_ID = d.cd.STATUS_ID,
                                CONSULTANT_NAME = d.cd.CONSULTANT_NAME != null ? d.cd.CONSULTANT_NAME + " " + d.cd.CONSULTANT_SURNAME : d.cd.PROPERTYOWNER_NAME + " " + d.cd.PROPERTYOWNER_SURNAME,
                                WAYLEAVE_ATTENTION = d.cd.WAYLEAVE_ATTENTION,
                                APPLICATION_STEP_DESCRIPTION = d.cd.APPLICATION_STEP_DESCRIPTION,
                                CREATED_DATE = d.cd.CREATED_DATE,
                            }).AsQueryable().ToList();



                if (search != "undefined")
                {
                    // searching
                    if (!string.IsNullOrWhiteSpace(search))
                    {
                        if (isDate)
                        {
                            dt = Convert.ToDateTime(search);
                            listEmp = listEmp.Where(x => DateTime.Compare(x.CREATED_DATE.Date, dt.Date) <= 0).ToList();
                        }
                        else
                        {
                            listEmp = listEmp.Where(x =>
                          (x.APPLICATION_NUMBER.ToUpper() ?? "").Contains(search.ToUpper()) ||
                          (x.CONSULTANT_NAME.ToUpper() ?? "").Contains(search.ToUpper())
                           ).ToList();
                        }

                    }

                }
                employeeList.totalCount = listEmp.Count().ToString();
                listEmp = listEmp.OrderBy(orderBy).Skip((pageIndex - 1) * pageSize).Take(pageSize).AsQueryable().ToList();
                employeeList.applications = listEmp;

                if (listEmp.Count() > 0)
                {
                    dic.Add("success", employeeList);
                }
                else
                {
                    dic.Add("success", "No results found!");
                }
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting  
                        // the current instance as InnerException  
                        raise = new InvalidOperationException(message, raise);
                    }
                }
                dic.Add("error", raise.Message);
            }
            return dic;
        }
    }
}