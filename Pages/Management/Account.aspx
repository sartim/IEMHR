<%@ Page Title="Administration page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="IEMHR.Pages.Management.Account" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="AspNetUsersSqlDataSource" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:CheckBoxField DataField="EmailConfirmed" HeaderText="EmailConfirmed" SortExpression="EmailConfirmed" />
        <asp:BoundField DataField="PasswordHash" HeaderText="PasswordHash" SortExpression="PasswordHash" />
        <asp:BoundField DataField="SecurityStamp" HeaderText="SecurityStamp" SortExpression="SecurityStamp" />
        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        <asp:CheckBoxField DataField="PhoneNumberConfirmed" HeaderText="PhoneNumberConfirmed" SortExpression="PhoneNumberConfirmed" />
        <asp:CheckBoxField DataField="TwoFactorEnabled" HeaderText="TwoFactorEnabled" SortExpression="TwoFactorEnabled" />
        <asp:BoundField DataField="LockoutEndDateUtc" HeaderText="LockoutEndDateUtc" SortExpression="LockoutEndDateUtc" />
        <asp:CheckBoxField DataField="LockoutEnabled" HeaderText="LockoutEnabled" SortExpression="LockoutEnabled" />
        <asp:BoundField DataField="AccessFailedCount" HeaderText="AccessFailedCount" SortExpression="AccessFailedCount" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="AspNetUsersSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (@Id, @Email, @EmailConfirmed, @PasswordHash, @SecurityStamp, @PhoneNumber, @PhoneNumberConfirmed, @TwoFactorEnabled, @LockoutEndDateUtc, @LockoutEnabled, @AccessFailedCount, @UserName)" SelectCommand="SELECT * FROM [AspNetUsers] ORDER BY [UserName] DESC" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [EmailConfirmed] = @EmailConfirmed, [PasswordHash] = @PasswordHash, [SecurityStamp] = @SecurityStamp, [PhoneNumber] = @PhoneNumber, [PhoneNumberConfirmed] = @PhoneNumberConfirmed, [TwoFactorEnabled] = @TwoFactorEnabled, [LockoutEndDateUtc] = @LockoutEndDateUtc, [LockoutEnabled] = @LockoutEnabled, [AccessFailedCount] = @AccessFailedCount, [UserName] = @UserName WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
        <asp:Parameter Name="PasswordHash" Type="String" />
        <asp:Parameter Name="SecurityStamp" Type="String" />
        <asp:Parameter Name="PhoneNumber" Type="String" />
        <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
        <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
        <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
        <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
        <asp:Parameter Name="AccessFailedCount" Type="Int32" />
        <asp:Parameter Name="UserName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
        <asp:Parameter Name="PasswordHash" Type="String" />
        <asp:Parameter Name="SecurityStamp" Type="String" />
        <asp:Parameter Name="PhoneNumber" Type="String" />
        <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
        <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
        <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
        <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
        <asp:Parameter Name="AccessFailedCount" Type="Int32" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="Id" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
