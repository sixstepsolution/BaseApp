﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Xml;
using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Helpers;
using C8.eServices.Mvc.Keys;
using C8.eServices.Mvc.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.SharePoint.Client;
using Microsoft.SharePoint.Copy;
using Microsoft.SharePoint.DocumentWorkspace;
using System.Data.Entity.Validation;
using System.Net.Mime;
using System.Text.RegularExpressions;

namespace C8.eServices.Mvc.Controllers
{
    public class FileController : Controller
    {
        //private eServicesDbContext _context = new eServicesDbContext();
        BaseHelper _base = new BaseHelper();
        private const string regExp = "(?:[^a-zA-Z0-9.)( ]|(?<=['\"])s)";
        public FileController()
        {
            eServicesDbContext _context = new eServicesDbContext();
            //IdentityManager = new IdentityManager(_context);
            UserManager =
                new UserManager<SystemIdentityUser>(
                new UserStore<SystemIdentityUser>(_context));
        }

        public IdentityManager IdentityManager { get; set; }
        public UserManager<SystemIdentityUser> UserManager { get; private set; }
        private int SystemUserId = -1;
        /// <summary>
        /// Adds the document.
        /// Gets the configurations for adding documents from AppSettings.
        /// </summary>
        /// <param name="folder">The folder - The application reference number generated by the system.</param>
        /// <returns></returns>
        [Authorize(Roles = "Administrators" + "," + "Customers" + "," + "Super Administrators" + "," + "Clerks")]
        public ActionResult AddDocument(string folder)
        {
            using (eServicesDbContext _context = new eServicesDbContext())
            {
                //_base.Initialise(_context);

                var success = false;
                var document = new Document();

                try
                {
                    // Grab values from the documents form.
                    int customerId = (Request.Form["CustomerId"] != "") ? Convert.ToInt32(Request.Form["CustomerId"]) : 0;
                    var referenceTypeId = Convert.ToInt32(Request.Form["ReferenceTypeId"]);
                    var referenceId = Convert.ToInt32(Request.Form["ReferenceId"]);
                    var applicationId = Convert.ToInt32(Request.Form["ApplicationId"]);
                    var statusId = Convert.ToInt32(Request.Form["StatusId"]);
                    var documentCheckListIds = Request.Form["DocumentCheckListIds"].Split(new char[] { '_' }, StringSplitOptions.RemoveEmptyEntries);
                    var dbLocationType = _context.LocationTypes.FirstOrDefault(l => l.Key == LocationTypeKeys.Database);

                    var application =
                        _context.Applications.FirstOrDefault(a => a.Id == applicationId && a.IsActive && !a.IsDeleted);
                    if (application == null) throw new Exception("Invalid Application");


                    // Default document status.
                    var status = _context.Status.SingleOrDefault(o => o.Key == StatusKeys.DocumentUploaded);
                    if (status == null) throw new Exception("Invalid status");



                    // JK.2016-02-03a - Allow multiple files to be uploaded, but restricted from the view.
                    for (int i = 0; i < Request.Files.Count; i++)
                    {
                        try
                        {
                            HttpPostedFileBase file = Request.Files[i];
                            Models.File oFile = new Models.File();

                            if (application.Key == ApplicationKeys.IncentivePolicy)
                            {
                                var locationType =
                                    _context.LocationTypes.FirstOrDefault(l => l.Key == LocationTypeKeys.UploadDirectory);
                                if (locationType == null)
                                    throw new Exception(string.Format("Invalid or missing Location Type Key - {0}",
                                        LocationTypeKeys.UploadDirectory));

                                //var documentStorage =
                                //    _context.AppSettings.FirstOrDefault( a => a.Key == AppSettingKeys.IncentivePolicyDocumentLocation);
                                //if (documentStorage == null) throw new Exception(string.Format("Invalid/ missing application setting key - {0}", AppSettingKeys.IncentivePolicyDocumentLocation));

                                var uploadHtmlDirectory = _context.AppSettings.SingleOrDefault(a => a.Key == AppSettingKeys.UploadNetworkDirectory && a.IsActive && !a.IsDeleted);
                                if (uploadHtmlDirectory == null) throw new Exception(string.Format("Invalid or missing application setting key - {0}", AppSettingKeys.UploadNetworkDirectory));

                                //Upload File
                                document = UploadFiles(file, Convert.ToInt32(documentCheckListIds[i]), Server.MapPath(uploadHtmlDirectory.Value), locationType.Id);

                                document.DocumentLocation = locationType.Name;
                                document.ReferenceId = referenceId;
                                document.CustomerId = customerId;
                                document.ReferenceTypeId = referenceTypeId;
                                document.DocumentCheckListId = Convert.ToInt32(documentCheckListIds[i]);
                                document.StatusId = status.Id;
                                document.IsActive = true;
                                document.IsDeleted = false;

                                _context.Documents.Add(document);
                                _context.SaveChanges();
                            }
                            else
                            {
                                Stream fileContent = file.InputStream;
                                oFile.FileName = file.FileName;
                                oFile.ContentType = file.ContentType;
                                oFile.Content = new byte[fileContent.Length];
                                fileContent.Read(oFile.Content, 0, (int)fileContent.Length);
                                oFile.FileSize = (Int64)file.ContentLength;

                                _context.Files.Add(oFile);
                                _context.SaveChanges();


                                document = new Document()
                                {
                                    CustomerId = customerId,
                                    ReferenceTypeId = referenceTypeId,
                                    ReferenceId = referenceId,
                                    DocumentCheckListId = Convert.ToInt32(documentCheckListIds[i]),
                                    LocationTypeId = dbLocationType.Id,
                                    StatusId = status.Id,
                                    DocumentLocation = string.Format("{0}", "eServicesDb"),
                                    DocumentName = oFile.FileName,
                                    FileId = oFile.Id,
                                    IsActive = true,
                                    IsDeleted = false
                                };
                                _context.Documents.Add(document);
                                _context.SaveChanges();
                            }

                            if (document.Id > 0)
                            {
                                _context.DocumentReferences.Add(new DocumentReference()
                                {
                                    DocumentId = document.Id,
                                    ReferenceId = referenceId,
                                    ApplicationId = applicationId,
                                    ReferenceTypeId = referenceTypeId,
                                    IsActive = true,
                                    IsDeleted = false
                                });

                                //_context.SaveChanges();
                                success = true;
                            }

                            _context.SaveChanges();
                        }
                        catch (Exception ex)
                        {
                            SecurityHelper.LogError(new Exception(
                                $"Document Error: {ex.Message}  Inner Exception: {ex.InnerException}"), null);
                        }
                    }

                    var referenceType = _context.ReferenceTypes.FirstOrDefault(rf => rf.Id == referenceTypeId);
                    if (referenceType == null) throw new Exception("Invalid reference type");

                    switch (referenceType.Key)
                    {
                        case ReferenceTypeKeys.LinkedAccounts:
                        case ReferenceTypeKeys.LinkedAccountsManagingAgent:
                            LinkedAccountHelper.PopulateDocuments(referenceId);
                            break;
                        case ReferenceTypeKeys.CustomerProfile:
                            CustomerHelper.PopulateDocuments(customerId);
                            break;
                    }
                }
                catch (Exception ex)
                {
                    throw ex;
                }

                var obj = new
                {
                    status = success ? "Success" : "Failure"
                };

                return Json(obj);
            }
        }

