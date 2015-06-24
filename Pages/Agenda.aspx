<%@ Page Title="Agenda" Language="C#" MasterPageFile="~/Scheduling.Master" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="IEMHR.Pages.Agenda" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <script type="text/javascript">
        $(document).ready(function () {
            afterRender();
        });
    </script>

    <div>

        <div>Person: 
        <asp:DropDownList 
            ID="DropDownListPerson" 
            runat="server"
            DataTextField="PersonFullName"
            DataValueField="PersonId" 
            
            AutoPostBack="true"
            AppendDataBoundItems="true"
        >
        </asp:DropDownList>
        </div> 

        <asp:GridView ID="GridViewAgenda" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="AssignmentStart" HeaderText="Start" />
                <asp:BoundField DataField="AssignmentEnd" HeaderText="End" />
                <asp:BoundField DataField="LocationName" HeaderText="Location" />
                <asp:BoundField DataField="AssignmentNote" HeaderText="Note" />
            </Columns>
        </asp:GridView>

        <div><asp:Label ID="Label1" runat="server"></asp:Label> records found.</div>

    </div>

</asp:Content>