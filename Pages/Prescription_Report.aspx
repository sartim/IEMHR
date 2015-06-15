<%@ Page Title="Prescription report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prescription_Report.aspx.cs" Inherits="IEMHR.Pages.Prescrition_Report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
        <LocalReport ReportPath="Pages\rdlc\Prescription_Details_Report.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="PrescriptionSqlDataSource" Name="PrescriptionDataSet" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="PrescriptionSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" SelectCommand="SELECT * FROM [PrescriptionMaster]"></asp:SqlDataSource>

</asp:Content>
