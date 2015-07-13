<%@ Page Title="Patient Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient_Management.aspx.cs" Inherits="IEMHR.Pages.Patient_Management" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#sectionA">Patient details</a></li>
        <li><a data-toggle="tab" href="#sectionB">Patient records</a></li>
        <li><a data-toggle="tab" href="#sectionC">Patient report</a></li>
        <%--<li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">Dropdown <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a data-toggle="tab" href="#dropdown1">Dropdown1</a></li>
                <li><a data-toggle="tab" href="#dropdown2">Dropdown2</a></li>
            </ul>
        </li>--%>
    </ul>
    <div class="tab-content">
        <div id="sectionA" class="tab-pane fade in active">
            <h3>Fill in new patient</h3>
            <div class="row">
                <div class="col-md-8">
                    <div class="form-horizontal">
                    <hr />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
        
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" AssociatedControlID="txtFirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtFirstName" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName"
                                    CssClass="text-danger" ErrorMessage="The first name field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" AssociatedControlID="txtMiddleName" CssClass="col-md-2 control-label">Middle Name</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtMiddleName" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMiddleName"
                                    CssClass="text-danger" ErrorMessage="The middle name field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" AssociatedControlID="txtLastname" CssClass="col-md-2 control-label">Last Name</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtLastName" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLastName"
                                    CssClass="text-danger" ErrorMessage="The last name field is required." />
                                </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label7" runat="server" AssociatedControlID="txtAge" CssClass="col-md-2 control-label">Age</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtAge" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAge"
                                    CssClass="text-danger" ErrorMessage="The age field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label8" runat="server" AssociatedControlID="txtGender" CssClass="col-md-2 control-label">Gender</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtGender" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtGender"
                                    CssClass="text-danger" ErrorMessage="The gender field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label9" runat="server" AssociatedControlID="txtHomeAddress" CssClass="col-md-2 control-label">Home Address</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtHomeAddress" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtHomeAddress"
                                    CssClass="text-danger" ErrorMessage="The home address field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label12" runat="server" AssociatedControlID="txtPhoneNum" CssClass="col-md-2 control-label">Phone Number</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtPhoneNum" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtPhoneNum"
                                    CssClass="text-danger" ErrorMessage="The phone number field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">Email</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail"
                                    CssClass="text-danger" ErrorMessage="The Email field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" AssociatedControlID="txtNationality" CssClass="col-md-2 control-label">Nationality</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtNationality" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNationality"
                                    CssClass="text-danger" ErrorMessage="The nationality field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label10" runat="server" AssociatedControlID="txtNextOfKin" CssClass="col-md-2 control-label">Next Of Kin</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtNextOfKin" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtNextOfKin"
                                    CssClass="text-danger" ErrorMessage="The next of kin field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label11" runat="server" AssociatedControlID="txtNextOfKinContact" CssClass="col-md-2 control-label">Next Of Kin Contact</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtNextOfkinContact" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtNextOfKinContact"
                                    CssClass="text-danger" ErrorMessage="The next of kin contact field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" Text="Submit" CssClass="btn btn-default" 
                                ID="SubmitButton" OnClick="SubmitButton_Click"/>
                            </div>
                        </div>
                     </div>
                  </div>
               </div>
           </div>
        <div id="sectionB" class="tab-pane fade">
            <h3>Patient record</h3>
            <p>
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
            </p>
        </div>
        <div id="sectionC" class="tab-pane fade">
            <h3>Patient report</h3>
            <p>
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="545px" Width="100%" BorderStyle="Outset">
                <LocalReport ReportPath="Pages\rdlc\Patient_Details_Report.rdlc">
                <DataSources>
                <rsweb:ReportDataSource DataSourceId="PatientSqlDataSource" Name="IEMHREDataSet" />
                </DataSources>
                </LocalReport>
                </rsweb:ReportViewer>
                
            </p>
        </div>
        <%--<div id="dropdown1" class="tab-pane fade">
            <h3>Dropdown 1</h3>
            <p>WInteger convallis, nulla in sollicitudin placerat, ligula enim auctor lectus, in mollis diam dolor at lorem. Sed bibendum nibh sit amet dictum feugiat. Vivamus arcu sem, cursus a feugiat ut, iaculis at erat. Donec vehicula at ligula vitae venenatis. Sed nunc nulla, vehicula non porttitor in, pharetra et dolor. Fusce nec velit velit. Pellentesque consectetur eros.</p>
        </div>
        <div id="dropdown2" class="tab-pane fade">
            <h3>Dropdown 2</h3>
            <p>Donec vel placerat quam, ut euismod risus. Sed a mi suscipit, elementum sem a, hendrerit velit. Donec at erat magna. Sed dignissim orci nec eleifend egestas. Donec eget mi consequat massa vestibulum laoreet. Mauris et ultrices nulla, malesuada volutpat ante. Fusce ut orci lorem. Donec molestie libero in tempus imperdiet. Cum sociis natoque penatibus et magnis.</p>
        </div>--%>
    </div>
</asp:Content>
