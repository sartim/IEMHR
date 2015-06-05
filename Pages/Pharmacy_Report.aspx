<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pharmacy_Report.aspx.cs" Inherits="IEMHR.Pages.Phamacy_Report" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="390px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="880px">
    <LocalReport ReportPath="Pages\rdlc\PharmacyReport.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="PharmacySqlDataSource" Name="PharmacyDataSet" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
<asp:SqlDataSource ID="PharmacySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" SelectCommand="SELECT * FROM [PharmacyMaster]"></asp:SqlDataSource>
</asp:Content>
