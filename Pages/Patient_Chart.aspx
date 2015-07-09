<%@ Page Title="Patient chart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient_Chart.aspx.cs" Inherits="IEMHR.Pages.Patient_Chart" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <rsweb:ReportViewer ID="ReportViewer1" runat="server" BorderStyle="Outset" Font-Names="Verdana" Font-Size="8pt" Height="559px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1162px">
            <LocalReport ReportPath="Pages\rdlc\PatientChartReport.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="PatientSqlDataSource" Name="IEMHRDataSet" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:SqlDataSource ID="PatientSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" SelectCommand="SELECT * FROM [PatientMaster]"></asp:SqlDataSource>

    </div>
</asp:Content>
