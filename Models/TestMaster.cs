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
    
    public partial class TestMaster
    {
        public string TestId { get; set; }
        public string Test { get; set; }
        public System.DateTime RecievedDate { get; set; }
        public System.DateTime SentDate { get; set; }
        public string Result { get; set; }
        public string PractitionerId { get; set; }
        public int PatientID { get; set; }
    
        public virtual PatientMaster PatientMaster { get; set; }
    }
}
