<%@ Page Title="EHR" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EHR.aspx.cs" Inherits="IEMHR_ASP_App.Pages.EHR" %>

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
            
            <h1>Features</h1>
        <ul>
            <li>Billing System Integration</li>
            <li>Automatic Reminder</li>
            <li>Document Scanning</li>
            <li>Medication Tracking</li>
    </ul>
    </div>
</asp:Content>