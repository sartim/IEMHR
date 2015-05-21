<%@ Page Title="EMR" Language="C#" AutoEventWireup="true" CodeBehind="Electronic_Medical_Record.aspx.cs" Inherits="RepApp.Elecronic_Medical_Record" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>

    <article>
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

        <p>        
           
        </p>
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Go to.
        </p>
        <ul>
            <li><a href="Patient_Details.aspx">New Patient</a></li>
            <li><a href="#">Prescription History</a></li>
            <li><a href="#">Medical History</a></li>
        </ul>
    </aside>
</asp:Content>