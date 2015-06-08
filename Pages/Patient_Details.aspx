<%@ Page Title="Patient details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient_Details.aspx.cs" Inherits="IEMHR_ASP_App.Pages.Patient_Details" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <div class="row">
 <div class="col-md-8">
    <div class="form-horizontal">
        <h4>Fill in new patient.</h4>
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
                    ID="SubmitButton" OnClick="SubmitButton_Click" />
            </div>
        </div>
      </div>
    </div>
 </div>
</asp:Content>