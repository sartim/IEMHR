<%@ Page Title="Patient Chart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient_Chart.aspx.cs" Inherits="IEMHR_ASP_App.Pages.Patient_Chart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <p>

        <asp:Chart ID="Chart1" runat="server" DataSourceID="PatientSqlDataSource" Width="543px">
            <Series>
                <asp:Series Name="Series1" XValueMember="Gender" YValueMembers="Age">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="PatientSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" SelectCommand="SELECT * FROM [PatientMaster]"></asp:SqlDataSource>

    </p>
</asp:Content>
