<%@ Page Title="Patient review" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient_Review.aspx.cs" Inherits="IEMHR.Pages.Patient_Review" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PatientId" DataSourceID="PatientSqlDataSource" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="PatientSqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" DeleteCommand="DELETE FROM [PatientMaster] WHERE [PatientId] = @original_PatientId AND [FirstName] = @original_FirstName AND [MiddleName] = @original_MiddleName AND [LastName] = @original_LastName AND [Age] = @original_Age AND [Gender] = @original_Gender AND [HomeAddress] = @original_HomeAddress AND [PhoneNum] = @original_PhoneNum AND [Email] = @original_Email AND [Nationality] = @original_Nationality AND [NextOfKin] = @original_NextOfKin AND [NextOfKinContact] = @original_NextOfKinContact" InsertCommand="INSERT INTO [PatientMaster] ([FirstName], [MiddleName], [LastName], [Age], [Gender], [HomeAddress], [PhoneNum], [Email], [Nationality], [NextOfKin], [NextOfKinContact]) VALUES (@FirstName, @MiddleName, @LastName, @Age, @Gender, @HomeAddress, @PhoneNum, @Email, @Nationality, @NextOfKin, @NextOfKinContact)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PatientMaster] ORDER BY [PatientId]" UpdateCommand="UPDATE [PatientMaster] SET [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [Age] = @Age, [Gender] = @Gender, [HomeAddress] = @HomeAddress, [PhoneNum] = @PhoneNum, [Email] = @Email, [Nationality] = @Nationality, [NextOfKin] = @NextOfKin, [NextOfKinContact] = @NextOfKinContact WHERE [PatientId] = @original_PatientId AND [FirstName] = @original_FirstName AND [MiddleName] = @original_MiddleName AND [LastName] = @original_LastName AND [Age] = @original_Age AND [Gender] = @original_Gender AND [HomeAddress] = @original_HomeAddress AND [PhoneNum] = @original_PhoneNum AND [Email] = @original_Email AND [Nationality] = @original_Nationality AND [NextOfKin] = @original_NextOfKin AND [NextOfKinContact] = @original_NextOfKinContact">
            <DeleteParameters>
                <asp:Parameter Name="original_PatientId" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_MiddleName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Age" Type="Int32" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_HomeAddress" Type="String" />
                <asp:Parameter Name="original_PhoneNum" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Nationality" Type="String" />
                <asp:Parameter Name="original_NextOfKin" Type="String" />
                <asp:Parameter Name="original_NextOfKinContact" Type="String" />
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
                <asp:Parameter Name="original_PatientId" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_MiddleName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Age" Type="Int32" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_HomeAddress" Type="String" />
                <asp:Parameter Name="original_PhoneNum" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Nationality" Type="String" />
                <asp:Parameter Name="original_NextOfKin" Type="String" />
                <asp:Parameter Name="original_NextOfKinContact" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
