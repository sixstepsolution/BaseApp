using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace C8.eServices.Mvc.Models.Mapings
{
    public class AddUserModal
    {
        public int userid { get; set; }
        [Required]
        public string userType { get; set; }
        [Required]
        public string firstName { get; set; }
        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        //[RegularExpression(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{6,15}$", ErrorMessage = "The password must contain at least one uppercase character, one lowercase character, one numeric and one special character")]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string password { get; set; }
        [DataType(DataType.Password)]
        [Display(Name = "Confirm password")]
        [Compare("password", ErrorMessage = "The password and confirmation password do not match.")]
        public string confirmpassword { get; set; }
        [Required]
        public string lastName { get; set; }
        [Required]
        public string username { get; set; }
        [Display(Name = "Email Address")]
        [EmailAddress(ErrorMessage = "Invalid Email Address")]
        [DataType(DataType.EmailAddress)]
        public string emailAddress { get; set; }
        [Phone(ErrorMessage = "Invalid Mobile Number")]
        [Display(Name = "Mobile Number")]
        [DataType(DataType.PhoneNumber)]
        public string cellPhone { get; set; }
        [Required]
        public string deptartmentname { get; set; }
        [Required]
        public string userRole { get; set; }
        public bool isActiveDirectory { get; set; }
        public string paymentPrice { get; set; }
    }
}