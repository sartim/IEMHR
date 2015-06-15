<%@ Page Title="Physician report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Physician_Report.aspx.cs" Inherits="IEMHR.Pages.Physician_Report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
        <LocalReport ReportPath="Pages\rdlc\Physicain_Details_Report.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="PhysicianSqlDataSource" Name="PhysicianDataSet" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="PhysicianSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" SelectCommand="SELECT * FROM [PhysicianMaster]"></asp:SqlDataSource>

</asp:Content>
