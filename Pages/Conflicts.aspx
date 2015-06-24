<%@ Page Title="Conflicts" Language="C#" MasterPageFile="~/Scheduling.Master" AutoEventWireup="true" CodeBehind="Conflicts.aspx.cs" Inherits="IEMHR.Pages.Conflicts" %>

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
        <p>Lists conflicting assignments for each person (1 month from today).</p>

        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="Conflict">
                        <ItemTemplate>
                            <a href='People.aspx?person=<%# Eval("Resource") %>&date=<%# Convert.ToDateTime(Eval("Start")).ToString("s") %>'>Show</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Person">
                        <ItemTemplate>
                            <%# Eval("Events[0].DataItem.Source[\"PersonFullName\"]")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Start" HeaderText="Start" />
                    <asp:BoundField DataField="End" HeaderText="End" />
                    <asp:TemplateField HeaderText="Events in Conflict">
                        <ItemTemplate>
                            <%# Eval("Events.Count") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div> 
        <div><asp:Label ID="Label1" runat="server"></asp:Label> conflicts found.</div>

    </div>

</asp:Content>
