<%@ Page Title="Pharmacy Details" Language="C#" AutoEventWireup="true" CodeBehind="Pharmacy_Details.aspx.cs" Inherits="IEMHR.Pages.Pharmacy_Details" MasterPageFile="~/Site.Master" %>

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
            <asp:Label ID="Label1" runat="server" AssociatedControlID="txtPharmacyId" CssClass="col-md-2 control-label">Pharmacy ID</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPharmacyId" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPharmacyId"
                    CssClass="text-danger" ErrorMessage="The pharmacy id field is required." />
            </div>
        </div>
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
</asp:Content>