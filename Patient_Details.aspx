<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patient_Details.aspx.cs" Inherits="RepApp.Patient_Details" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>

    <article>
        <table class="style1">
            <tr>
                <td class="style2">
                    Patient ID:</td>
                <td class="style3">
                    <asp:TextBox ID="PatientIDTextBox" runat="server" Height="25px" 
                        Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="PatientIDTextBox" 
                        ErrorMessage="Please fill in patient Id." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    First Name:</td>
                <td class="style3">
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="FirstNameTextBox" 
                        ErrorMessage="Please fill first name." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Middle Name:</td>
                <td class="style3">
                    <asp:TextBox ID="MiddleNameTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="MiddleNameTextBox" 
                        ErrorMessage="Please fill middle name." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Last Name:</td>
                <td class="style3">
                    <asp:TextBox ID="LastNameTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="LastNameTextBox" 
                        ErrorMessage="Please fill last name." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Age:</td>
                <td class="style3">
                    <asp:TextBox ID="AgeTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="AgeTextBox" ErrorMessage="Please fill age." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Gender:</td>
                <td class="style3">
                    <asp:TextBox ID="GenderTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="GenderTextBox" ErrorMessage="Please fill gender" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Next Of Kin:</td>
                <td class="style3">
                    <asp:TextBox ID="NextOfKinTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="NextOfKinTextBox" ErrorMessage="Please fill next of kin" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    E mail:</td>
                <td class="style3">
                    <asp:TextBox ID="EmailTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="EmailTextBox" ErrorMessage="Please fill e mail" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Phone no:</td>
                <td class="style3">
                    <asp:TextBox ID="PhoneNoTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="PhoneNoTextBox" 
                        ErrorMessage="Please fill phone no." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Address:</td>
                <td class="style3">
                    <asp:TextBox ID="AddressTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="AddressTextBox" 
                        ErrorMessage="Please fill date." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Nationality:</td>
                <td class="style3">
                    <asp:TextBox ID="NationalityTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="NationalityTextBox" 
                        ErrorMessage="Please fill nationality." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" Width="106px" 
                        onclick="SubmitButton_Click" />
                    <input id="CancelButton" type="reset" value="Cancel" /></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
    </table>
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Go to.
        </p>
        <ul>
        <li><a href="Review_Patient.aspx">Review Patient</a></li>
            <li><a href="#">Patient History</a></li>
            <li><a href="#">Physician Information</a></li>
        </ul>
        <ul>
        
        </ul>
    </aside>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
        }
        .style3
        {
            width: 227px;
        }
    </style>
</asp:Content>
