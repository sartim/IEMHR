<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="IEMHR.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>IEMHR.</h3>
    <article>
        <p>
            IEMHR abbreviates Integrated Electronic Medical and Health Records. IEMHR integrates
            (EMR) Electronic Medical Record and (EHR) Electronic Health Record which both integrate 
            (EPM) Electronic Prescription Management. 
        </p>
        <p>
            This application connects health providers as a network with patient tracking integtration
            and E prescription as part of the EMR. Health providers can be able to view test results
            using any browser enabled mobile deviices among some of the features.
        </p>
        <p>
            IEMHR enables e-prescribing by providing prescribers with secure electronic access to 
            prescription benefit information and patient prescription history and by allowing prescribers
            to electronically route prescriptiond to their patients' pharmacies of choice. Prescription routing
            allows new prescriptions to be sent electronically to the computer system at the pharmacy of patient's
            choice, as opposed to sending it by fax or on paper.   
        </p>
    </article>
</asp:Content>
