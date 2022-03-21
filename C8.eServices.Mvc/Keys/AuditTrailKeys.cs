using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Keys
{
    public class AuditTrailKeys
    {
        public const string PendingPayment = "Pending Payment";
        public const string Applicationcaptured = "Application submitted";
        public const string Applicationviewed = "Application viewed";
        public const string Distributed_to_Departments = "Distributed to Departments";
        public const string ApplicationRejected = "Application Rejected";
        public const string ApplicationGranted = "Application Granted";
        public const string UploadedPaymentReciept = "Uploaded Payment reciept";
        public const string Updated_to_Affected = "Updated to Affected";
        public const string Updated_to_NotAffected = "Updated to Not Affected";
        public const string Updated_to_ApplicationGranted = "Updated to Application Granted";
        public const string Updated_to_ApplicationRejected = "Updated to Application Rejected";
        public const string SuccessfulOutcome = "Successful";
        public const string UnSuccessfulOutcome = "Un Successful";
    }

    public class ReportKeys
    {
        public const string PdfKey = "PDF";
        public const string ExcelKey = "EXCELOPENXML";
        public const string WordKey = "msword";
        public const string PdfExtension = ".pdf";
        public const string ExcelExtension = ".xlsx";
        public const string WordExtension = ".docx";
    }
}