        //Bulk Upload File Upload
        [Authorize(Roles = "Administrators" + "," + "Customers" + "," + "Super Administrators" + "," + "Clerks")]
        public ActionResult ManualAddDocument(int customerId, int referenceTypeId, int applicationId,
            List<int> bulkUploadReferenceIds, List<HttpPostedFileBase> documents)
        {
            using (var context = new eServicesDbContext())
            {
               // _base.Initialise(context);

                try
                {
                    var documentType = context.DocumentTypes.FirstOrDefault(dt => dt.Key == DocumentTypeKeys.Authority);
                    if (documentType == null) throw new Exception("Invalid document type");

                    var documentCheckList = context.DocumentCheckLists.FirstOrDefault(dc => dc.ApplicationId == applicationId
                                            && dc.DocumentTypeId == documentType.Id
                                            && dc.ReferenceTypeId == referenceTypeId);
                    if (documentCheckList == null) throw new Exception("Invalid documentchecklist");

                    var dbLocationType = context.LocationTypes.FirstOrDefault(l => l.Key == LocationTypeKeys.Database);
                    if (dbLocationType == null) throw new Exception("Invalid location type");

                    // Default document status.
                    var status = context.Status.SingleOrDefault(o => o.Key == StatusKeys.DocumentUploaded);
                    if (status == null) throw new Exception("Invalid status");

                    // JK.2016-02-03a - Allow multiple files to be uploaded, but restricted from the view.
                    for (var i = 0; i < documents.Count; i++)
                    {
                        try
                        {
                            var file = documents[i];
                            var oFile = new Models.File();
                            var fileContent = file.InputStream;

                            oFile.FileName = file.FileName;
                            oFile.ContentType = file.ContentType;
                            oFile.Content = new byte[fileContent.Length];
                            fileContent.Read(oFile.Content, 0, (int)fileContent.Length);
                            oFile.FileSize = (Int64)file.ContentLength;

                            context.Files.Add(oFile);
                            context.SaveChanges();

                            foreach (var bulkUploadReference in bulkUploadReferenceIds)
                            {
                                var document = new Document()
                                {
                                    CustomerId = customerId,
                                    ReferenceTypeId = referenceTypeId,
                                    ReferenceId = bulkUploadReference,
                                    DocumentCheckListId = documentCheckList.Id,
                                    LocationTypeId = dbLocationType.Id,
                                    StatusId = status.Id,
                                    DocumentLocation = string.Format("{0}", "eServicesDb"),
                                    DocumentName = oFile.FileName,
                                    FileId = oFile.Id,
                                    IsActive = true,
                                    IsDeleted = false
                                };

                                context.Documents.Add(document);
                                context.SaveChanges();

                                if (document.Id > 0)
                                {
                                    context.DocumentReferences.Add(new DocumentReference()
                                    {
                                        DocumentId = document.Id,
                                        ReferenceId = bulkUploadReference,
                                        ApplicationId = applicationId,
                                        ReferenceTypeId = referenceTypeId,
                                        IsActive = true,
                                        IsDeleted = false
                                    });
                                }

                                context.SaveChanges();
                            }
                        }
                        catch (Exception ex)
                        {
                            SecurityHelper.LogError(new Exception(string.Format("Document Error: {0}  Inner Exception: {1}", ex.Message, ex.InnerException)), null);
                        }
                    }
                }
                catch (Exception ex)
                {
                    throw;
                }

                return Json(true);
            }
        }

