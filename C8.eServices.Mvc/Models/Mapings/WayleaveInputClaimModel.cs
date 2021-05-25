using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class WayleaveInputClaimModel
    {

        public int account_id { get; set; }
        public string account_number { get; set; }
        public string userType { get; set; }
        public string companyFullName { get; set; }
        public string contactPersonName { get; set; }
        public string contactPersonLastName { get; set; }
        public string designation { get; set; }
        public string mobileNumber { get; set; }
        public string email { get; set; }
        public string address { get; set; }
        public int statusId { get; set; }
        public int created_by { get; set; }
        public string comments { get; set; }
        public string status { get; set; }
        public DateTime? date_requested_from { get; set; }
        public DateTime? date_requested_to { get; set; }
        public DateTime? created_date { get; set; }
        public string createdDate { get; set; }
    }
}