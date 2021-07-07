using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using C8.eServices.Mvc.Models.Mapings;

namespace C8.eServices.Mvc.Models.Services
{
   public interface IApplicationForm
    {
        bool SaveChanges();
        IQueryable<WL_APPLICATIONFORM> GetAllApplicationForm();
        IQueryable<WL_APPLICATIONFORM> GetAllApplicationForm(ApplicationInputClaimModel inpuclaims);
        int AddApplicationForm(WL_APPLICATIONFORM applicationForm);
        string UpdateApplicationForm(WL_APPLICATIONFORM applicationForm, HttpFileCollection files, string browser);
        int UpdateApplicationInspectiondata(int appId,string inspectionStatus,DateTime? inspectiondate, List<PreInspectionDataModel> pid);
        bool UpdateApplicationFormStaus(int appId, string appStatus,string comments,string deptComments, string deptName, string deptStatus);
        bool UpdateCirculatedDepartmentStaus(int appId, string appStatus, string comments, string deptComments, string deptName, string deptStatus);
        WL_APPLICATIONFORM GetApplicationFormData(int id);
        int DeleteApplicationForm(int id);

        //string AddApplicationForm(WL_APPLICATIONFORM applicationForm, List<WL_REGIONS> RegionResponse, List<WL_CONTACT_PERSONS> ContactResponse, List<WL_WORK_LOCATIONS> locationResponse,List<WL_DEPARTMENTS> departmentsDataResponse, HttpFileCollection files, string browser, int appCount,string paymentStatus);
        string AddApplicationForm(WL_APPLICATIONFORM applicationForm, List<WL_DEPARTMENTS> departments, List<WL_DECLARATIONS> declarations, HttpFileCollection files, string browser, int appCount, string paymentStatus);
    }
}
