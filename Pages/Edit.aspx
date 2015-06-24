﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Scheduling.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="IEMHR.Pages.Edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Styles/Blank.css" rel="stylesheet" type="text/css" />
    <title>Edit</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" cellspacing="4" cellpadding="0">
            <tr>
                <td align="right" valign="top">Start:</td>
                <td><asp:TextBox ID="TextBoxStart" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" valign="top">End:</td>
                <td><asp:TextBox ID="TextBoxEnd" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" valign="top">Person:</td>
                <td><asp:DropDownList ID="DropDownListPerson" runat="server" DataTextField="PersonFullName" DataValueField="PersonId"></asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right" valign="top">Location:</td>
                <td><asp:DropDownList ID="DropDownListLocation" runat="server" DataTextField="LocationName" DataValueField="LocationId"></asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right" valign="top">Note:</td>
                <td><asp:TextBox ID="TextBoxNote" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" valign="top">Repeat:</td>
                <td>
                
<!-- Recurrence section -->
<script type="text/javascript" src="Scripts/DayPilot/recurrence.js"></script>
        <select id="repeat">
            <option value="norepeat">Does not repeat</option>
            <option value="daily">Daily</option>
            <option value="weekly">Weekly</option>
            <option value="monthly">Monthly</option>
            <option value="annually">Annually</option>
        </select>

<div id="select_norepeat" style="display:none">
</div>

<div id="select_daily" style="display:none">
Repeat every <input id="daily_every" style="width: 20px;" value="1" /> day(s).
</div>

<div id="select_weekly" style="display:none">
Repeat every <input id="weekly_every" style="width: 20px;" value="1" /> week(s).
<div id="select_weekly_error" style="display:none; margin-top: 5px; padding: 2px; background-color: #FFF1A8;">Please select at least one day:</div>
<br />
<table>
<tr>
<td>On days: </td>
<td><label for="weekly_0"><input type="checkbox" id="weekly_0" />Sun</label></td>
<td><label for="weekly_1"><input type="checkbox" id="weekly_1" />Mon</label></td>
<td><label for="weekly_2"><input type="checkbox" id="weekly_2" />Tue</label></td>
<td><label for="weekly_3"><input type="checkbox" id="weekly_3" />Wed</label></td>
<td><label for="weekly_4"><input type="checkbox" id="weekly_4" />Thu</label></td>
<td><label for="weekly_5"><input type="checkbox" id="weekly_5" />Fri</label></td>
<td><label for="weekly_6"><input type="checkbox" id="weekly_6" />Sat</label></td>
</tr>
</table>
</div>

<div id="select_monthly" style="display:none">
Repeat every <input id="monthly_every" style="width: 20px;" value="1" /> month(s).
<div id="select_monthly_error" style="display:none; margin-top: 5px; padding: 2px; background-color: #FFF1A8;">Please select at least one day:</div>
<br />  
<label for="monthly_1"><input type="checkbox" id="monthly_1" />1</label>
<label for="monthly_2"><input type="checkbox" id="monthly_2" />2</label>
<label for="monthly_3"><input type="checkbox" id="monthly_3" />3</label>
<label for="monthly_4"><input type="checkbox" id="monthly_4" />4</label>
<label for="monthly_5"><input type="checkbox" id="monthly_5" />5</label>
<label for="monthly_6"><input type="checkbox" id="monthly_6" />6</label>
<label for="monthly_7"><input type="checkbox" id="monthly_7" />7</label>
<label for="monthly_8"><input type="checkbox" id="monthly_8" />8</label>
<label for="monthly_9"><input type="checkbox" id="monthly_9" />9</label>
<label for="monthly_10"><input type="checkbox" id="monthly_10" />10</label>
<label for="monthly_11"><input type="checkbox" id="monthly_11" />11</label>
<label for="monthly_12"><input type="checkbox" id="monthly_12" />12</label>
<label for="monthly_13"><input type="checkbox" id="monthly_13" />13</label>
<label for="monthly_14"><input type="checkbox" id="monthly_14" />14</label>
<label for="monthly_15"><input type="checkbox" id="monthly_15" />15</label>
<label for="monthly_16"><input type="checkbox" id="monthly_16" />16</label>
<label for="monthly_17"><input type="checkbox" id="monthly_17" />17</label>
<label for="monthly_18"><input type="checkbox" id="monthly_18" />18</label>
<label for="monthly_19"><input type="checkbox" id="monthly_19" />19</label>
<label for="monthly_20"><input type="checkbox" id="monthly_20" />20</label>
<label for="monthly_21"><input type="checkbox" id="monthly_21" />21</label>
<label for="monthly_22"><input type="checkbox" id="monthly_22" />22</label>
<label for="monthly_23"><input type="checkbox" id="monthly_23" />23</label>
<label for="monthly_24"><input type="checkbox" id="monthly_24" />24</label>
<label for="monthly_25"><input type="checkbox" id="monthly_25" />25</label>
<label for="monthly_26"><input type="checkbox" id="monthly_26" />26</label>
<label for="monthly_27"><input type="checkbox" id="monthly_27" />27</label>
<label for="monthly_28"><input type="checkbox" id="monthly_28" />28</label>
<label for="monthly_29"><input type="checkbox" id="monthly_29" />29</label>
<label for="monthly_30"><input type="checkbox" id="monthly_30" />30</label>
<label for="monthly_31"><input type="checkbox" id="monthly_31" />31</label>
</div>

<div id="select_annually" style="display:none">
</div>

<div id="range" style="display:none">
<div style="border-bottom: 2px solid #d0d0d0; margin-top:10px; margin-bottom: 10px;"></div>
<label for="repeat_indefinitely"><input type="radio" name="repeat_range" id="repeat_indefinitely" />Repeat indefinitely</label><br />
<label for="repeat_until"><input type="radio" name="repeat_range" id="repeat_until" />Repeat until: </label><input id="repeat_until_value" style="width: 150px;" value="12/31/2099" /><br />
<label for="repeat_times"><input type="radio" name="repeat_range" id="repeat_times" />Repeat </label><input id="repeat_times_value" style="width: 20px;" /> time(s).<br />
</div>

<script type="text/javascript">
var r = new DayPilot.Recurrence();
r.saveButtonId = "ButtonOK";
r.jsonHiddenId = "Recurrence";
r.config = <%= RecurrenceJson %>;
r.Init();
</script>

<!-- Recurrence section ends here -->
                
                </td>
            </tr>
            <tr>
                <td align="right"></td>
                <td>
                    <asp:HiddenField ID="Recurrence" runat="server" />
                    <asp:Button ID="ButtonOK" runat="server"Text="OK" />
                    <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>
        
        </div>
    </form>
</body>
</html>

