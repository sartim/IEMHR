<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient_Report.aspx.cs" Inherits="IEMHR.Pages.Patient_Report" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="880px">
    <localreport reportpath="Pages\rdlc\PatientReport.rdlc">
        <datasources>
            <rsweb:ReportDataSource DataSourceId="PatientSqlDataSource" Name="PatientDataSet" />
        </datasources>
    </localreport>
</rsweb:ReportViewer>
<asp:SqlDataSource ID="PatientSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" SelectCommand="SELECT * FROM [PatientMaster]"></asp:SqlDataSource>
</asp:Content>
