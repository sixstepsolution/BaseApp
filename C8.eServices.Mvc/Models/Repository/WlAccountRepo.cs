using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Configuration;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Comm;
using C8.eServices.Mvc.Models.EmailBodys;
using C8.eServices.Mvc.Models.Mapings;
using C8.eServices.Mvc.Models.Services;

namespace C8.eServices.Mvc.Models.Repository
{
    public class WlAccountRepo : IWlAccount
    {

        private bool disposedValue;
        private readonly IWayleave _wayleave = null;
        private WayleaveDbContext _context;
        private readonly IWlAccountContact _wlcontact = null;
        public WlAccountRepo(WayleaveDbContext context, IWlAccountContact wlcontact, IWayleave wayleave)
        {
            _context = context;
            _wlcontact = wlcontact;
            _wayleave = wayleave;
        }
        public int AddWL_ACCOUNT(WL_ACCOUNT formData)
        {
            throw new NotImplementedException();
        }
        public Dictionary<string, object> AddWL_ACCOUNT(WL_ACCOUNT account, List<WL_ACCO_CONTACT> contactList, HttpPostedFile tradeLicensefile, HttpPostedFile regCertificatefile, HttpPostedFile taxCertificatefile, string browser, int appCount)
        {
            Dictionary<string, object> dct = new Dictionary<string, object>();
            string msg = string.Empty;
            string file_Name = string.Empty;
            string fileName = string.Empty;
            int counter = appCount;
            counter = counter + 1;
            string year = DateTime.Now.ToString("yy");
            string month = DateTime.Now.ToString("MM");
            string outputValue = String.Format("{0:D4}", counter);
            string accountNumber = "ACC" + year + month + outputValue;

            try
            {
               if(ExistsEmail(account.EMAIL,account.TYPE_USER))
                {
                    dct.Add("emailExists", true);
                    return dct;
                }

                if (tradeLicensefile != null)
                {
                    account.TRADE_LICENSE_FILE = _wayleave.SaveUploadedFile(tradeLicensefile, browser);
                }
                if (regCertificatefile != null)
                {
                    account.REGISTRATION_CERTIFICATE_NAME = _wayleave.SaveUploadedFile(regCertificatefile, browser);
                }
                if (taxCertificatefile != null)
                {
                    account.TAX_CERTIFICATE_NAME = _wayleave.SaveUploadedFile(taxCertificatefile, browser);
                }

                DateTime dt = DateTime.Now;
                WL_ACCOUNT acc = new WL_ACCOUNT()
                {
                    ACCOUNT_NUMBER = accountNumber,
                    TYPE_USER = account.TYPE_USER,
                    COMPANY_ID = 1,
                    COMPANY_NAME = account.COMPANY_NAME,
                    COMPANY_FULL_NAME = account.COMPANY_FULL_NAME,
                    COMPANY_REGISTRATION_NUMBER = account.COMPANY_REGISTRATION_NUMBER,
                    TRADE_LICENSE_EXPIRE_DATE = account.TRADE_LICENSE_EXPIRE_DATE,
                    TRADE_LICENSE_FILE = account.TRADE_LICENSE_FILE,
                    CONTACT_PERSON_FIRST_NAME = account.CONTACT_PERSON_FIRST_NAME,
                    CONTACT_PERSON_LAST_NAME = account.CONTACT_PERSON_LAST_NAME,
                    DESIGNATION = account.DESIGNATION,
                    TELEPHONE_NUMBER = account.TELEPHONE_NUMBER,
                    MOBILE = account.MOBILE,
                    EMAIL = account.EMAIL,
                    FAX = account.FAX,
                    STREET_NAME = account.STREET_NAME,
                    CITY = account.CITY,
                    PROVINCE = account.PROVINCE,
                    COUNTRY = account.COUNTRY,
                    POST_CODE = account.POST_CODE,
                    REGISTRATION_CERTIFICATE_NAME = account.REGISTRATION_CERTIFICATE_NAME,
                    TAX_CERTIFICATE_NAME = account.TAX_CERTIFICATE_NAME,
                    CREATED_BY = 1,
                    CREATED_DATE = dt,
                    STATUS_ID = 6,
                    IS_ACTIVE = "Y",
                    PASSWORD = CommonModel.CreateRandomPassword(8)

                };
                // _context.Entry(account.MASTER_STATUS_TYPES).State = System.Data.Entity.EntityState.Unchanged;
                //account.ACCOUNT_NUMBER = accountNumber;
                //account.CREATED_BY = 1;
                //account.CREATED_DATE = dt;
                //account.COMPANY_ID = 1;
                //account.STATUS_ID = 8;
                //account.IS_ACTIVE = "Y";
                //account.MODIFIED_DATE = dt;
                //account.PASSWORD = CommonModel.CreateRandomPassword(8);
                
                _context.WL_ACCOUNTS.Add(acc);


                foreach (WL_ACCO_CONTACT r in contactList)
                {
                    r.CREATED_BY = 1;
                    r.CREATED_DATE = dt;
                    _context.WL_ACCO_CONTACTS.Add(r);
                }
                bool n = SaveChanges();

                if (n)
                {
                    dct.Add("success", true);
                    dct.Add("accountNumber", accountNumber);
                    dct.Add("accountUserName", acc.EMAIL);
                    dct.Add("accountPassword", acc.PASSWORD);
                    //EmailNotifications.SentUserNamePassword(acc.EMAIL, acc.CONTACT_PERSON_FIRST_NAME+" "+ acc.CONTACT_PERSON_LAST_NAME, acc.EMAIL, acc.PASSWORD, accountNumber);
                    msg = "Wayleave account created sucessfully!";
                }
                else
                {
                    dct.Add("success", false);
                    msg= "Wayleave account creation failed!";
                }
            }
            catch (Exception ex)
            {
                dct.Add("exception", true);
                dct.Add("exception", ex.Message);
                msg = ex.Message;
            }

            return dct;
        }
        public Dictionary<string, object> UpdateWL_ACCOUNT(WL_ACCOUNT account, List<WL_ACCO_CONTACT> contactList, HttpPostedFile tradeLicensefile, HttpPostedFile regCertificatefile, HttpPostedFile taxCertificatefile, string browser, int appCount)
        {
            Dictionary<string, object> dct = new Dictionary<string, object>();
            //string msg = string.Empty;
            //string file_Name = string.Empty;
            //string fileName = string.Empty;
            //int counter = appCount;
            //counter = counter + 1;
            //string year = DateTime.Now.ToString("yy");
            //string month = DateTime.Now.ToString("MM");
            //string outputValue = String.Format("{0:D4}", counter);
            //string accountNumber = "ACC" + year + month + outputValue;

            try
            {                
                DateTime dt = DateTime.Now;
                var acc = GetWL_ACCOUNT(account.ACCOUNT_ID);
                if (ExistsEmail(account.EMAIL, account.TYPE_USER)&& acc.EMAIL!=account.EMAIL)
                {
                    dct.Add("emailExists", true);
                    return dct;
                }
                if (tradeLicensefile != null)
                {
                    acc.TRADE_LICENSE_FILE = _wayleave.SaveUploadedFile(tradeLicensefile, browser);
                }
                if (regCertificatefile != null)
                {
                    acc.REGISTRATION_CERTIFICATE_NAME = _wayleave.SaveUploadedFile(regCertificatefile, browser);
                }
                if (taxCertificatefile != null)
                {
                    acc.TAX_CERTIFICATE_NAME = _wayleave.SaveUploadedFile(taxCertificatefile, browser);
                }                

                //ACCOUNT_NUMBER = accountNumber,
                acc.TYPE_USER = account.TYPE_USER;
                //acc.COMPANY_ID = 1;
                acc.COMPANY_NAME = account.COMPANY_NAME;
                acc.COMPANY_FULL_NAME = account.COMPANY_FULL_NAME;
                     acc.COMPANY_REGISTRATION_NUMBER = account.COMPANY_REGISTRATION_NUMBER;
                     acc.TRADE_LICENSE_EXPIRE_DATE = account.TRADE_LICENSE_EXPIRE_DATE;
                     //acc.TRADE_LICENSE_FILE = account.TRADE_LICENSE_FILE;
                     acc.CONTACT_PERSON_FIRST_NAME = account.CONTACT_PERSON_FIRST_NAME;
                     acc.CONTACT_PERSON_LAST_NAME = account.CONTACT_PERSON_LAST_NAME;
                     acc.DESIGNATION = account.DESIGNATION;
                     acc.TELEPHONE_NUMBER = account.TELEPHONE_NUMBER;
                     acc.MOBILE = account.MOBILE;
                     acc.EMAIL = account.EMAIL;
                     acc.FAX = account.FAX;
                     acc.STREET_NAME = account.STREET_NAME;
                     acc.CITY = account.CITY;
                     acc.PROVINCE = account.PROVINCE;
                     acc.COUNTRY = account.COUNTRY;
                     acc.POST_CODE = account.POST_CODE;
                     //acc.REGISTRATION_CERTIFICATE_NAME = account.REGISTRATION_CERTIFICATE_NAME;
                     //acc.TAX_CERTIFICATE_NAME = account.TAX_CERTIFICATE_NAME;
                     acc.MODIFIED_BY = 1;
                     acc.MODIFIED_DATE = dt;
                     acc.STATUS_ID = account.STATUS_ID;
                //acc.IS_ACTIVE = "Y",
                //PASSWORD = CommonModel.CreateRandomPassword(8)

                if (contactList.Count > 0)
                {
                    _context.WL_ACCO_CONTACTS.RemoveRange(acc.WL_ACCO_CONTACT);
                }
                
                foreach (WL_ACCO_CONTACT r in contactList)
                {
                    //var dd = _wlcontact.GetWlAccountContact(r.CONTACT_ID);
                    r.ACCOUNT_ID = acc.ACCOUNT_ID;
                    r.CREATED_BY = acc.CREATED_BY;
                    r.CREATED_DATE = acc.CREATED_DATE;
                    _context.WL_ACCO_CONTACTS.Add(r);
                    //if (dd != null)
                    //{

                    //    //dd.FIRST_NAME = r.FIRST_NAME;
                    //    //dd.SURNAME = r.SURNAME;
                    //    //dd.MOBILE = r.MOBILE;
                    //    //dd.DESIGNIATION = r.DESIGNIATION;
                    //    //dd.EMAIL = r.EMAIL;
                    //    //dd.MODIFIED_BY = 1;
                    //    //dd.MODIFIED_DATE = dt;
                    //}
                    //else
                    //{
                    //    r.ACCOUNT_ID = acc.ACCOUNT_ID;
                    //    r.CREATED_BY = 1;
                    //    r.CREATED_DATE = dt;
                    //    _context.WL_ACCO_CONTACTS.Add(r);
                    //}
                }
                //return null;
                bool n = SaveChanges();

                if (n)
                {
                    dct.Add("success", true);
                     //EmailNotifications.SentUserNamePassword(acc.EMAIL, acc.CONTACT_PERSON_FIRST_NAME + " " + acc.CONTACT_PERSON_LAST_NAME, acc.EMAIL, acc.PASSWORD);
                   // msg = "Wayleave account created sucessfully!";
                }
                else
                {
                    dct.Add("success", false);
                    //msg = "Wayleave account created Failed!";
                }
            }
            catch (Exception ex)
            {
                dct.Add("exception", true);
                dct.Add("exception", ex.Message);
                //msg = ex.Message;
            }


            return dct;
        }

