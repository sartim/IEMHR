<%@ Page Title="Registration Page" Language="C#" MasterPageFile="~/Account.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="IEMHR.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
 <div class="row">
 <div class="col-md-8">
    <div class="form-horizontal">
        <div id="login-page">
	  	<div class="container">
		      <div class="form-login" >
		        <h2 class="form-login-heading">register</h2>
		        <div class="login-wrap">
                    <asp:ValidationSummary ID="ValidationSummary" runat="server" CssClass="text-danger" />
                    <asp:TextBox runat="server" ID="UserName" CssClass="form-control" placeholder="User name"/>
		            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="UserName" ErrorMessage="The user name field is required" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
		            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" placeholder="Password" BackColor="White" />
		            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Password" ErrorMessage="The password field is required" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" placeholder="Confirm password"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
		            <label class="checkbox">
		            </label>
                    <asp:Button runat="server" Text="Register" class="btn btn-theme btn-block" 
                    ID="RegisterButton" OnClick="RegisterButton_Click" />
		            <hr />
		        </div>
		      </div>	  	
	  	    </div>
	    </div>
      </div>
    </div>
 </div>
</asp:Content>
