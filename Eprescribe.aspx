<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eprescribe.aspx.cs" Inherits="RepApp.Eprescribe" MasterPageFile="~/Site.Master" Title="E Prescription" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>

    <article>
        <p>        
            E-Prescribing provides a secure way to electronically connect patients, healthcare providers, pharmacists and pharmacy. E-Prescribing will improve patient safety, improve practice efficiency, and position for pay-for-performance and other programs designed to incentivize prescribers to adopt the use of e-prescription technology.
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

        <p>        
           
        </p>
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Go to.
        </p>
        <ul>
            <li><a href="Prescription_Details.aspx">New Prescription</a></li>
            <li><a href="Prescription_History.aspx">Prescription History</a></li>
            <li><a href="Prescription_Report.aspx">Prescription Report</a></li>
        </ul>
    </aside>
</asp:Content>
