<%@ Page Title="Export physician details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Export_Physician_Details.aspx.cs" Inherits="IEMHR.Pages.Export_Physician_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <link href="../css/myGrid.css" rel="stylesheet" />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="5" CssClass="myGrid" AlternatingRowStyle-CssClass="alt">
        <Columns>
            <asp:BoundField HeaderText="Physician Id" DataField="PrescriptionId " />
            <asp:BoundField HeaderText="First Name" DataField="FirstName" />
            <asp:BoundField HeaderText="Middle Name" DataField="MiddleName" />
            <asp:BoundField HeaderText="Last Name" DataField="LastName" />
            <asp:BoundField HeaderText="Email" DataField="Email" />
            <asp:BoundField HeaderText="Phone Number" DataField="PhoneNo" />
            <asp:BoundField HeaderText="MPDB Reg Number" DataField="MPDBRegNoe" />
            <asp:BoundField HeaderText="Designation" DataField="Designation" />
            <asp:BoundField HeaderText="Company" DataField="Company" />
        </Columns>
    </asp:GridView>
    <div class="form-group">
        <asp:Button class="btn btn-default" ID="btnExportWord" runat="server" Text="Export To Word" OnClick="btnExportWord_Click" />&nbsp;
        <asp:Button class="btn btn-default" ID="btnExportExcel" runat="server" Text="Export To Excel" OnClick="btnExportExcel_Click" />
        
    </div>
</asp:Content>

