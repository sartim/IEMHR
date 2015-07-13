<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Account.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IEMHR.Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>

    <asp:Literal ID="litStatus" runat="server"></asp:Literal>    
    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
    </asp:PlaceHolder>
    <div id="login-page">
	  	<div class="container">
		      <div class="form-login" >
		        <h2 class="form-login-heading">sign in </h2>
		        <div class="login-wrap">
                    <asp:ValidationSummary ID="ValidationSummary" runat="server" CssClass="text-danger" />
                    <asp:TextBox runat="server" ID="UserName" CssClass="form-control" placeholder="User name" />
		            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="The user name field is required" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br>
		            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" placeholder="Password" BackColor="White" />
		            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="The password field is required" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
		            <label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.html#myModal"> Forgot Password?</a>
		
		                </span>
		            </label>
                    <asp:Button runat="server" Text="SIGN IN" class="btn btn-theme btn-block" ID="SigninButton" OnClick="SigninButton_Click" />		            
		            <hr>
		            
		            <div class="login-social-link centered">
		            <p>or you can sign in via your social network</p>
		                <button class="btn btn-theme" type="submit"><i class="fa fa-facebook"></i> Facebook</button>
		                <button class="btn btn-theme" type="submit"><i class="fa fa-twitter"></i> Twitter</button>
		            </div>
		            <div class="registration">
		                Don't have an account yet?<br/>
		                <a class="" href="Register.aspx">
		                    Create an account
		                </a>
		            </div>
		
		        </div>
		
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Forgot Password ?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Enter your e-mail address below to reset your password.</p>
		                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
		                          <button class="btn btn-theme" type="button">Submit</button>
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      </div>	  	
	  	
	  	</div>
	  </div>
</asp:Content>