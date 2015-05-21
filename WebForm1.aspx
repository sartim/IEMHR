<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RepApp.WebForm1" MasterPageFile="~/MasterSite.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Intergrated Electronic Medical &amp Health Record</h1>
        <p class="lead">Welcome to Integrated Electronic Medical and Health Record Web application.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2><a href="Eprescribe.aspx">E Prescription</a></h2>
            <p>
                Provides a secure way to electronically connect patients, healthcare providers, 
            pharmacists and Pharmacy.
            </p>
            <p>
                <a href="Eprescribe.aspx">Learn more…</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2><a href="Electronic_Medical_Record.aspx">Electronic Medical Record</a></h2>
            <p>
                Billing system integration, automatic remiders, document scanning and medical 
            tracking.
            </p>
            <p>
                <a href="Electronic_Medical_Record.aspx">Learn more…</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2><a href="Electronic_Health_Record.aspx">Electronic Health Record</a></h2>
            <p>
                Share info with other healthcare providers, follow patient, get information from 
            all the clinicians in volved and more.&nbsp;
            </p>
            <p>
                <a href="Electronic_Health_Record.aspx">Learn more…</a>
            </p>
        </div>
    </div>

</asp:Content>
