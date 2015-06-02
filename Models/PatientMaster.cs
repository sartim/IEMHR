//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IEMHR.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PatientMaster
    {
        public PatientMaster()
        {
            this.PrescriptionMasters = new HashSet<PrescriptionMaster>();
            this.TestMasters = new HashSet<TestMaster>();
        }
    
        public string PatientId { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string Age { get; set; }
        public string Gender { get; set; }
        public string HomeAddress { get; set; }
        public string PhoneNum { get; set; }
        public string Email { get; set; }
        public string Nationality { get; set; }
        public string NextOfKin { get; set; }
        public string NextOfKinContact { get; set; }
    
        public virtual ICollection<PrescriptionMaster> PrescriptionMasters { get; set; }
        public virtual ICollection<TestMaster> TestMasters { get; set; }
    }
}
