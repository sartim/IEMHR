<%@ Page Title="Prescription Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prescription_Management.aspx.cs" Inherits="IEMHR.Pages.Prescription_Management" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bs-example">
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#sectionA">Prescription details</a></li>
        <li><a data-toggle="tab" href="#sectionB">Prescription records</a></li>
        <li><a data-toggle="tab" href="#sectionC">Prescription report</a></li>
    </ul>
    <div class="tab-content">
        <div id="sectionA" class="tab-pane fade in active">
            <h3>Prescription details</h3>
            <div class="row">
            <div class="col-md-8">
            <div class="form-horizontal">
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
                    ID="SubmitButton" />
            </div>
        </div>   
        </div>
        </div>
        </div>
        </div>
        <div id="sectionB" class="tab-pane fade">
            <h3>Prescription records</h3>
            <div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" DeleteCommand="DELETE FROM [PrescriptionMaster] WHERE [PrescriptionId] = @original_PrescriptionId AND [PrescriberName] = @original_PrescriberName AND [PhysicianId] = @original_PhysicianId AND [PatientName] = @original_PatientName AND [PatientId] = @original_PatientId AND [Diagnosis] = @original_Diagnosis AND [DrugName] = @original_DrugName AND [Dose] = @original_Dose AND [DoseUnits] = @original_DoseUnits AND [Frequency] = @original_Frequency AND [NumOfDays] = @original_NumOfDays AND [SubmitDate] = @original_SubmitDate AND [ProcessedDate] = @original_ProcessedDate AND (([Allergies] = @original_Allergies) OR ([Allergies] IS NULL AND @original_Allergies IS NULL)) AND (([Comments] = @original_Comments) OR ([Comments] IS NULL AND @original_Comments IS NULL)) AND [Refills] = @original_Refills AND [IssueTo] = @original_IssueTo AND [PharmacyId] = @original_PharmacyId" InsertCommand="INSERT INTO [PrescriptionMaster] ([PrescriptionId], [PrescriberName], [PhysicianId], [PatientName], [PatientId], [Diagnosis], [DrugName], [Dose], [DoseUnits], [Frequency], [NumOfDays], [SubmitDate], [ProcessedDate], [Allergies], [Comments], [Refills], [IssueTo], [PharmacyId]) VALUES (@PrescriptionId, @PrescriberName, @PhysicianId, @PatientName, @PatientId, @Diagnosis, @DrugName, @Dose, @DoseUnits, @Frequency, @NumOfDays, @SubmitDate, @ProcessedDate, @Allergies, @Comments, @Refills, @IssueTo, @PharmacyId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PrescriptionMaster]" UpdateCommand="UPDATE [PrescriptionMaster] SET [PrescriberName] = @PrescriberName, [PhysicianId] = @PhysicianId, [PatientName] = @PatientName, [PatientId] = @PatientId, [Diagnosis] = @Diagnosis, [DrugName] = @DrugName, [Dose] = @Dose, [DoseUnits] = @DoseUnits, [Frequency] = @Frequency, [NumOfDays] = @NumOfDays, [SubmitDate] = @SubmitDate, [ProcessedDate] = @ProcessedDate, [Allergies] = @Allergies, [Comments] = @Comments, [Refills] = @Refills, [IssueTo] = @IssueTo, [PharmacyId] = @PharmacyId WHERE [PrescriptionId] = @original_PrescriptionId AND [PrescriberName] = @original_PrescriberName AND [PhysicianId] = @original_PhysicianId AND [PatientName] = @original_PatientName AND [PatientId] = @original_PatientId AND [Diagnosis] = @original_Diagnosis AND [DrugName] = @original_DrugName AND [Dose] = @original_Dose AND [DoseUnits] = @original_DoseUnits AND [Frequency] = @original_Frequency AND [NumOfDays] = @original_NumOfDays AND [SubmitDate] = @original_SubmitDate AND [ProcessedDate] = @original_ProcessedDate AND (([Allergies] = @original_Allergies) OR ([Allergies] IS NULL AND @original_Allergies IS NULL)) AND (([Comments] = @original_Comments) OR ([Comments] IS NULL AND @original_Comments IS NULL)) AND [Refills] = @original_Refills AND [IssueTo] = @original_IssueTo AND [PharmacyId] = @original_PharmacyId">
        <DeleteParameters>
            <asp:Parameter Name="original_PrescriptionId" Type="String" />
            <asp:Parameter Name="original_PrescriberName" Type="String" />
            <asp:Parameter Name="original_PhysicianId" Type="Int32" />
            <asp:Parameter Name="original_PatientName" Type="String" />
            <asp:Parameter Name="original_PatientId" Type="String" />
            <asp:Parameter Name="original_Diagnosis" Type="String" />
            <asp:Parameter Name="original_DrugName" Type="String" />
            <asp:Parameter Name="original_Dose" Type="String" />
            <asp:Parameter Name="original_DoseUnits" Type="String" />
            <asp:Parameter Name="original_Frequency" Type="String" />
            <asp:Parameter Name="original_NumOfDays" Type="String" />
            <asp:Parameter Name="original_SubmitDate" Type="DateTime" />
            <asp:Parameter Name="original_ProcessedDate" Type="DateTime" />
            <asp:Parameter Name="original_Allergies" Type="String" />
            <asp:Parameter Name="original_Comments" Type="String" />
            <asp:Parameter Name="original_Refills" Type="String" />
            <asp:Parameter Name="original_IssueTo" Type="String" />
            <asp:Parameter Name="original_PharmacyId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PrescriptionId" Type="String" />
            <asp:Parameter Name="PrescriberName" Type="String" />
            <asp:Parameter Name="PhysicianId" Type="Int32" />
            <asp:Parameter Name="PatientName" Type="String" />
            <asp:Parameter Name="PatientId" Type="String" />
            <asp:Parameter Name="Diagnosis" Type="String" />
            <asp:Parameter Name="DrugName" Type="String" />
            <asp:Parameter Name="Dose" Type="String" />
            <asp:Parameter Name="DoseUnits" Type="String" />
            <asp:Parameter Name="Frequency" Type="String" />
            <asp:Parameter Name="NumOfDays" Type="String" />
            <asp:Parameter Name="SubmitDate" Type="DateTime" />
            <asp:Parameter Name="ProcessedDate" Type="DateTime" />
            <asp:Parameter Name="Allergies" Type="String" />
            <asp:Parameter Name="Comments" Type="String" />
            <asp:Parameter Name="Refills" Type="String" />
            <asp:Parameter Name="IssueTo" Type="String" />
            <asp:Parameter Name="PharmacyId" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PrescriberName" Type="String" />
            <asp:Parameter Name="PhysicianId" Type="Int32" />
            <asp:Parameter Name="PatientName" Type="String" />
            <asp:Parameter Name="PatientId" Type="String" />
            <asp:Parameter Name="Diagnosis" Type="String" />
            <asp:Parameter Name="DrugName" Type="String" />
            <asp:Parameter Name="Dose" Type="String" />
            <asp:Parameter Name="DoseUnits" Type="String" />
            <asp:Parameter Name="Frequency" Type="String" />
            <asp:Parameter Name="NumOfDays" Type="String" />
            <asp:Parameter Name="SubmitDate" Type="DateTime" />
            <asp:Parameter Name="ProcessedDate" Type="DateTime" />
            <asp:Parameter Name="Allergies" Type="String" />
            <asp:Parameter Name="Comments" Type="String" />
            <asp:Parameter Name="Refills" Type="String" />
            <asp:Parameter Name="IssueTo" Type="String" />
            <asp:Parameter Name="PharmacyId" Type="String" />
            <asp:Parameter Name="original_PrescriptionId" Type="String" />
            <asp:Parameter Name="original_PrescriberName" Type="String" />
            <asp:Parameter Name="original_PhysicianId" Type="Int32" />
            <asp:Parameter Name="original_PatientName" Type="String" />
            <asp:Parameter Name="original_PatientId" Type="String" />
            <asp:Parameter Name="original_Diagnosis" Type="String" />
            <asp:Parameter Name="original_DrugName" Type="String" />
            <asp:Parameter Name="original_Dose" Type="String" />
            <asp:Parameter Name="original_DoseUnits" Type="String" />
            <asp:Parameter Name="original_Frequency" Type="String" />
            <asp:Parameter Name="original_NumOfDays" Type="String" />
            <asp:Parameter Name="original_SubmitDate" Type="DateTime" />
            <asp:Parameter Name="original_ProcessedDate" Type="DateTime" />
            <asp:Parameter Name="original_Allergies" Type="String" />
            <asp:Parameter Name="original_Comments" Type="String" />
            <asp:Parameter Name="original_Refills" Type="String" />
            <asp:Parameter Name="original_IssueTo" Type="String" />
            <asp:Parameter Name="original_PharmacyId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PrescriptionId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="PrescriptionId" HeaderText="PrescriptionId" ReadOnly="True" SortExpression="PrescriptionId" />
            <asp:BoundField DataField="PrescriberName" HeaderText="PrescriberName" SortExpression="PrescriberName" />
            <asp:BoundField DataField="PhysicianId" HeaderText="PhysicianId" SortExpression="PhysicianId" />
            <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
            <asp:BoundField DataField="Diagnosis" HeaderText="Diagnosis" SortExpression="Diagnosis" />
            <asp:BoundField DataField="DrugName" HeaderText="DrugName" SortExpression="DrugName" />
            <asp:BoundField DataField="Dose" HeaderText="Dose" SortExpression="Dose" />
            <asp:BoundField DataField="DoseUnits" HeaderText="DoseUnits" SortExpression="DoseUnits" />
            <asp:BoundField DataField="Frequency" HeaderText="Frequency" SortExpression="Frequency" />
            <asp:BoundField DataField="NumOfDays" HeaderText="NumOfDays" SortExpression="NumOfDays" />
            <asp:BoundField DataField="SubmitDate" HeaderText="SubmitDate" SortExpression="SubmitDate" />
            <asp:BoundField DataField="ProcessedDate" HeaderText="ProcessedDate" SortExpression="ProcessedDate" />
            <asp:BoundField DataField="Allergies" HeaderText="Allergies" SortExpression="Allergies" />
            <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
            <asp:BoundField DataField="Refills" HeaderText="Refills" SortExpression="Refills" />
            <asp:BoundField DataField="IssueTo" HeaderText="IssueTo" SortExpression="IssueTo" />
            <asp:BoundField DataField="PharmacyId" HeaderText="PharmacyId" SortExpression="PharmacyId" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
            </div>
        </div>
        <div id="sectionC" class="tab-pane fade">
            <h3>Prescription report</h3>
            <div>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
            <LocalReport ReportPath="Pages\rdlc\Prescription_Details_Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="PrescriptionSqlDataSource" Name="PrescriptionDataSet" />
                </DataSources>
            </LocalReport>
            </rsweb:ReportViewer>
            <asp:SqlDataSource ID="PrescriptionSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" SelectCommand="SELECT * FROM [PrescriptionMaster]"></asp:SqlDataSource>
            </div>
        </div>
        
    </div>
</div>

</asp:Content>

