<%@ Page Title="Locations" Language="C#" MasterPageFile="~/Scheduling.Master" AutoEventWireup="true" CodeBehind="Locations.aspx.cs" Inherits="IEMHR.Pages.Locations" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <script type="text/javascript">
        function updateCalendar() {
            dp.clientState.location = parseInt($("#<%= DropDownListLocation.ClientID %>").val());
            dp.commandCallBack('refresh');
        }

        $(document).ready(function () {
            updateCalendar();
        });
    </script>

    <div class="daypilot-left">
        <DayPilot:DayPilotNavigator 
            ID="DayPilotNavigator1"
            runat="server" 
            BoundDayPilotID="DayPilotCalendar1"
            SelectMode="Week"
            CssClassPrefix="navigator_silver_"
            ShowMonths="3"
            ClientObjectName="dpn"
        />
    
    </div>
    <div class="daypilot-main">

        <div>Location: 
        <asp:DropDownList 
            ID="DropDownListLocation" 
            runat="server"
            DataTextField="LocationName"
            DataValueField="LocationId"
            onchange="updateCalendar();"
        />
        </div> 

        <DayPilot:DayPilotCalendar 
            ID="DayPilotCalendar1" 
            runat="server" 
            DataEndField="AssignmentEnd"
            DataStartField="AssignmentStart" 
            DataTextField="AssignmentNote" 
            DataValueField="AssignmentId" 
            DataRecurrenceField="AssignmentRecurrence"
            ViewType="Week"
            EventMoveHandling="CallBack"
            ContextMenuID="DayPilotMenu1" 
            EventResizeHandling="CallBack"
            TimeRangeSelectedHandling="JavaScript"
            TimeRangeSelectedJavaScript="timeRangeSelected(start, end, $('#MainContent_DropDownListLocation').val());"
            EventClickHandling="JavaScript" 
            EventClickJavaScript="eventClick(e);"
            ClientObjectName="dp" 
            EventDeleteHandling="JavaScript"
            ShowEventStartEnd="false"
            EventDeleteJavaScript="if (confirm('Do you really want to delete this assignment?')) dp.eventDeleteCallBack(e);"

            HeaderHeight="40"
            HeaderDateFormat="dddd<br/>d/M/yyyy"
            AfterRenderJavaScript="afterRender();"

        />

        <DayPilot:DayPilotMenu ID="DayPilotMenu1" runat="server" CssClassPrefix="menu_">
            <DayPilot:MenuItem Text="Edit..." Action="PostBack" Command="Open"></DayPilot:MenuItem>
            <DayPilot:MenuItem Text="-" Action="NavigateUrl"></DayPilot:MenuItem>
            <DayPilot:MenuItem Text="Delete" Action="Callback" Command="Delete"></DayPilot:MenuItem>
        </DayPilot:DayPilotMenu>

    </div>

</asp:Content>