        [EncryptedActionParameter]
        [Authorize(Roles = "Administrators" + "," + "Customers" + "," + "Super Administrators" + "," + "Clerks")]
        public ActionResult DeleteDocument(int documentId)
        {
            using (eServicesDbContext _context = new eServicesDbContext())
            {
                //_base.Initialise(_context);
                var isDeleted = false;
                var document = _context.Documents.Include(d => d.Customer).FirstOrDefault(d => d.Id == documentId);

                if (document == null)
                    return Json(new { status = "Failure" });

                document.IsActive = false;
                document.IsDeleted = true;
                _context.Entry(document).State = EntityState.Modified;
                _context.SaveChanges();

                var referenceType = _context.ReferenceTypes.FirstOrDefault(rf => rf.Id == document.ReferenceTypeId);

                if (referenceType == null) throw new Exception("Invalid reference type");

                var uploadHtmlDirectory = _context.AppSettings.SingleOrDefault(a => a.Key == AppSettingKeys.UploadNetworkDirectory && a.IsActive && !a.IsDeleted);
                if (uploadHtmlDirectory == null) throw new Exception(string.Format("Invalid or missing application setting key - {0}", AppSettingKeys.UploadNetworkDirectory));

                var documentType =
                        _context.DocumentCheckLists.Include(d => d.DocumentType)
                            .FirstOrDefault(c => c.Id == document.DocumentCheckListId && c.IsActive && !c.IsDeleted);
                if (documentType == null) throw new Exception("Invalid Document CheckList");

                var path = Path.Combine(Server.MapPath(uploadHtmlDirectory.Value), documentType.DocumentType.Name,
                    document.DocumentName);
                switch (referenceType.Key)
                {
                    case ReferenceTypeKeys.LinkedAccounts:
                    case ReferenceTypeKeys.LinkedAccountsManagingAgent:
                        LinkedAccountHelper.PopulateDocuments(document.ReferenceId);
                        break;
                    case ReferenceTypeKeys.CustomerProfile:
                        CustomerHelper.PopulateDocuments(document.Customer.Id);
                        break;
                    case ReferenceTypeKeys.IncentivePolicyProperty:
                        isDeleted = RemoveFile(path);
                        break;
                       
                }
                var obj = new object();
                if (referenceType.Key == ReferenceTypeKeys.IncentivePolicyProperty)
                {
                    var status = isDeleted ? "Success" : "Failure";
                    obj = new { status };
                }
                else
                {
                    obj = new { status = "Success" };
                }

                return Json(obj, JsonRequestBehavior.AllowGet);
            }
        }

