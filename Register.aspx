<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RepApp.Register1" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Register</title>

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
        .style3
        {
            width: 293px;
        }
        .style5
        {
            width: 195px;
        }
        .style8
        {
            width: 157px;
            text-align: right;
        }
        .style10
        {
            font-size: x-small;
        }
        .style11
        {
            width: 157px;
            text-align: right;
            height: 24px;
        }
        .style12
        {
            width: 195px;
            height: 24px;
        }
        .style13
        {
            width: 293px;
            height: 24px;
        }
        .style14
        {
            width: 157px;
        }
    </style>

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
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
                <ol class="breadcrumb">
                    <li><a href="Login.aspx">Login</a>
                    </li>
                </ol>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4> Register</h4>
                    </div>
                    <div class="panel-body">
    <form id="form1" runat="server">
    <div>
    <table class="style1">
            <tr>
                <td class="style8">
                    User Name:</td>
                <td class="style5">
                    <asp:TextBox ID="UserNameTextBox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="UserNameTextBox" ErrorMessage="User Name is required." 
                        ForeColor="Red" style="font-size: x-small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    E-mail:</td>
                <td class="style5">
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="EmailTextBox" ErrorMessage="E-mal is required." 
                        ForeColor="Red" style="font-size: x-small"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="EmailTextBox" 
                        ErrorMessage="You must enter a valid E-mail Id" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        style="font-size: x-small"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Password:</td>
                <td class="style5">
                    <asp:TextBox ID="PassTextBox" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="PassTextBox" ErrorMessage="Password is required." 
                        ForeColor="Red" style="font-size: x-small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Confirm Password:</td>
                <td class="style12">
                    <asp:TextBox ID="ConPassTextBox" runat="server" Height="22px" 
                        TextMode="Password" Width="150px"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="ConPassTextBox" ErrorMessage="Confirm Password is required." 
                        ForeColor="Red" style="font-size: x-small"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="PassTextBox" ControlToValidate="ConPassTextBox" 
                        ErrorMessage="Both passwords must be the same." ForeColor="Red" 
                        style="font-size: x-small"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    </td>
                <td class="style5">
                    <asp:Button ID="RegisterButton" runat="server" onclick="RegisterButton_Click" 
                        Text="Register" Width="101px" ondatabinding="RegisterButton_Click" />
                    </td>
                <td class="style3">
                    </td>
             </tr>
             </table>
             </div>
                    </form>
                    </div>
                </div>
            </div>
            
        </div>
        <!-- /.row -->
        
        <hr>

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
