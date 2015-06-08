<%@ Page Title="Patient review" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient_Review.aspx.cs" Inherits="IEMHR_ASP_App.Pages.Patien_Reviewtaspx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PatientId" DataSourceID="PatientSqlDataSource" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" InsertVisible="False" ReadOnly="True" SortExpression="PatientId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="HomeAddress" HeaderText="HomeAddress" SortExpression="HomeAddress" />
            <asp:BoundField DataField="PhoneNum" HeaderText="PhoneNum" SortExpression="PhoneNum" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
            <asp:BoundField DataField="NextOfKin" HeaderText="NextOfKin" SortExpression="NextOfKin" />
            <asp:BoundField DataField="NextOfKinContact" HeaderText="NextOfKinContact" SortExpression="NextOfKinContact" />
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
    <asp:SqlDataSource ID="PatientSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" DeleteCommand="DELETE FROM [PatientMaster] WHERE [PatientId] = @PatientId" InsertCommand="INSERT INTO [PatientMaster] ([FirstName], [MiddleName], [LastName], [Age], [Gender], [HomeAddress], [PhoneNum], [Email], [Nationality], [NextOfKin], [NextOfKinContact]) VALUES (@FirstName, @MiddleName, @LastName, @Age, @Gender, @HomeAddress, @PhoneNum, @Email, @Nationality, @NextOfKin, @NextOfKinContact)" SelectCommand="SELECT * FROM [PatientMaster] ORDER BY [PatientId] DESC" UpdateCommand="UPDATE [PatientMaster] SET [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [Age] = @Age, [Gender] = @Gender, [HomeAddress] = @HomeAddress, [PhoneNum] = @PhoneNum, [Email] = @Email, [Nationality] = @Nationality, [NextOfKin] = @NextOfKin, [NextOfKinContact] = @NextOfKinContact WHERE [PatientId] = @PatientId">
        <DeleteParameters>
            <asp:Parameter Name="PatientId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="MiddleName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="HomeAddress" Type="String" />
            <asp:Parameter Name="PhoneNum" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Nationality" Type="String" />
            <asp:Parameter Name="NextOfKin" Type="String" />
            <asp:Parameter Name="NextOfKinContact" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="MiddleName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="HomeAddress" Type="String" />
            <asp:Parameter Name="PhoneNum" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Nationality" Type="String" />
            <asp:Parameter Name="NextOfKin" Type="String" />
            <asp:Parameter Name="NextOfKinContact" Type="String" />
            <asp:Parameter Name="PatientId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>&nbsp;</p>
    <div class="form-group">
            <asp:Label ID="Label2" runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label">Display: </asp:Label>
            <div class="col-md-10">
               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="PatientSqlDataSource" DataTextField="PatientId" DataValueField="PatientId"></asp:DropDownList>
            </div>
    </div>
    <p>&nbsp;</p>
    <div class="form-group">
    <asp:Label ID="Label1" runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label">Go to: </asp:Label>
        <div class="col-md-10">
            <a class="btn btn-default" href="Patient_Details.aspx">Patient Details</a>
        </div>
    </div>
    <div>
    <p>&nbsp;</p>
    <strong>Import/Export</strong><br />
    <a class="btn btn-default" href="#" title="Import to Excell">Import Excell</a>
    <a class="btn btn-default" href="#" title="Export to Excell">Export Excell</a>
    </div>

</asp:Content>
