<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prescription_History.aspx.cs" Inherits="RepApp.Review_Prescription" MasterPageFile="~/Site.Master" Title="Review Prescrption History" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Page.Title %></h1>
    </hgroup>

    <article>
    <div>
    
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:IEMHRConnectionString %>" 
            SelectCommand="SELECT * FROM [EPrescription]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
            AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="PrescriptionId" HeaderText="PrescriptionId" 
                    SortExpression="PrescriptionId" />
                <asp:BoundField DataField="PrescriberName" HeaderText="PrescriberName" 
                    SortExpression="PrescriberName" />
                <asp:BoundField DataField="PatientName" HeaderText="PatientName" 
                    SortExpression="PatientName" />
                <asp:BoundField DataField="PatientId" HeaderText="PatientId" 
                    SortExpression="PatientId" />
                <asp:BoundField DataField="Diagnosis" HeaderText="Diagnosis" 
                    SortExpression="Diagnosis" />
                <asp:BoundField DataField="Allergies" HeaderText="Allergies" 
                    SortExpression="Allergies" />
                <asp:BoundField DataField="SIG" HeaderText="SIG" SortExpression="SIG" />
                <asp:BoundField DataField="Refills" HeaderText="Refills" 
                    SortExpression="Refills" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity" />
                <asp:BoundField DataField="IssueTo" HeaderText="IssueTo" 
                    SortExpression="IssueTo" />
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
        <hr />
        <ul>
            <li><a href="#">Export to Excell</a></li>
            <li><a href="#">Display Report</a></li>
        </ul>
        <p><a href="Eprescribe.aspx">Go to E Prescription Page</a></p>
    
    
    </div>
        
    </article>
</asp:Content>

