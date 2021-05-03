<%@ Page Title="" Language="C#" MasterPageFile="~/notes/notes.master" AutoEventWireup="true" CodeFile="viewnotes.aspx.cs" Inherits="notes_viewnotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!-- about page breadcrumns -->
<section class="inner-banner">
</section>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-padding">
        <li class="breadcrumb-item"><a href="../home.aspx">ExpertSquad</a></li>
        <li class="breadcrumb-item"><a href="../students/studenthome.aspx"><%=HttpContext.Current.Session["first_name"]%></a></li>
        <li class="breadcrumb-item"><a href="noteshome.aspx">Notes</a></li>
        <li class="breadcrumb-item active" aria-current="page">View Notes</li>
    </ol>
</nav>
<!-- //about page breadcrumns -->


    <!-- contact section -->
    <section class="w3l-contact3">
        <div class="contact1-bg section-gap">
            <div class="container">
                <div class="col-lg-8 offset-lg-2 col-md-12 col-sm-12 px-lg-3 px-0">
                    <h4 class="section-title">View Pdf</h4>
                </div >

                
                <div class="row">
                <div class="col-lg-10">
                <asp:Literal ID="ltEmbed" runat="server" />
            </div>


   </div>





            </div>
        </div>
    </section>
</asp:Content>

