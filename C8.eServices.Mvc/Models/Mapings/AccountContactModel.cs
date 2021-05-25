using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class AccountContactModel
    {
        public string contactId { get; set; }
        public int account_id { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string email { get; set; }
        public string contactNumber { get; set; }
        public string designation { get; set; }
        public int createdBy { get; set; }
        public DateTime createdDate { get; set; }
        public int modifiedBy { get; set; }
        public DateTime? modifiedDate { get; set; }

    }
}