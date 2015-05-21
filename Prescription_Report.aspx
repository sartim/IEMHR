<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prescription_Report.aspx.cs" Inherits="RepApp.Prescription_Report" %>


<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>



<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>



<form id="form1" runat="server">
<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
    <LocalReport ReportPath="Prescription_Report.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="IEMHRDataSet" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
    SelectMethod="GetData" 
    TypeName="RepApp.IEMHRDataSetTableAdapters.EPrescriptionTableAdapter">
    <InsertParameters>
        <asp:Parameter Name="PrescriptionId" Type="String" />
        <asp:Parameter Name="PrescriberName" Type="String" />
        <asp:Parameter Name="PatientName" Type="String" />
        <asp:Parameter Name="PatientId" Type="String" />
        <asp:Parameter Name="Diagnosis" Type="String" />
        <asp:Parameter Name="Allergies" Type="String" />
        <asp:Parameter Name="SIG" Type="String" />
        <asp:Parameter Name="Refills" Type="String" />
        <asp:Parameter Name="Quantity" Type="String" />
        <asp:Parameter Name="IssueTo" Type="String" />
        <asp:Parameter Name="date" Type="String" />
    </InsertParameters>
</asp:ObjectDataSource>
</form>



