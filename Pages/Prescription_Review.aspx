<%@ Page Title="Prescription history" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prescription_Review.aspx.cs" Inherits="IEMHR_ASP_App.Pages.Prescription_Review" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PrescriptionId" DataSourceID="PrescriptionSqlDataSource" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
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
    <asp:SqlDataSource ID="PrescriptionSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" DeleteCommand="DELETE FROM [PrescriptionMaster] WHERE [PrescriptionId] = @PrescriptionId" InsertCommand="INSERT INTO [PrescriptionMaster] ([PrescriptionId], [PrescriberName], [PhysicianId], [PatientName], [PatientId], [Diagnosis], [DrugName], [Dose], [DoseUnits], [Frequency], [NumOfDays], [SubmitDate], [ProcessedDate], [Allergies], [Comments], [Refills], [IssueTo], [PharmacyId]) VALUES (@PrescriptionId, @PrescriberName, @PhysicianId, @PatientName, @PatientId, @Diagnosis, @DrugName, @Dose, @DoseUnits, @Frequency, @NumOfDays, @SubmitDate, @ProcessedDate, @Allergies, @Comments, @Refills, @IssueTo, @PharmacyId)" SelectCommand="SELECT * FROM [PrescriptionMaster] ORDER BY [SubmitDate]" UpdateCommand="UPDATE [PrescriptionMaster] SET [PrescriberName] = @PrescriberName, [PhysicianId] = @PhysicianId, [PatientName] = @PatientName, [PatientId] = @PatientId, [Diagnosis] = @Diagnosis, [DrugName] = @DrugName, [Dose] = @Dose, [DoseUnits] = @DoseUnits, [Frequency] = @Frequency, [NumOfDays] = @NumOfDays, [SubmitDate] = @SubmitDate, [ProcessedDate] = @ProcessedDate, [Allergies] = @Allergies, [Comments] = @Comments, [Refills] = @Refills, [IssueTo] = @IssueTo, [PharmacyId] = @PharmacyId WHERE [PrescriptionId] = @PrescriptionId">
        <DeleteParameters>
            <asp:Parameter Name="PrescriptionId" Type="String" />
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
            <asp:Parameter Name="PrescriptionId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>&nbsp;</p>
    <div class="form-group">
            <asp:Label ID="Label2" runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label">Display: </asp:Label>
            <div class="col-md-10">
               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="PrescriptionSqlDataSource" DataTextField="PatientName" DataValueField="PatientName"></asp:DropDownList>
            </div>
    </div>
    <p>&nbsp;</p>
    <div class="form-group">
    <asp:Label ID="Label1" runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label">Go to: </asp:Label>
        <div class="col-md-10">
            <a class="btn btn-default" href="PRescription_Details.aspx">Prescription Details</a>
        </div>
    </div>
    <div>
    <p>&nbsp;</p>
    <strong>Import/Export</strong><br />
    <a class="btn btn-default" href="#" title="Import to Excell">Import Excell</a>
    <a class="btn btn-default" href="#" title="Export to Excell">Export Excell</a>
    </div>

</asp:Content>
