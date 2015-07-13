<%@ Page Title="Export prescription details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Export_Prescription_Details.aspx.cs" Inherits="IEMHR.Pages.Export_Prescription_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <link href="../assets/css/myGrid.css" rel="stylesheet" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="5" CssClass="myGrid" AlternatingRowStyle-CssClass="alt">
        <Columns>
            <asp:BoundField HeaderText="Prescription Id" DataField="PrescriptionId" />
            <asp:BoundField HeaderText="PrescriberName" DataField="PrescriberName" />
            <asp:BoundField HeaderText="Physician Id" DataField="PhysicianId" />
            <asp:BoundField HeaderText="Patient Name" DataField="PatientName" />
            <asp:BoundField HeaderText="Patient Id" DataField="PatientId" />
            <asp:BoundField HeaderText="Diagnosis" DataField="Diagnosis" />
            <asp:BoundField HeaderText="Drug Name" DataField="DrugName" />
            <asp:BoundField HeaderText="Dose" DataField="Dose" />
            <asp:BoundField HeaderText="Dose Units" DataField="DoseUnits" />
            <asp:BoundField HeaderText="Frequency" DataField="Frequency" />
            <asp:BoundField HeaderText="Num Of days" DataField="NumOfDays" />
            <asp:BoundField HeaderText="SubmitDate" DataField="DoseUnits" />
            <asp:BoundField HeaderText="ProcessedDate" DataField="ProcessedDate" />
            <asp:BoundField HeaderText="Allergies" DataField="Allergies" />
            <asp:BoundField HeaderText="Comments" DataField="Comments" />
            <asp:BoundField HeaderText="Refills" DataField="Refills" />
            <asp:BoundField HeaderText="IssueTo" DataField="IssueTo" />
            <asp:BoundField HeaderText="Pharmacy Id" DataField="PharmacyId" />
        </Columns>
    </asp:GridView>
    <div class="form-group">
        <asp:Button class="btn btn-default" ID="btnExportWord" runat="server" Text="Export To Word" OnClick="btnExportWord_Click" />&nbsp;
        <asp:Button class="btn btn-default" ID="btnExportExcel" runat="server" Text="Export To Excel" OnClick="btnExportExcel_Click" />
        
    </div>
</asp:Content>