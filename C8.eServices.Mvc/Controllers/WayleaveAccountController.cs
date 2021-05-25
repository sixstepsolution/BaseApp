using C8.eServices.Mvc.DataAccessLayer;
using C8.eServices.Mvc.Models.Mapings;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.Mvc;
using System.Configuration;

namespace C8.eServices.Mvc.Controllers
{
    public class WayleaveAccountController : Controller
    {
        // GET: WayleaveAccount
        public ActionResult Index()
        {
            //ViewBag.ApplicationData = null;
            //using (var context = new WayleaveDbContext())
            //{
            //    ViewBag.ApplicationData = context.WL_APPLICATIONFORM.ToList();
            //}
            IEnumerable<ApplicationInputModel> members = null;

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["Api_Url"].ToString());
                ApplicationInputClaimModel inpuclaims = new ApplicationInputClaimModel();
                inpuclaims.created_by = Convert.ToInt32(Session["wayleaveaccountId"] != null ? Session["wayleaveaccountId"].ToString() : "0");
                var myContent = JsonConvert.SerializeObject(inpuclaims);
                var buffer = System.Text.Encoding.UTF8.GetBytes(myContent);
                var byteContent = new ByteArrayContent(buffer);
                byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
                //Called Member default GET All records  
                //GetAsync to send a GET request   
                // PutAsync to send a PUT request  
                ///var result = client.PostAsync("", byteContent).Result
                var responseTask = client.PostAsync("api/get-applications-with-counts", byteContent);
                responseTask.Wait();

                //To store result of web api response.   
                var result = responseTask.Result;

                //If success received   
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<IList<ApplicationInputModel>>();
                    readTask.Wait();

                    members = readTask.Result;
                    ViewBag.ApplicationData = members;
                }   
                else
                {
                    //Error response received   
                    members = Enumerable.Empty<ApplicationInputModel>();
                    ModelState.AddModelError(string.Empty, "Server error try after some time.");
                }
            }            
            return View();
        }

        public ActionResult WayleaveAccount()
        {
            return View();
        }

        public ActionResult WayleaveApplicationForm()
        {
            return View();
        }
    }
}