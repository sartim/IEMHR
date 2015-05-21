<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="RepApp.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <%: Title %>.</h1>
        <h2>
            Your app description page.</h2>
    </hgroup>
    <article>
        <p>
            IEMHR abbreviates Integrated Electronic Medical and Health Records.
        </p>
        <p>
            IEMHR integrates (EMR) Electronic Medical Record and (EHR) Electronic Health Record.
        </p>
        <p>
            This application connects health providers as a network with patient tracking integtration
            and E prescription as part of the EMR.
        </p>
    </article>
    <aside>
        <h3>
            Aside Title</h3>
        <p>
            Go to.
        </p>
        <ul>
            <li><a id="A1" runat="server" href="~/">Home</a></li>
            <li><a id="A2" runat="server" href="About.aspx">About</a></li>
            <li><a id="A3" runat="server" href="Contact.aspx">Contact</a></li>
        </ul>
    </aside>
</asp:Content>