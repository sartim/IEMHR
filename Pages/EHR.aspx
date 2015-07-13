<%@ Page Title="EHR" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EHR.aspx.cs" Inherits="IEMHR.Pages.EHR" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <div>
        <p>        
            Electronic Health Record is built to go beyond standard electronic data collected in
            a provider's office and are inclusive of a broader view of patient's care. EHR contain 
            information from all cliniciansinvolved in a patient's care and all authorized clinicians 
            involved in a patient's  can access the information to provide care to that patient. EHR can
            be used to share information with other healthcare providers, such as laboratories and specialists.

        </p>
    </div>
    <h3>Click on the buttons to use any of the features</h3>
    <div class="bs-example">
        <div class="btn-group-horizontal">
        <asp:Button runat="server" Text="Physician Management" CssClass="btn btn-default btn-lg btn-block" 
            ID="PhysicianManagementButton" PostBackUrl="~/Pages/Physician_Management.aspx" />
        <asp:Button runat="server" Text="Import/Export Physician Details" CssClass="btn btn-default btn-lg btn-block" 
            ID="I_E_PhysicianBtn" PostBackUrl="~/Pages/Export_Physician_Details.aspx" /> 
        <asp:Button runat="server" Text="Clinic Management" CssClass="btn btn-default btn-lg btn-block" 
            ID="ClinicManagementButton" PostBackUrl="~/Pages/Clinic_Management.aspx" /> 
        <asp:Button runat="server" Text="Import/Export Clinic Details" CssClass="btn btn-default btn-lg btn-block" 
            ID="I_E_ClinicBtn" PostBackUrl="~/Pages/Export_Clinic_Details.aspx" /> 
        <asp:Button runat="server" Text="Hospital Management" CssClass="btn btn-default btn-lg btn-block" 
            ID="HospitalManagementButton" PostBackUrl="~/Pages/Hospital_Management.aspx" /> 
        <asp:Button runat="server" Text="Import/Export Hospital Detail" CssClass="btn btn-default btn-lg btn-block" 
            ID="I_E_HospitalBtn" PostBackUrl="~/Pages/Export_Hospital_Details.aspx" />
        </div>
    </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>
