using System.Web.Optimization;

namespace C8.eServices.Mvc
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {

            //bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
            //            "~/Scripts/jquery-{version}.js",
            //            "~/Scripts/HoldOn.min.js",
            //            "~/Scripts/multiple-emails.js",
            //            "~/Scripts/readonly.js"));

            //bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
            //          "~/Scripts/bootstrap.js",
            //          "~/Scripts/bootstrap-table.js",
            //          "~/Scripts/bootstrap-datepicker.js",
            //          "~/Scripts/bootstrap-datepicker.min.js",
            //          "~/Scripts/bootbox.min.js",
            //          "~/Scripts/bootstrap-multiselect.js"));

            //bundles.Add(new ScriptBundle("~/bundles/jqueryvalidate").Include(
            //          "~/Scripts/jquery.validate.js"));

            //bundles.Add(new StyleBundle("~/Content/css").Include(
            //          "~/Content/bootstrap.css",
            //          "~/Content/bootstrap-table.css",
            //          "~/Content/bootstrap-datepicker.css",
            //          "~/Content/bootstrap-datepicker.min.css",
            //          "~/Content/Custom.css",
            //          "~/Content/HoldOn.min.css",
            //          "~/Content/multiple-emails.css",
            //          "~/Content/jquery.datetimepicker.css",
            //          "~/Content/datatables/css/dataTables.bootstrap.min.css",
            //          "~/Content/progress-steps.css",
            //          "~/Content/bootstrap-multiselect.css"));
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/wayleaveScripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/wayleaveScripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/wayleaveScripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/wayleaveScripts/bootstrap.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/wayleaveStyles/Content/bootstrap.css",
                      "~/Content/wayleaveStyles/Content/site.css"));
        }
    }
}