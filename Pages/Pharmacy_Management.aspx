<%@ Page Title="Pharmacy Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pharmacy_Management.aspx.cs" Inherits="IEMHR.Pages.Pharmacy_Management" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bs-example">
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#sectionA">Pharmacy details</a></li>
        <li><a data-toggle="tab" href="#sectionB">Pharmacy records</a></li>
        <li><a data-toggle="tab" href="#sectionC">Pharmacy report</a></li>
    </ul>
    <div class="tab-content">
        <div id="sectionA" class="tab-pane fade in active">
            <h3>Pharmacy details</h3>
            <div class="row">
                <div class="col-md-8">
                    <div class="form-horizontal">
                    <hr />
                    <asp:ValidationSummary ID="ValidationSummery1" runat="server" CssClass="text-danger" />
            
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" AssociatedControlID="txtPharmacyName" CssClass="col-md-2 control-label">Pharmacy Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtPharmacyName" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPharmacyName"
                                CssClass="text-danger" ErrorMessage="The pharmacy name field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" AssociatedControlID="txtLocLat" CssClass="col-md-2 control-label">Latitude</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtLocLat" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtLocLat"
                                CssClass="text-danger" ErrorMessage="The latitude field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" AssociatedControlID="txtLocLon" CssClass="col-md-2 control-label">Longitude</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtLocLon" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLocLon"
                                CssClass="text-danger" ErrorMessage="The longitude field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" AssociatedControlID="txtLocation" CssClass="col-md-2 control-label">Location</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtLocation" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtLocation"
                                CssClass="text-danger" ErrorMessage="The location field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" AssociatedControlID="txtCountry" CssClass="col-md-2 control-label">Country</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtCountry" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCountry"
                                CssClass="text-danger" ErrorMessage="The country field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail"
                                CssClass="text-danger" ErrorMessage="The Email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" AssociatedControlID="txtURL" CssClass="col-md-2 control-label">URL</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtURL" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtURL"
                                CssClass="text-danger" ErrorMessage="The url field is required." />
                        </div>
                    </div>
                     <div class="form-group">
                        <asp:Label ID="Label6" runat="server" AssociatedControlID="txtPhoneNum" CssClass="col-md-2 control-label">Phone Number</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtPhoneNum" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPhoneNum"
                                CssClass="text-danger" ErrorMessage="The phone number field is required." />
                        </div>
                    </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" Text="Submit" CssClass="btn btn-default" 
                                ID="SubmitButton" OnClick="SubmitButton_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="sectionB" class="tab-pane fade">
            <h3>Pharmacy records</h3>
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
        </div>
        <div id="sectionC" class="tab-pane fade">
            <h3>Pharmacy report</h3>
            <div>
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" BorderStyle="Outset" Height="561px" Width="100%">
                <LocalReport ReportPath="Pages\rdlc\Pharmacy_Details_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="PharmacySqlDataSource" Name="IEMHRDataSet" />
                </DataSources>
                </LocalReport>
                </rsweb:ReportViewer>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" SelectCommand="SELECT * FROM [PharmacyMaster]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>
</asp:Content>
