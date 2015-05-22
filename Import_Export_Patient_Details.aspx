<%@ Title="Import/Export patient details" Page Language="C#" AutoEventWireup="true" CodeBehind="Import_Export_Patient_Details.aspx.cs" Inherits="RepApp.Import_Export_Patient_Details" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <%: Title %>.</h1>
        <h2>
            <div>
                <table>
                    <tr>
                        <td>Select File: </td>
                        <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                        <td>
                            <asp:Button ID="btnImport" runat="server" Text="Import Data" /></td>
                    </tr>
                </table>
                <div>
                    <br />
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="true" />
                    <br />
                    <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="false">
                        <EmptyDataTemplate>
                            <div style="padding:10px">
                                Data not found!
                            </div>
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField HeaderText="Patient Id" DataField="PatientId" />
                            <asp:BoundField HeaderText="First Name" DataField="FirstName" />
                            <asp:BoundField HeaderText="Middle Name" DataField="MiddleName" />
                            <asp:BoundField HeaderText="Last Name" DataField="LastName" />
                            <asp:BoundField HeaderText="Age" DataField="Age" />
                            <asp:BoundField HeaderText="Gender" DataField="Gender" />
                            <asp:BoundField HeaderText="NextOfKin" DataField="NextOfKin" />
                            <asp:BoundField HeaderText="Email" DataField="Email" />
                            <asp:BoundField HeaderText="Phone no" DataField="Phoneno" />
                            <asp:BoundField HeaderText="Address" DataField="Address" />
                            <asp:BoundField HeaderText="Nationality" DataField="Nationality" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
</asp:Content>
