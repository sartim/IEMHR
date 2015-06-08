<%@ Page Title="Prescription form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prescription_Details.aspx.cs" Inherits="IEMHR_ASP_App.Pages.Prescription_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
<div class="row">
 <div class="col-md-8">
    <div class="form-horizontal">
        <h4>Please record patient details <a href ="Patient_Details.aspx">here</a> if he/she does not have a patient Id</h4>
        <hr />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" AssociatedControlID="txtPrescriberName" CssClass="col-md-2 control-label">Prescriber Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPrescriberName" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrescriberName"
                    CssClass="text-danger" ErrorMessage="The prescriber name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" AssociatedControlID="txtPhysicianId" CssClass="col-md-2 control-label">Physician Id</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPhysicianId" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhysicianId"
                    CssClass="text-danger" ErrorMessage="The physician Id field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" AssociatedControlID="txtPatientName" CssClass="col-md-2 control-label">Patient name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPatientName" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPatientName"
                    CssClass="text-danger" ErrorMessage="The patient name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" AssociatedControlID="txtPatientId" CssClass="col-md-2 control-label">Patient Id</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPatientId" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPatientId"
                    CssClass="text-danger" ErrorMessage="The patient Id field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label5" runat="server" AssociatedControlID="txtDiagnosis" CssClass="col-md-2 control-label">Diagnosis</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtDiagnosis" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDiagnosis"
                    CssClass="text-danger" ErrorMessage="The diagnosis field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" AssociatedControlID="txtDrugName" CssClass="col-md-2 control-label">Drug name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtDrugName" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDrugName"
                    CssClass="text-danger" ErrorMessage="The drug name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" AssociatedControlID="txtDose" CssClass="col-md-2 control-label">Dose</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtDose" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDose"
                    CssClass="text-danger" ErrorMessage="The dose field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" AssociatedControlID="ddlDoseUnits" CssClass="col-md-2 control-label">Dose units</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="ddlDoseUnits" runat="server" CssClass="form-control">
                    <asp:ListItem>PO (by mouth)</asp:ListItem>
                    <asp:ListItem>PR (per rectum)</asp:ListItem>
                    <asp:ListItem>IM (intramuscular)</asp:ListItem>
                    <asp:ListItem>ID (intradermal)</asp:ListItem>
                    <asp:ListItem>IN (intranasal)</asp:ListItem>
                    <asp:ListItem>TP (topical)</asp:ListItem>
                    <asp:ListItem>SL (sublingual)</asp:ListItem>
                    <asp:ListItem>BUCC (buccal)</asp:ListItem>
                    <asp:ListItem>IP (intraperitoneal))</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlDoseUnits"
                    CssClass="text-danger" ErrorMessage="The dose units field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label18" runat="server" AssociatedControlID="ddlRoute" CssClass="col-md-2 control-label">Route</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="ddlRoute" runat="server" CssClass="form-control">
                    <asp:ListItem>mg</asp:ListItem>
                    <asp:ListItem>microgram</asp:ListItem>
                    <asp:ListItem>ml</asp:ListItem>
                    <asp:ListItem>units</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="ddlDoseUnits"
                    CssClass="text-danger" ErrorMessage="The dose units field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label9" runat="server" AssociatedControlID="txtFrequency" CssClass="col-md-2 control-label">Frequency</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtFrequency" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtFrequency"
                    CssClass="text-danger" ErrorMessage="The frequency field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label10" runat="server" AssociatedControlID="txtNumOfDays" CssClass="col-md-2 control-label">Number Of days</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtNumOfDays" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtNumOfDays"
                    CssClass="text-danger" ErrorMessage="The number of days field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label11" runat="server" AssociatedControlID="txtSubmitDate" CssClass="col-md-2 control-label">Submitted date</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtSubmitDate" CssClass="form-control" TextMode="DateTime" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtSubmitDate"
                    CssClass="text-danger" ErrorMessage="The submit date field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label12" runat="server" AssociatedControlID="txtProcessedDate" CssClass="col-md-2 control-label">Processed Date</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtProcessedDate" CssClass="form-control" TextMode="DateTime" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtProcessedDate"
                    CssClass="text-danger" ErrorMessage="The processed date field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label13" runat="server" AssociatedControlID="txtAllergies" CssClass="col-md-2 control-label">Allergies</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtAllergies" CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtAllergies"
                    CssClass="text-danger" ErrorMessage="The allergies field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label14" runat="server" AssociatedControlID="txtComments" CssClass="col-md-2 control-label">Comments</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtComments" CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtComments"
                    CssClass="text-danger" ErrorMessage="The comments field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label15" runat="server" AssociatedControlID="txtRefills" CssClass="col-md-2 control-label">Refills</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtRefills" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtRefills"
                    CssClass="text-danger" ErrorMessage="The refills field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label16" runat="server" AssociatedControlID="txtIssueTo" CssClass="col-md-2 control-label">Issue to</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtIssueTo" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtIssueTo"
                    CssClass="text-danger" ErrorMessage="The issue to field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label17" runat="server" AssociatedControlID="txtPharmacyId" CssClass="col-md-2 control-label">Pharmacy Id</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPharmacyId" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtPharmacyId"
                    CssClass="text-danger" ErrorMessage="The pharmacy Id field is required." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Submit" CssClass="btn btn-default" 
                    ID="SubmitButton" OnClick="SubmitButton_Click" />
            </div>
        </div>
      </div>
   </div>
</div>
</asp:Content>
