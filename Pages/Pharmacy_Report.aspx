<%@ Page Title="Pharmacy report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pharmacy_Report.aspx.cs" Inherits="IEMHR.Pages.Pharmacy_Report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
        <LocalReport ReportPath="Pages\rdlc\Pharmacy_Details_Report.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="PharmacySqlDataSource" Name="PharmacyDataSet" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="PharmacySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" SelectCommand="SELECT * FROM [PharmacyMaster]"></asp:SqlDataSource>

</asp:Content>
