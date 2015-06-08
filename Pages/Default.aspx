<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IEMHR_ASP_App._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>IEMHR</h1>
        <p class="lead">Integrated Medical &amp; Health record is a system which integrates EPM, EHR &amp; EHR. </p>
        <p><a href="#" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    
    <!-- Services section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Get started with
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i> EPM</h4>
                    </div>
                    <div class="panel-body">
                        <p>Secure way to electronically connect patients, healthcare providers, 
            pharmacists and Pharmacy.</p>
                        <a href="EPM.aspx" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i> EMR</h4>
                    </div>
                    <div class="panel-body">
                        <p>Billing system integration, automatic remiders, document scanning and medical 
            tracking.</p>
                        <a href="EMR.aspx" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i> EHR</h4>
                    </div>
                    <div class="panel-body">
                        <p>Share info with other healthcare providers, follow patient, get information 
                            from clinicians involved.</p>
                        <a href="EHR.aspx" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>

