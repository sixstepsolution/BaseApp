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
    
    public partial class pr_REPORT_BillingHistoryDetails_Result
    {
        public Nullable<int> Year { get; set; }
        public System.DateTime BillDate { get; set; }
        public Nullable<long> AccountNumber { get; set; }
        public string Description { get; set; }
        public string AccountBodySection3 { get; set; }
        public Nullable<decimal> BalanceBroughtForward { get; set; }
        public Nullable<decimal> Payments { get; set; }
        public Nullable<decimal> Electricity { get; set; }
        public Nullable<decimal> Water { get; set; }
        public Nullable<decimal> Sewage { get; set; }
        public Nullable<decimal> Rates { get; set; }
        public Nullable<decimal> Vat { get; set; }
        public Nullable<decimal> Other { get; set; }
        public int Multiplier { get; set; }
        public Nullable<decimal> Total { get; set; }
        public string DownloadLink { get; set; }
    }
}
