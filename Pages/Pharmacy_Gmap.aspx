<%@ Page Title="Pharmacy Location" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pharmacy_Gmap.aspx.cs" Inherits="IEMHR.Pages.Pharmacy_Gmap" %>

<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div>
        <%--<cc1:GMap ID="GMap1" runat="server" Width="800px" Height="500px" />--%>
        <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d63821.67380373672!2d36.7895437389013!3d-1.2593384295757797!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1spharmacies+in+kenya!5e0!3m2!1sen!2s!4v1433086979993" width="600" height="450" frameborder="0" style="border:0"></iframe>
    </div>
</asp:Content>