        /// <summary>
        /// Remove File from location
        /// </summary>
        /// <param name="targetLocation"></param>
        public bool RemoveFile(string targetLocation)
        {
            var isSuccess = false;
            try
            {
                if (System.IO.File.Exists(targetLocation))
                {
                    System.IO.File.Delete(targetLocation);
                    isSuccess = true;
                }
            }
            catch (Exception ex)
            {
                SecurityHelper.LogError(ex, "Error");
            }
            return isSuccess;
        }
        [EncryptedActionParameter]
        [Authorize(Roles = "Administrators" + "," + "Customers" + "," + "Super Administrators" + "," + "Clerks")]
        public ActionResult GetDocument(int fileId)
        {
            using (eServicesDbContext _context = new eServicesDbContext())
            {
                //_base.Initialise(_context);
                SystemUserId = _base.SystemUser.Id;

                var file = _context.Files.Find(fileId);
                var document = _context.Documents.FirstOrDefault(d => d.FileId == fileId);

                if (document == null) throw new Exception("Document not found");

                var mimType = MimeMapping.GetMimeMapping(document.DocumentName);

                //Checks if current file belongs to system user profile/ managing agent customer profile.
                if (SystemUserId != -1 &&
                    !SecurityHelper.VerifySystemUserOwnership(SystemUserId, file, ViewCodeKeys.ViewUploadedFile))
                {
                    SecurityHelper.LogError(new Exception("Malicious Activity"), null);
                    return RedirectToAction("Index", "Error");
                }

                return File(file.Content, mimType, document.DocumentName);
            }
        }

