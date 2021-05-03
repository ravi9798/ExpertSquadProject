<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teacher.master" AutoEventWireup="true" CodeFile="viewpdfteacher.aspx.cs" Inherits="teachers_viewpdfteacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- banner section -->
    <section id="home" class="banner">
        <div id="banner-bg-effect" class="banner-effect"></div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 col-md-12 col-sm-12 order-lg-first mt-lg-0 mt-4">
                    <h1 class="mb-4 title">View Your
                        <br />
                        Uploaded Notes Here.
                </h1>

                    <%--<div class="mt-5">
                    <a class="btn btn-primary btn-style mr-2" href="../teachers/teachernotes.aspx">Notes Uploaded by You </a>
                    <a class="btn btn-outline btn-outline-style" href="../teachers/addnotes.aspx">Add Notes </a>
                </div>--%>
                </div>
                <%--<div class="col-lg-5 col-md-12 col-sm-12 order-first text-lg-left text-center">
                    <div>
                        <img src="assets/images/about1.png" alt="" class="rounded-circle img-fluid">
                    </div>
                </div>--%>
            </div>
        </div>
    </section>
    <!-- //banner section -->
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

