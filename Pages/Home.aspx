<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="IEMHR._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- NAVBAR CODE END -->
    <div id="home">
        <div class="overlay">
            <!-- overylay class usage -->
            <div class="container">
                <div class="col-md-8 col-md-offset-2 text-center">

                    <h1>IEMHR</h1>
                    <h2>Integrated Electronic Medical &amp; Health Record </h2>
                    <p class="p-cls">
                        An integrated solution connecting pharmacies, clinics, hospitals and health providers.
                    </p>
                </div>

            </div>
        </div>

    </div>
    <!--HOME SECTION END  -->
    <section id="services">
        <div class="container">
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
                        <p>
                            Billing system integration, automatic remiders, document 
                            scanning and medical tracking.
                        </p>
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
                        <p>
                            Share info with other healthcare providers, follow 
                            patient, get information from clinicians involved.
                        </p>
                        <a href="EHR.aspx" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <!--SERVICES SECTION END  -->
    <div class="parallax-like">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <h1>Goal</h1>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div>
                            <strong>500+</strong>
                            <p>
                                Pharmacies
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div>
                            <strong>500+</strong>
                            <p>
                                Hospitals
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 ">
                        <div>
                            <strong>500+</strong>
                            <p>
                                Clinics
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
   </div>

</asp:Content>