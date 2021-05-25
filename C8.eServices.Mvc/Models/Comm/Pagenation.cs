using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Comm
{
    public class Pagenation<T>
    {
        public List<T> applications { get; set; }
        public string totalCount { get; set; }
       
        public Func<WL_APPLICATIONFORM, object> orderByType1(string orderProperty)
        {
            //orderProperty = orderProperty?.ToLowerInvariant();
            switch (orderProperty)
            {
                case "APPLICATION_NUMBER":
                    return x => x.APPLICATION_NUMBER;

                case "CONSULTANT_NAME":
                    return x => x.CONSULTANT_NAME;                
                case "APP_ID":
                    return x => x.APP_ID;                
                default:
                    return x => x.APPLICATION_NUMBER;

            }
        }

       
    }
}