<%@ Page Title="Physician Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Physician_Management.aspx.cs" Inherits="IEMHR.Pages.Physician_Management" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bs-example">
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#sectionA">Physician details</a></li>
        <li><a data-toggle="tab" href="#sectionB">Physician records</a></li>
        <li><a data-toggle="tab" href="#sectionC">Physician report</a></li>
    </ul>
    <div class="tab-content">
        <div id="sectionA" class="tab-pane fade in active">
            <h3>Physician details</h3>
            <div class="row">
                <div class="col-md-8">
                    <div class="form-horizontal">
                    <hr />
                    <asp:ValidationSummary ID="ValidationSummery1" runat="server" CssClass="text-danger" />
            
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" AssociatedControlID="txtFirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtFirstName" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName"
                                CssClass="text-danger" ErrorMessage="The first name field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" AssociatedControlID="txtMiddleName" CssClass="col-md-2 control-label">Middle Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtMiddleName" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMiddleName"
                                CssClass="text-danger" ErrorMessage="The middle name field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" AssociatedControlID="txtLastName" CssClass="col-md-2 control-label">Last Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtLastName" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLastName"
                                CssClass="text-danger" ErrorMessage="The last name field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">E mail</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEmail"
                                CssClass="text-danger" ErrorMessage="The e mail field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" AssociatedControlID="txtPhoneNum" CssClass="col-md-2 control-label">Phone Number</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtPhoneNum" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhoneNum"
                                CssClass="text-danger" ErrorMessage="The phone number field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                    <asp:Label ID="Label3" runat="server" AssociatedControlID="txtMpdbRegNum" CssClass="col-md-2 control-label">MPDB Reg. Number</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtMpdbRegNum" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMpdbRegNum"
                                CssClass="text-danger" ErrorMessage="The Email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" AssociatedControlID="txtDesignation" CssClass="col-md-2 control-label">Designation</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtDesignation" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDesignation"
                                CssClass="text-danger" ErrorMessage="The designation field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" AssociatedControlID="txtCompany" CssClass="col-md-2 control-label">Company</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtCompany" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCompany"
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
            <h3>Physician records</h3>
            <div>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PhysicianId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="PhysicianId" HeaderText="PhysicianId" InsertVisible="False" ReadOnly="True" SortExpression="PhysicianId" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" DeleteCommand="DELETE FROM [PhysicianMaster] WHERE [PhysicianId] = @original_PhysicianId AND [FirstName] = @original_FirstName AND [MiddleName] = @original_MiddleName AND [LastName] = @original_LastName AND [Email] = @original_Email AND [PhoneNo] = @original_PhoneNo AND [MPDBRegNo] = @original_MPDBRegNo AND [Designation] = @original_Designation AND [Company] = @original_Company" InsertCommand="INSERT INTO [PhysicianMaster] ([FirstName], [MiddleName], [LastName], [Email], [PhoneNo], [MPDBRegNo], [Designation], [Company]) VALUES (@FirstName, @MiddleName, @LastName, @Email, @PhoneNo, @MPDBRegNo, @Designation, @Company)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PhysicianMaster]" UpdateCommand="UPDATE [PhysicianMaster] SET [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [Email] = @Email, [PhoneNo] = @PhoneNo, [MPDBRegNo] = @MPDBRegNo, [Designation] = @Designation, [Company] = @Company WHERE [PhysicianId] = @original_PhysicianId AND [FirstName] = @original_FirstName AND [MiddleName] = @original_MiddleName AND [LastName] = @original_LastName AND [Email] = @original_Email AND [PhoneNo] = @original_PhoneNo AND [MPDBRegNo] = @original_MPDBRegNo AND [Designation] = @original_Designation AND [Company] = @original_Company">
                <DeleteParameters>
                    <asp:Parameter Name="original_PhysicianId" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_MiddleName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_PhoneNo" Type="String" />
                    <asp:Parameter Name="original_MPDBRegNo" Type="String" />
                    <asp:Parameter Name="original_Designation" Type="String" />
                    <asp:Parameter Name="original_Company" Type="String" />
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
                    <asp:Parameter Name="original_PhysicianId" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_MiddleName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_PhoneNo" Type="String" />
                    <asp:Parameter Name="original_MPDBRegNo" Type="String" />
                    <asp:Parameter Name="original_Designation" Type="String" />
                    <asp:Parameter Name="original_Company" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>
        </div>
        <div id="sectionC" class="tab-pane fade">
            <h3>Physician report</h3>
            <div>
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
                    <LocalReport ReportPath="Pages\rdlc\Physicain_Details_Report.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="PhysicianSqlDataSource" Name="IEMHRDataSet" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:SqlDataSource ID="PhysicianSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" SelectCommand="SELECT * FROM [PhysicianMaster]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>
</asp:Content>
