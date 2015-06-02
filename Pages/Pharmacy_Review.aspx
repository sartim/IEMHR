<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pharmacy_Review.aspx.cs" Inherits="IEMHR.Pages.Pharmacy_Review" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PharmacyId" DataSourceID="PharmacySqlDataSource" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="PharmacyId" HeaderText="PharmacyId" ReadOnly="True" SortExpression="PharmacyId" />
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
    <asp:SqlDataSource ID="PharmacySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" DeleteCommand="DELETE FROM [PharmacyMaster] WHERE [PharmacyId] = @PharmacyId" InsertCommand="INSERT INTO [PharmacyMaster] ([PharmacyId], [PharmacyName], [LocLat], [LocLong], [Location], [Country], [Email], [URL], [PhoneNum]) VALUES (@PharmacyId, @PharmacyName, @LocLat, @LocLong, @Location, @Country, @Email, @URL, @PhoneNum)" SelectCommand="SELECT * FROM [PharmacyMaster] ORDER BY [PharmacyName] DESC" UpdateCommand="UPDATE [PharmacyMaster] SET [PharmacyName] = @PharmacyName, [LocLat] = @LocLat, [LocLong] = @LocLong, [Location] = @Location, [Country] = @Country, [Email] = @Email, [URL] = @URL, [PhoneNum] = @PhoneNum WHERE [PharmacyId] = @PharmacyId">
        <DeleteParameters>
            <asp:Parameter Name="PharmacyId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PharmacyId" Type="String" />
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
            <asp:Parameter Name="PharmacyId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>&nbsp;</p>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" AssociatedControlID="txtSearchPharmacyId" CssClass="col-md-2 control-label"> Enter Pharmacy ID</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtSearchPharmacyId" CssClass="form-control" />
            </div>
            <p>&nbsp;</p>
            <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Search" CssClass="btn btn-default" 
                    ID="SearchButton" />
            </div>
        </div>
        </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <strong>Go&nbsp; to</strong><br />
   <a class="btn btn-default" href="Pharmacy_Details.aspx">Pharmacy Details</a>
    <p>&nbsp;</p>
    <strong>Import/Export</strong><br />
    <a class="btn btn-default" href="#" title="Import to Excell">Import Excell</a>
    <a class="btn btn-default" href="#" title="Export to Excell">Export Excell</a>
</asp:Content>
