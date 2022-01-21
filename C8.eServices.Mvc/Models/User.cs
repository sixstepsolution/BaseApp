namespace C8.eServices.Mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            Roles = new HashSet<Role>();
        }

        public int userid { get; set; }

        [Required]
        public string username { get; set; }

        [Required]
        public string password { get; set; }
        public string deptartmentname { get; set; }

        public string firstName { get; set; }
        public string lastName { get; set; }
        public string emailAddress { get; set; }
        [StringLength(20)]
        public string cellPhone { get; set; }
        [StringLength(5)]
        public string isActiveDirectory { get; set; }
        public string signature { get; set; }
        [StringLength(50)]
        public string region { get; set; }
        public DateTime? createdDate { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Role> Roles { get; set; }
    }
}
