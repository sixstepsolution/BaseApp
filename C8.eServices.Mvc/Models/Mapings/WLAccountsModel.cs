using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class WLAccountsModel
    {
        public int account_id { get; set; }
        public string account_number { get; set; }
        public string userType { get; set; }
        public int company_id { get; set; }
        public string companyName { get; set; }
        public string companyFullName { get; set; }
        public string companyRegistrationNumber { get; set; }
        public string tradeLicenseExpirationDate { get; set; }
        public string tradeLicenseFile { get; set; }

        public string contactPersonFirstName { get; set; }
        public string contactPersonLastName { get; set; }
        public string designation { get; set; }
        public string telephoneNumber { get; set; }
        public string mobileNumber { get; set; }
        public string email { get; set; }
        public string fax { get; set; }
        public string streetName { get; set; }
        public string city { get; set; }
        public string province { get; set; }
        public string country { get; set; }
        public string postCode { get; set; }
        public string registartionCertificate { get; set; }
        public string taxCertificate { get; set; }
        public string status { get; set; }

        public string identificationNumber { get; set; }
        public string contactPersonGender { get; set; }
        public string suburb { get; set; }
        public string password { get; set; }

        public int statusId { get; set; }
        public string isActive { get; set; }
        public string comments { get; set; }
        public int createdBy { get; set; }
        public DateTime createdDate { get; set; }
        public int modifiedBy { get; set; }
        public DateTime? modifiedDate { get; set; }
        public List<AccountContactModel> accountContactModelDto { get; set; }
    }
}