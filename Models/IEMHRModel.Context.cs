﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class IEMHR_DB_Entities : DbContext
    {
        public IEMHR_DB_Entities()
            : base("name=IEMHR_DB_Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
        public virtual DbSet<AspNetRole> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaim> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogin> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<PatientMaster> PatientMasters { get; set; }
        public virtual DbSet<PharmacyMaster> PharmacyMasters { get; set; }
        public virtual DbSet<PhysicianMaster> PhysicianMasters { get; set; }
        public virtual DbSet<PrescriptionMaster> PrescriptionMasters { get; set; }
        public virtual DbSet<ScheduleMaster> ScheduleMasters { get; set; }
        public virtual DbSet<TestMaster> TestMasters { get; set; }
    }
}