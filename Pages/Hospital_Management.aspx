<%@ Page Title="Hospital Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hospital_Management.aspx.cs" Inherits="IEMHR.Pages.Hospital_Management" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bs-example">
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#sectionA">Hospital details</a></li>
        <li><a data-toggle="tab" href="#sectionB">Hospital records</a></li>
        <li><a data-toggle="tab" href="#sectionC">Hospital report</a></li>
    </ul>
    <div class="tab-content">
        <div id="sectionA" class="tab-pane fade in active">
            <h3>Hospital details </h3>
            <div class="row">
                <div class="col-md-8">
                    <div class="form-horizontal">
                    <hr />
                    <asp:ValidationSummary ID="ValidationSummery1" runat="server" CssClass="text-danger" />
            
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" AssociatedControlID="txtHospitalName" CssClass="col-md-2 control-label">Hospital Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtHospitalName" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHospitalName"
                                CssClass="text-danger" ErrorMessage="The hospital name field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" AssociatedControlID="txtLatitude" CssClass="col-md-2 control-label">Latitude</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtLatitude" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtLatitude"
                                CssClass="text-danger" ErrorMessage="The latitude field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" AssociatedControlID="txtLogitude" CssClass="col-md-2 control-label">Longitude</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtLogitude" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLogitude"
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
            <h3>Hospital records</h3>
            <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="HospitalId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="HospitalId" HeaderText="HospitalId" InsertVisible="False" ReadOnly="True" SortExpression="HospitalId" />
                    <asp:BoundField DataField="HospitalName" HeaderText="HospitalName" SortExpression="HospitalName" />
                    <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
                    <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" DeleteCommand="DELETE FROM [HospitalMaster] WHERE [HoipitalId] = @original_HoipitalId AND [HospitalName] = @original_HospitalName AND [Latitude] = @original_Latitude AND [Longitude] = @original_Longitude AND [Location] = @original_Location AND [Country] = @original_Country AND [Email] = @original_Email AND [Address] = @original_Address AND (([URL] = @original_URL) OR ([URL] IS NULL AND @original_URL IS NULL)) AND [PhoneNum] = @original_PhoneNum" InsertCommand="INSERT INTO [HospitalMaster] ([HospitalName], [Latitude], [Longitude], [Location], [Country], [Email], [Address], [URL], [PhoneNum]) VALUES (@HospitalName, @Latitude, @Longitude, @Location, @Country, @Email, @Address, @URL, @PhoneNum)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [HospitalMaster]" UpdateCommand="UPDATE [HospitalMaster] SET [HospitalName] = @HospitalName, [Latitude] = @Latitude, [Longitude] = @Longitude, [Location] = @Location, [Country] = @Country, [Email] = @Email, [Address] = @Address, [URL] = @URL, [PhoneNum] = @PhoneNum WHERE [HoipitalId] = @original_HoipitalId AND [HospitalName] = @original_HospitalName AND [Latitude] = @original_Latitude AND [Longitude] = @original_Longitude AND [Location] = @original_Location AND [Country] = @original_Country AND [Email] = @original_Email AND [Address] = @original_Address AND (([URL] = @original_URL) OR ([URL] IS NULL AND @original_URL IS NULL)) AND [PhoneNum] = @original_PhoneNum">
                <DeleteParameters>
                    <asp:Parameter Name="original_HospitalId" Type="Int32" />
                    <asp:Parameter Name="original_HospitalName" Type="String" />
                    <asp:Parameter Name="original_Latitude" Type="String" />
                    <asp:Parameter Name="original_Longitude" Type="String" />
                    <asp:Parameter Name="original_Location" Type="String" />
                    <asp:Parameter Name="original_Country" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_URL" Type="String" />
                    <asp:Parameter Name="original_PhoneNum" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="HospitalName" Type="String" />
                    <asp:Parameter Name="Latitude" Type="String" />
                    <asp:Parameter Name="Longitude" Type="String" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="URL" Type="String" />
                    <asp:Parameter Name="PhoneNum" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HospitalName" Type="String" />
                    <asp:Parameter Name="Latitude" Type="String" />
                    <asp:Parameter Name="Longitude" Type="String" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="URL" Type="String" />
                    <asp:Parameter Name="PhoneNum" Type="String" />
                    <asp:Parameter Name="original_HoipitalId" Type="Int32" />
                    <asp:Parameter Name="original_HospitalName" Type="String" />
                    <asp:Parameter Name="original_Latitude" Type="String" />
                    <asp:Parameter Name="original_Longitude" Type="String" />
                    <asp:Parameter Name="original_Location" Type="String" />
                    <asp:Parameter Name="original_Country" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_URL" Type="String" />
                    <asp:Parameter Name="original_PhoneNum" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        </div>
        <div id="sectionC" class="tab-pane fade">
            <h3>Hospital report</h3>
            <div>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
                <LocalReport ReportPath="Pages\rdlc\Hospital_Details_Report.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="HospitalSqlDataSource" Name="IEMHRDataSet" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:SqlDataSource ID="HospitalSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" SelectCommand="SELECT * FROM [HospitalMaster]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>
</asp:Content>
