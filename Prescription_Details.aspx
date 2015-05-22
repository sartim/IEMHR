<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prescription_Details.aspx.cs" Inherits="RepApp.Prescription_Details" MasterPageFile="~/Site.Master" Title="Prescription Details" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>

    <article>
        <table class="style1">
            <tr>
                <td class="style2" style="height: 40px">
                    Prescriber 
                    Name:</td>
                <td class="style3" style="height: 40px">
                    <asp:TextBox ID="PrescriberNameTextBox" runat="server" Height="25px" 
                        Width="245px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="PrescriberNameTextBox" 
                        ErrorMessage="Please fill in prescriber field." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="height: 40px">
                    Patient Name:</td>
                <td class="style3" style="height: 40px">
                    <asp:TextBox ID="PatientNameTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="PatientNameTextBox" 
                        ErrorMessage="Please fill patient name field." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="height: 40px">
                    Diagnosis:</td>
                <td class="style3" style="height: 40px">
                    <asp:TextBox ID="DiagnosisTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DiagnosisTextBox" 
                        ErrorMessage="Please fill diagnosis field." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="height: 40px">
                    Allergies:</td>
                <td class="style3" style="height: 40px">
                    <asp:TextBox ID="AllergiesTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="AllergiesTextBox" 
                        ErrorMessage="Please fill allergies field." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="height: 40px">
                    SIG:</td>
                <td class="style3" style="height: 40px">
                    <asp:TextBox ID="SigTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="SigTextBox" ErrorMessage="Please fill SIG field." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="height: 40px">
                    Refills:</td>
                <td class="style3" style="height: 40px">
                    <asp:TextBox ID="RefillsTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="RefillsTextBox" ErrorMessage="Please fill refills field." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="height: 40px">
                    Quantity:</td>
                <td class="style3" style="height: 40px">
                    <asp:TextBox ID="QuantityTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="QuantityTextBox" ErrorMessage="Please fill quantity field." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="height: 40px">
                    Issue To:</td>
                <td class="style3" style="height: 40px">
                    <asp:TextBox ID="IssueToTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="IssueToTextBox" ErrorMessage="Please fill issue to field." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="height: 40px">
                    Patient ID:</td>
                <td class="style3" style="height: 40px">
                    <asp:TextBox ID="PatientIdTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="PatientIdTextBox" 
                        ErrorMessage="Please fill patient id field." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="height: 40px">
                    Date:</td>
                <td class="style3" style="height: 40px">
                    <asp:TextBox ID="DateTextBox" runat="server" Height="25px" Width="245px"></asp:TextBox>
                </td>
                <td style="height: 40px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="DateTextBox" 
                        ErrorMessage="Please fill the date." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 40px">
                    &nbsp;</td>
                <td class="style3" style="height: 40px">
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" Width="68px" 
                        onclick="SubmitButton_Click" />&nbsp;&nbsp;
                    <input id="CancelButton" type="reset" value="Cancel" /></td>
                <td style="height: 40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 40px">
                    &nbsp;</td>
                <td class="style3" style="height: 40px">
                    &nbsp;</td>
                <td style="height: 40px">
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
        <li><a href="Review_Prescription.aspx">Review Prescription</a></li>
            <li><a href="Prescription_History.aspx">Prescription History</a></li>
            <li><a href="#">Physician Information</a></li>
            <li><a href="#">Pharmacy Information</a></li>
        </ul>
        <ul>
        
        </ul>
    </aside>
</asp:Content>
