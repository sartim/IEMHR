<%@ Page Title="Physician review" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Physician_Review.aspx.cs" Inherits="IEMHR_ASP_App.Pages.Physician_Review" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PhysicianId" DataSourceID="PhysicianSqlDataSource" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="PhysicianId" HeaderText="PhysicianId" ReadOnly="True" SortExpression="PhysicianId" InsertVisible="False" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
            <asp:BoundField DataField="MPDBRegNo" HeaderText="MPDBRegNo" SortExpression="MPDBRegNo" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
            <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
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
    <asp:SqlDataSource ID="PhysicianSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" DeleteCommand="DELETE FROM [PhysicianMaster] WHERE [PhysicianId] = @PhysicianId" InsertCommand="INSERT INTO [PhysicianMaster] ([FirstName], [MiddleName], [LastName], [Email], [PhoneNo], [MPDBRegNo], [Designation], [Company]) VALUES (@FirstName, @MiddleName, @LastName, @Email, @PhoneNo, @MPDBRegNo, @Designation, @Company)" SelectCommand="SELECT * FROM [PhysicianMaster] ORDER BY [PhysicianId] DESC" UpdateCommand="UPDATE [PhysicianMaster] SET [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [Email] = @Email, [PhoneNo] = @PhoneNo, [MPDBRegNo] = @MPDBRegNo, [Designation] = @Designation, [Company] = @Company WHERE [PhysicianId] = @PhysicianId">
        <DeleteParameters>
            <asp:Parameter Name="PhysicianId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="MiddleName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNo" Type="String" />
            <asp:Parameter Name="MPDBRegNo" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Company" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="MiddleName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNo" Type="String" />
            <asp:Parameter Name="MPDBRegNo" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Company" Type="String" />
            <asp:Parameter Name="PhysicianId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>&nbsp;</p>
    <div class="form-group">
            <asp:Label ID="Label2" runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label">Display: </asp:Label>
            <div class="col-md-10">
               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="PhysicianSqlDataSource" DataTextField="PhysicianId" DataValueField="PhysicianId"></asp:DropDownList>
            </div>
    </div>
    <p>&nbsp;</p>
    <div class="form-group">
    <asp:Label ID="Label1" runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label">Go to: </asp:Label>
        <div class="col-md-10">
            <a class="btn btn-default" href="Physician_Details.aspx">Physician Details</a>
        </div>
    </div>
    <div>
    <p>&nbsp;</p>
    <strong>Import/Export</strong><br />
    <a class="btn btn-default" href="#" title="Import to Excell">Import Excell</a>
    <a class="btn btn-default" href="#" title="Export to Excell">Export Excell</a>
    </div>
</asp:Content>
