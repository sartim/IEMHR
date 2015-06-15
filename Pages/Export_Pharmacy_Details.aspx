<%@ Page Title="Export pharmacy details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Export_Pharmacy_Details.aspx.cs" Inherits="IEMHR.Pages.Export_Pharmacy_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <link href="../css/myGrid.css" rel="stylesheet" />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="5" CssClass="myGrid" AlternatingRowStyle-CssClass="alt">
        <Columns>
            <asp:BoundField HeaderText="Pharmacy Id" DataField="PharmacyId" />
            <asp:BoundField HeaderText="Pharmacy Name" DataField="PharmacyName" />
            <asp:BoundField HeaderText="Latitude" DataField="LocLat" />
            <asp:BoundField HeaderText="Longitude" DataField="LocLong" />
            <asp:BoundField HeaderText="Location" DataField="Location" />
            <asp:BoundField HeaderText="Country" DataField="Country" />
            <asp:BoundField HeaderText="Email" DataField="Email" />
            <asp:BoundField HeaderText="URL" DataField="URL" />
            <asp:BoundField HeaderText="PhoneNum" DataField="PhoneNum" />
        </Columns>
    </asp:GridView>
    <%-- Here panel is placed for contain Custom Button for  --%>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
    <div class="form-group">
        <asp:Button class="btn btn-default" ID="btnExportWord" runat="server" Text="Export To Word" OnClick="btnExportWord_Click" />&nbsp;
        <asp:Button class="btn btn-default" ID="btnExportExcel" runat="server" Text="Export To Excel" OnClick="btnExportExcel_Click" />
    </div>
</asp:Content>
