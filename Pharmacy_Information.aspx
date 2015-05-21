<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pharmacy_Information.aspx.cs" Inherits="RepApp.Prescription_History" MasterPageFile="~/Site.Master" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>

    <article>
        




    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Go to.
        </p>
        <ul>
        <li><a href="Review_Prescription.aspx">Review Prescription</a></li>
            <li><a href="Prescription_History.aspx">Prescription History</a></li>
            <li><a href="#">Physician Information</a></li>
            <li><a href="#">Pharmacy Information</a></li>
        </ul>
        <ul>
        
        </ul>
    </aside>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
        }
        .style3
        {
            width: 227px;
        }
    </style>
</asp:Content>
