using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class WayleaveAccountDashboardModel
    {
        public int id { get; set; }
        public int sequenceId { get; set; }
        public string name { get; set; }
        public int count { get; set; }
        public IEnumerable<WayleaveAccountInputModel> accountList { get; set; }
    }
}