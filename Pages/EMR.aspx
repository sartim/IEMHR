<%@ Page Title="EMR" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EMR.aspx.cs" Inherits="IEMHR.Pages.EMR" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <div>
        <p>        
            Electronic Medical Records are deigitalized versions of
            the paper charts in clinician offices and hospitals. EMR contain notes and 
            information collected by and for all the clinicians in that office, clinic or 
            hospital and are mostly used by providers for diagnosis and treatment. EMR is 
            more valuable tha paper based records because it enebles providers to track data 
            over time, identify visits and screenings, monitor patients and improve 
            healthcare quality.
        </p>
     </div>
    <h3>Click on the buttons to use any of the features</h3>
    <div class="bs-example">
        <div class="btn-group-horizontal">
        <asp:Button runat="server" Text="Patient Management" CssClass="btn btn-default btn-lg btn-block" 
            ID="PatientManagementButton" PostBackUrl="~/Pages/Patient_Management.aspx" />
        <asp:Button runat="server" Text="Patient Chart" CssClass="btn btn-default btn-lg btn-block" 
            ID="PatientChartButton" PostBackUrl="~/Pages/Patient_Chart.aspx" />
        <asp:Button runat="server" Text="Import/Export" CssClass="btn btn-default btn-lg btn-block" 
            ID="ImportExportButton" PostBackUrl="~/Pages/Export_Patient_Details.aspx" />
            
        </div>
    </div>


</asp:Content>