        [EncryptedActionParameter]
        [Authorize(Roles = "Administrators" + "," + "Customers" + "," + "Super Administrators" + "," + "Clerks")]
        public ActionResult GetDocumentFromLocation(string generatedFileLocation)
        {
            // Render arguments
            byte[] result = null;
            string mimeType = null;
            string filename = Path.GetFileNameWithoutExtension(generatedFileLocation);
            var name = Path.GetFileName(generatedFileLocation) ?? "Unknown";
            try
            {
                // Get the file document for streaming to browser.
                using (var stream = System.IO.File.Open(@generatedFileLocation, FileMode.Open))
                {
                    // Used to allow the user to download the file.
                    var cd = new ContentDisposition()
                    {
                        FileName = filename,
                        // always prompt the user for downloading, set to true if you want 
                        // the browser to try to show the file inline
                        Inline = false
                    };

                    mimeType = MimeMapping.GetMimeMapping(name);
                    Response.AppendHeader("Content-Disposition", cd.ToString());
                    Response.ContentType = "application/octet-stream";

                    using (var memory = new MemoryStream())
                    {
                        stream.CopyTo(memory);
                        result = memory.GetBuffer();

                        memory.Close();
                    }

                    stream.Close();
                }


            }
            catch (Exception ex)
            {
                SecurityHelper.LogError(ex, "Error");
            }
            return File(result, mimeType, filename);
        }

        /// <summary>
        /// Upload documents to a network location
        /// </summary>
        /// <param name="file"></param>
        /// <param name="documentCheckListId"></param>
        /// <param name="targetLocation">The Document Physical Location</param>
        /// <param name="locationTypeId"></param>
        /// <returns></returns>
        public Document UploadFiles(HttpPostedFileBase file, int documentCheckListId, string targetLocation, int locationTypeId)
        {
            var doc = new Document();
            var _context = new eServicesDbContext();
            try
            {
                var newFile = "";
                var documentType =
                        _context.DocumentCheckLists.Include(d => d.DocumentType)
                            .FirstOrDefault(c => c.Id == documentCheckListId && c.IsActive && !c.IsDeleted);
                if (documentType == null) throw new Exception("Invalid Document CheckList");

                //create file directory if it doesn't exist
                Directory.CreateDirectory(Path.Combine(targetLocation, documentType.DocumentType.Name));
                var ext = Path.GetExtension(file.FileName);

                MemoryStream target = new MemoryStream();
                file.InputStream.CopyTo(target);
                byte[] result = target.ToArray();

                //var fileName = Path.GetFileNameWithoutExtension(file.FileName);
                var fileName = Path.GetFileName(file.FileName);
                // Removes special characters
                fileName = RemoveSpecialCharacters(fileName);

                if (fileName != null)
                {

                    newFile = Path.Combine(targetLocation, documentType.DocumentType.Name, fileName);
                    //newFile = string.Format(@"{0}\{1}",
                    //    HostingEnvironment.MapPath(string.Format("/FileUpload/EconomicDevelopmentDocuments/{0}", docReference.ToUpper())), file.FileName);
                }

                if (System.IO.File.Exists(newFile)) // file with same name exists, rename new file.
                {
                    var newfileName = Path.GetFileNameWithoutExtension(fileName) + DateTime.Today.Ticks;
                    fileName = string.Format("{0}{1}", newfileName, ext);
                    newFile = Path.Combine(targetLocation, documentType.DocumentType.Name, fileName);
                    
                }
                System.IO.File.Create(newFile).Close();
                System.IO.File.WriteAllBytes(newFile, result);

                //Checks if the filename has the path with it and truncates the path from the filename.
                if (fileName.LastIndexOf(@"\", StringComparison.Ordinal) > 0)
                {
                    fileName = fileName.Substring(fileName.LastIndexOf(@"\"));
                }
                
                doc = new Document { DocumentName = fileName, LocationTypeId = locationTypeId };
            }

            catch (Exception ex)
            {
                SecurityHelper.LogError(ex, "Errror");
            }
            return doc;
        }

        /// <summary>
        /// LM.20150422a - Removes and replace special characters from a given string 
        /// using regular expression.
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static string RemoveSpecialCharacters(string input)
        {
            var r = new Regex(regExp, RegexOptions.IgnoreCase | RegexOptions.CultureInvariant | RegexOptions.Compiled);
            return r.Replace(input, "_");
        }

    }
}