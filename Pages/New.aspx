<%@ Page Title="" Language="C#" MasterPageFile="~/Scheduling.Master" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="IEMHR.Pages.New" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New</title>
    <link href="~/Styles/Blank.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" cellspacing="4" cellpadding="0">
            <tr>
                <td align="right">Start:</td>
                <td><asp:TextBox ID="TextBoxStart" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right">End:</td>
                <td><asp:TextBox ID="TextBoxEnd" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right">Person:</td>
                <td><asp:DropDownList ID="DropDownListPerson" runat="server" DataTextField="PersonFullName" DataValueField="PersonId"></asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right">Location:</td>
                <td><asp:DropDownList ID="DropDownListLocation" runat="server" DataTextField="LocationName" DataValueField="LocationId"></asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right">Note:</td>
                <td><asp:TextBox ID="TextBoxNote" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right"></td>
                <td>
                    <asp:Button ID="ButtonOK" runat="server" Text="OK" />
                    <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>
        
        </div>
    </form>
</body>
</html>
