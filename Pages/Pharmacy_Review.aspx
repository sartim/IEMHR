<%@ Page Title="Pharmacy review" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pharmacy_Review.aspx.cs" Inherits="IEMHR.Pages.Pharmacy_Review" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PharmacyId" DataSourceID="PharmacySqlDataSource" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PharmacyId" HeaderText="PharmacyId" InsertVisible="False" ReadOnly="True" SortExpression="PharmacyId" />
                <asp:BoundField DataField="PharmacyName" HeaderText="PharmacyName" SortExpression="PharmacyName" />
                <asp:BoundField DataField="LocLat" HeaderText="LocLat" SortExpression="LocLat" />
                <asp:BoundField DataField="LocLong" HeaderText="LocLong" SortExpression="LocLong" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
                <asp:BoundField DataField="PhoneNum" HeaderText="PhoneNum" SortExpression="PhoneNum" />
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
        <asp:SqlDataSource ID="PharmacySqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" DeleteCommand="DELETE FROM [PharmacyMaster] WHERE [PharmacyId] = @original_PharmacyId AND [PharmacyName] = @original_PharmacyName AND [LocLat] = @original_LocLat AND [LocLong] = @original_LocLong AND [Location] = @original_Location AND [Country] = @original_Country AND [Email] = @original_Email AND [URL] = @original_URL AND [PhoneNum] = @original_PhoneNum" InsertCommand="INSERT INTO [PharmacyMaster] ([PharmacyName], [LocLat], [LocLong], [Location], [Country], [Email], [URL], [PhoneNum]) VALUES (@PharmacyName, @LocLat, @LocLong, @Location, @Country, @Email, @URL, @PhoneNum)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PharmacyMaster] ORDER BY [PharmacyId]" UpdateCommand="UPDATE [PharmacyMaster] SET [PharmacyName] = @PharmacyName, [LocLat] = @LocLat, [LocLong] = @LocLong, [Location] = @Location, [Country] = @Country, [Email] = @Email, [URL] = @URL, [PhoneNum] = @PhoneNum WHERE [PharmacyId] = @original_PharmacyId AND [PharmacyName] = @original_PharmacyName AND [LocLat] = @original_LocLat AND [LocLong] = @original_LocLong AND [Location] = @original_Location AND [Country] = @original_Country AND [Email] = @original_Email AND [URL] = @original_URL AND [PhoneNum] = @original_PhoneNum">
            <DeleteParameters>
                <asp:Parameter Name="original_PharmacyId" Type="Int32" />
                <asp:Parameter Name="original_PharmacyName" Type="String" />
                <asp:Parameter Name="original_LocLat" Type="String" />
                <asp:Parameter Name="original_LocLong" Type="String" />
                <asp:Parameter Name="original_Location" Type="String" />
                <asp:Parameter Name="original_Country" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_URL" Type="String" />
                <asp:Parameter Name="original_PhoneNum" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PharmacyName" Type="String" />
                <asp:Parameter Name="LocLat" Type="String" />
                <asp:Parameter Name="LocLong" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="URL" Type="String" />
                <asp:Parameter Name="PhoneNum" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PharmacyName" Type="String" />
                <asp:Parameter Name="LocLat" Type="String" />
                <asp:Parameter Name="LocLong" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="URL" Type="String" />
                <asp:Parameter Name="PhoneNum" Type="String" />
                <asp:Parameter Name="original_PharmacyId" Type="Int32" />
                <asp:Parameter Name="original_PharmacyName" Type="String" />
                <asp:Parameter Name="original_LocLat" Type="String" />
                <asp:Parameter Name="original_LocLong" Type="String" />
                <asp:Parameter Name="original_Location" Type="String" />
                <asp:Parameter Name="original_Country" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_URL" Type="String" />
                <asp:Parameter Name="original_PhoneNum" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
