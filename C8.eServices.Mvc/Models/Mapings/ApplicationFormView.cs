using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class ApplicationFormDashboardView
    {
        public int id { get; set; }
        public string applicationNumber { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public int serviceType { get; set; }
        public int serviceSubType { get; set; }
        public string wayleaveAttention { get; set; }
        public string createdDate { get; set; }
        public string createdTime { get; set; }
        public int statusId { get; set; }       
        public string full_name { get; set; }
        public string serviceTypeName { get; set; }
        public string serviceSubTypeName { get; set; }
        public string applicationStatus { get; set; }       
        public string applicationStepStatus { get; set; }
        public string inspectionStatus { get; set; }
        public string inspectionDate { get; set; }
        public string isOverDue { get; set; }
    }

    public class ApplicationCounts
    {
        public int pendingCounts { get; set; }
        public int inprogressCounts { get; set; }
        public int cancelledCounts { get; set; }
        public int completedCounts { get; set; }
    }
}