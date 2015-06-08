<%@ Page Title="Physician details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Physician_Details.aspx.cs" Inherits="IEMHR_ASP_App.Pages.Physician_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup> 
        <h1><%: Title %>.</h1>
    </hgroup>
    
<div class="row">
  <div class="col-md-8">
    <div class="form-horizontal">
        <h4>Fill in new physician.</h4>
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
</asp:Content>
