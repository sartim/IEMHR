<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RepApp.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        .style1
        {
            height: 46px;
        }
        .style2
        {
            height: 46px;
            width: 172px;
        }
        .style3
        {
            width: 172px
        }
        .style4
        {
            height: 46px;
            width: 102px;
        }
        .style5
        {
            width: 102px;
        }
    </style>

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="#">IEMHR</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    &nbsp;</h1>
            </div>
            <div class="col-md-4">
                
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4> Login</h4>
                    </div>
                    <div class="panel-body">
                        
                        <form id="Form1" runat="server">

                        <table class="nav-justified">
                            <tr>
                                <td class="style4">
                                    User Name:</td>
                                <td class="style2">
                                    <asp:TextBox ID="UserNameTextBox" runat="server" Width="150px"></asp:TextBox><br /></td>
                                <td class="style1">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="UserNameTextBox" ErrorMessage="User Name required." 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                     Password:</td>
                                <td class="style3">
                                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" 
                                        Width="150px"></asp:TextBox><br /></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="PasswordTextBox" ErrorMessage="Password required." 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style3">
                                    <asp:Button ID="LoginButton" runat="server" Text="Login" Width="63px" 
                                        onclick="LoginButton_Click" /><br />
                                    <asp:HyperLink ID="ForgotHyperLink" runat="server">Forgot Password?</asp:HyperLink><br />
                                    <asp:HyperLink ID="RegisterHyperLink" runat="server" 
                                        NavigateUrl="~/Register.aspx">Don't have an Account?</asp:HyperLink>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        
                        </form>
                    </div>
                </div>
            </div>
            
        </div>
        <!-- /.row -->
        
        <hr>
        <p>&nbsp</p>
        <p>&nbsp</p>
        <p>&nbsp</p>
        <p>&nbsp</p>
        <p>&nbsp</p>
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p><a href="http://tymevotec.somee.com/">TYMEVOTEC </a>&copy; <%: DateTime.Now.Year %> - All Rights Resrtved</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script type="text/javascript" src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script type="text/javascript">
        $('.carousel').carousel({
            interval: 5000 //changes the speed
        })
    </script>

</body>

</html>