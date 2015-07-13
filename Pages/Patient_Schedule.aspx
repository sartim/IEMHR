<%@ Page Title="Patient Scheduling" Language="C#" MasterPageFile="~/Scheduling.Master" AutoEventWireup="true" CodeBehind="Patient_Schedule.aspx.cs" Inherits="IEMHR.Pages.Patient_Schedule" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <div class="daypilot-left">
        <DayPilot:DayPilotNavigator 
            ID="DayPilotNavigator1"
            runat="server" 
            BoundDayPilotID="DayPilotScheduler1"
            SelectMode="Week"
            CssClassPrefix="navigator_silver_"
            ShowMonths="3"
            ClientObjectName="dpn"
        />
    
    </div>
    <div class="daypilot-main">

        <DayPilot:DayPilotScheduler
            ID="DayPilotScheduler1" 
            runat="server" 
            DataEndField="AssignmentEnd"
            DataStartField="AssignmentStart" 
            DataTextField="AssignmentNote" 
            DataValueField="AssignmentId" 
            DataRecurrenceField="AssignmentRecurrence"
            DataResourceField="LocationId"
            Days="7"
            EventMoveHandling="CallBack"
            ContextMenuID="DayPilotMenu1"
            EventResizeHandling="CallBack"
            TimeRangeSelectedJavaScript="timeRangeSelected(start, end, resource);"
            TimeRangeSelectedHandling="JavaScript"
            EventClickHandling="JavaScript" 
            EventClickJavaScript="eventClick(e);"
            ClientObjectName="dp" 
            EventDeleteHandling="JavaScript" 
            OnEventDelete="DayPilotCalendar1_EventDelete"
            ShowEventStartEnd="false"
            EventHeight="20"
            EventFontSize="12px"
            Width="100%"
            AfterRenderJavaScript="afterRender();"
            CssClassPrefix="scheduler_silver_"
            HourNameBackColor="#F0F0F0" style="top: 0px; left: 0px; height: 46px"

        />

        <DayPilot:DayPilotMenu ID="DayPilotMenu1" runat="server" CssClassPrefix="menu_">
            <DayPilot:MenuItem Text="Edit..." Action="JavaScript" JavaScript="eventClick(e);"></DayPilot:MenuItem>
            <DayPilot:MenuItem Text="-" Action="NavigateUrl"></DayPilot:MenuItem>
            <DayPilot:MenuItem Text="Delete" Action="JavaScript" JavaScript=" if (confirm('Do you really want to delete this assignment?')) dp.eventMenuClickCallBack(e, 'Delete');"></DayPilot:MenuItem>
        </DayPilot:DayPilotMenu>

    </div>
    
    <div class="daypilot-main">

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

        <DayPilot:DayPilotMenu ID="DayPilotMenu2" runat="server" CssClassPrefix="menu_">
            <DayPilot:MenuItem Text="Edit..." Action="PostBack" Command="Open"></DayPilot:MenuItem>
            <DayPilot:MenuItem Text="-" Action="NavigateUrl"></DayPilot:MenuItem>
            <DayPilot:MenuItem Text="Delete" Action="Callback" Command="Delete"></DayPilot:MenuItem>
        </DayPilot:DayPilotMenu>

    </div>


</asp:Content>