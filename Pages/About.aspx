<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="IEMHR.About" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bs-example">
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#sectionA">About</a></li>
            <li><a data-toggle="tab" href="#sectionB">Mission</a></li>
        </ul>
        <div class="tab-content">
            <div id="sectionA" class="tab-pane fade in active">
                <h3>About</h3>
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
            </div>
            <div id="sectionB" class="tab-pane fade">
                <h3>Mission</h3>
                <p>To create an Eco sytem that connects patients and health providers to ensure efficient and effective exchange of information. </p>
            </div>
        </div>
    </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>
