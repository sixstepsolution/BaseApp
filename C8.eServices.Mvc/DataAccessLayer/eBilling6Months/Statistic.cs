//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace C8.eServices.Mvc.DataAccessLayer.eBilling6Months
{
    using System;
    using System.Collections.Generic;
    
    public partial class Statistic
    {
        public int Id { get; set; }
        public System.DateTime BillDate { get; set; }
        public Nullable<int> Accounts { get; set; }
        public Nullable<int> EmailAccounts { get; set; }
        public Nullable<int> ExpectedAccounts { get; set; }
        public Nullable<int> PendingEmails { get; set; }
        public Nullable<int> CompletedEmails { get; set; }
        public Nullable<int> Errors { get; set; }
    }
}