        public int DeleteWL_ACCOUNT(int id)
        {
            throw new NotImplementedException();
        }

        public IQueryable<WL_ACCOUNT> GetAllWLAccounts()
        {
            return _context.WL_ACCOUNTS;
        }

        public WL_ACCOUNT GetWL_ACCOUNT(int id)
        {
            return _context.WL_ACCOUNTS.Where(a => a.ACCOUNT_ID == id).FirstOrDefault();
        }
        public WL_ACCOUNT GetWL_ACCOUNT(string accountNo)
        {

            return _context.WL_ACCOUNTS.Where(a => a.ACCOUNT_NUMBER == accountNo).FirstOrDefault();
        }
        public bool SaveChanges()
        {
            return _context.SaveChanges() >= 0 ? true : false;
        }

        public bool ExistsEmail(string email, string userType)
        {
            return _context.WL_ACCOUNTS.Count(c => c.EMAIL == email && c.TYPE_USER == userType) > 0;
        }

        public WL_ACCOUNT WayleaveAccountLogin(string username, string password)
        {
            _context.Configuration.LazyLoadingEnabled = false;
            return _context.WL_ACCOUNTS.FirstOrDefault(c => c.EMAIL == username && c.PASSWORD == password);
        }
        protected virtual void Dispose(bool disposing)
        {
            if (!disposedValue)
            {
                if (disposing)
                {
                    // TODO: dispose managed state (managed objects)
                }

                // TODO: free unmanaged resources (unmanaged objects) and override finalizer
                // TODO: set large fields to null
                disposedValue = true;
            }
        }

