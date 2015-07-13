<%@ Page Title="Export patient details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Export_Patient_Details.aspx.cs" Inherits="IEMHR.Pages.Export_Patient_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
   <link href="../assets/css/myGrid.css" rel="stylesheet" />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="5" CssClass="myGrid" AlternatingRowStyle-CssClass="alt">
        <Columns>
            <asp:BoundField HeaderText="Patient Id" DataField="PatientId" />
            <asp:BoundField HeaderText="FirstName" DataField="FirstName" />
            <asp:BoundField HeaderText="Middle Name" DataField="MiddleName" />
            <asp:BoundField HeaderText="Last Name" DataField="LastName" />
            <asp:BoundField HeaderText="Age" DataField="Age" />
            <asp:BoundField HeaderText="Gender" DataField="Gender" />
            <asp:BoundField HeaderText="Home Address" DataField="HomeAddress" />
            <asp:BoundField HeaderText="Phone Number" DataField="PhoneNum" />
            <asp:BoundField HeaderText="Email" DataField="Email" />
            <asp:BoundField HeaderText="Nationality" DataField="Nationality" />
            <asp:BoundField HeaderText="Next of Kin" DataField="NextOfKin" />
            <asp:BoundField HeaderText="Next Of Kin Contact" DataField="NextOfKinContact" />
         </Columns>
    </asp:GridView>
    <div class="form-group">
        <asp:Button class="btn btn-default" ID="btnExportWord" runat="server" Text="Export To Word" OnClick="btnExportWord_Click" />&nbsp;
        <asp:Button class="btn btn-default" ID="btnExportExcel" runat="server" Text="Export To Excel" OnClick="btnExportExcel_Click" />
    </div>
</asp:Content>