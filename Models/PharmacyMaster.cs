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
    
    public partial class PharmacyMaster
    {
        public PharmacyMaster()
        {
            this.PrescriptionMasters = new HashSet<PrescriptionMaster>();
        }
    
        public string PharmacyId { get; set; }
        public string PharmacyName { get; set; }
        public string LocLat { get; set; }
        public string LocLong { get; set; }
        public string Location { get; set; }
        public string Country { get; set; }
        public string Email { get; set; }
        public string URL { get; set; }
        public string PhoneNum { get; set; }
    
        public virtual ICollection<PrescriptionMaster> PrescriptionMasters { get; set; }
    }
}