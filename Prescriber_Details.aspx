<%@ Page Title="Prescriber Details" Language="C#" AutoEventWireup="true" CodeBehind="Prescriber_Details.aspx.cs" Inherits="RepApp.Prescriber_Details" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>

    <article>
        <table class="style1">
            <tr>
                <td class="style2">
                    Prescriber 
                    ID:</td>
                <td class="style3">
                    <asp:TextBox ID="PrescriberIdTextBox" runat="server" Height="25px" 
                        Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="PrescriberIdTextBox" 
                        ErrorMessage="Please fill prescriber id." ForeColor="Red"></asp:RequiredFieldValidator>
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
                    Personal E mail:</td>
                <td class="style3">
                    <asp:TextBox ID="PersonalEmailTextBox" runat="server" Height="25px" 
                        Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="PersonalEmailTextBox" ErrorMessage="Please fill personal e mail." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Company E mail:</td>
                <td class="style3">
                    <asp:TextBox ID="CompanyEmailTextBox" runat="server" Height="25px" 
                        Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="CompanyEmailTextBox" ErrorMessage="Please fill company e mail." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    MPDB Reg no:</td>
                <td class="style3">
                    <asp:TextBox ID="MpdbRegnoTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="MpdbRegnoTextBox" ErrorMessage="Please fill mpdb reg no." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Phone no:</td>
                <td class="style3">
                    <asp:TextBox ID="PhonenoTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="IssueToTextBox" ErrorMessage="Please fill phone no." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Company:</td>
                <td class="style3">
                    <asp:TextBox ID="PatientIdTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="PatientIdTextBox" 
                        ErrorMessage="Please fill company." ForeColor="Red"></asp:RequiredFieldValidator>
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
        <li><a href="Review_Prescription.aspx">Review Prescribers</a></li>
            <li><a href="Prescription_History.aspx">Prescriber Report</a></li>
            <li><a href="#">Prescriber Information</a></li>
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
