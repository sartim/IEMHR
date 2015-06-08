<%@ Page Title="EMR" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EMR.aspx.cs" Inherits="IEMHR_ASP_App.Pages.EMR" %>

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
            
            <h1>Features</h1>
        <ul>
            <li>Billing System Integration</li>
            <li>Automatic Reminder</li>
            <li>Document Scanning</li>
            <li>Medication Tracking</li>
    </ul>
    </div>
</asp:Content>