        // // TODO: override finalizer only if 'Dispose(bool disposing)' has code to free unmanaged resources
        // ~WlAccountRepo()
        // {
        //     // Do not change this code. Put cleanup code in 'Dispose(bool disposing)' method
        //     Dispose(disposing: false);
        // }

        public void Dispose()
        {
            // Do not change this code. Put cleanup code in 'Dispose(bool disposing)' method
            Dispose(disposing: true);
            GC.SuppressFinalize(this);
        }

        public int UpdateWL_ACCOUNT(WL_ACCOUNT formData)
        {
            throw new NotImplementedException();
        }


        public IQueryable<WL_ACCOUNT> GetAllWLAccounts(WayleaveInputClaimModel inpuclaims)
        {
               IQueryable<WL_ACCOUNT> result = _context.WL_ACCOUNTS;
            if (!string.IsNullOrEmpty(inpuclaims.account_number))
                result = result.Where(app => app.ACCOUNT_NUMBER.Contains(inpuclaims.account_number));

            if (!string.IsNullOrEmpty(inpuclaims.contactPersonName))
                result = result.Where(app => app.CONTACT_PERSON_FIRST_NAME.ToLower().Contains(inpuclaims.contactPersonName.ToLower()));

            if (!string.IsNullOrEmpty(inpuclaims.contactPersonLastName))
                result = result.Where(app => app.CONTACT_PERSON_LAST_NAME.ToLower().Contains(inpuclaims.contactPersonLastName.ToLower()));

            if (!string.IsNullOrEmpty(inpuclaims.userType))
                result = result.Where(app => app.TYPE_USER == inpuclaims.userType);

                if (!string.IsNullOrEmpty(inpuclaims.companyFullName))
                result = result.Where(app => app.COMPANY_FULL_NAME.ToLower().Contains(inpuclaims.companyFullName.ToLower()));

            if (!string.IsNullOrEmpty(inpuclaims.mobileNumber))
                result = result.Where(app => app.MOBILE.Contains(inpuclaims.mobileNumber));

            if (!string.IsNullOrEmpty(inpuclaims.email))
                result = result.Where(app => app.EMAIL.ToLower().Contains(inpuclaims.email.ToLower()));

            if (inpuclaims.statusId != 0)
                result = result.Where(app => app.STATUS_ID == inpuclaims.statusId);

            if (inpuclaims.created_by != 0)
                result = result.Where(app => app.CREATED_BY == inpuclaims.created_by);

            if (inpuclaims.created_date != null)
                result = result.Where(app => DateTime.Compare(app.CREATED_DATE.Date, inpuclaims.created_date.Value) == 0);

            if (inpuclaims.date_requested_from != null && inpuclaims.date_requested_to != null)
            {
                inpuclaims.date_requested_to = Convert.ToDateTime(inpuclaims.date_requested_to).AddDays(1);
                result = result.Where(app => DateTime.Compare(app.CREATED_DATE, inpuclaims.date_requested_from.Value) >= 0 && DateTime.Compare(app.CREATED_DATE, inpuclaims.date_requested_to.Value) <= 0);
            }
          
            return result;
        }
    }
}