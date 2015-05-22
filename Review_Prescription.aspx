<%@ Page Title="Prescription History" Language="C#" AutoEventWireup="true" CodeBehind="Review_Prescription.aspx.cs" Inherits="RepApp.Precription_History" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<article>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" 
        SelectCommand="SELECT * FROM [EPrescription]"></asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" Height="16px" Width="128px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <br />
    <asp:TextBox ID="SearchIDTextBox" runat="server" Height="36px" Width="147px"></asp:TextBox>
    <asp:Button ID="SearchButton" runat="server" Height="38px" 
        Text="Search Patient ID" Width="166px" />
    <p><a href="Eprescribe.aspx">Go to E Prescription Page</a></p>
</article>
</asp:Content>



