﻿using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models
{
    public class AppUser : IdentityUser
    {
        //add your custom properties which have not included in IdentityUser before
        public string MyExtraProperty { get; set; }
    }
}