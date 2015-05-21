<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Review_Patient.aspx.cs" Inherits="RepApp.Review_Patient" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<article>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" 
        SelectCommand="SELECT * FROM [PatientDetails]"></asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" Height="16px" Width="128px" AutoGenerateRows="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" 
                SortExpression="PatientId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" 
                SortExpression="MiddleName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="NextOfKin" HeaderText="NextOfKin" 
                SortExpression="NextOfKin" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phoneno" HeaderText="Phoneno" 
                SortExpression="Phoneno" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" 
                SortExpression="Nationality" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <br />
    <asp:TextBox ID="SearchIDTextBox" runat="server" Height="36px" Width="147px"></asp:TextBox>
    <asp:Button ID="SearchButton" runat="server" Height="38px" 
        Text="Search Patient ID" Width="166px" />
    <p><a href="Electronic_Medical_Record.aspx">Go to EMR Page</a></p>
</article>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    </asp:Content>