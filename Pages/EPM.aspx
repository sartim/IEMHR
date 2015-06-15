<%@ Page Title="EPM" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EPM.aspx.cs" Inherits="IEMHR.Pages.EPM" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <div>
        <p>        
            EPM (Electronic Prescription Management) is an E-Prescribing system which provides a 
            secure way to electronically connect patients, healthcare providers, pharmacists and 
            pharmacy. E-Prescribing will improve patient safety, improve practice efficiency, and 
            position for pay-for-performance and other programs designed to incentivize prescribers to 
            adopt the use of e-prescription technology.
        </p>
            <h1>How It Works</h1>
        <ul>
            <li>Healthcare provider will enter patient information such as patient name, date of 
                birth, gender and address into a hand held device or desktop computer and submit 
                a request for information.</li>
            <li>The provider then can access patient information such as formularly infromation, 
                medication history from all the patient&#39;s healthcare providers and pharmacy 
                benefit information.</li>
            <li>The healthcare provider can then use this information to help select the most 
                clinically appropriate and cost-effective medication therapy.</li>
            <li>The patient chooses a retail or mail order pharmacy and the provider 
                electronically routes the prescription to the pharmacy.</li>
    </ul>
    </div>
</asp:Content>