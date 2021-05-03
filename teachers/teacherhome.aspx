<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teacher.master" AutoEventWireup="true" CodeFile="teacherhome.aspx.cs" Inherits="teachers_teacherhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!-- banner section -->
<section id="home" class="banner">
    <div id="banner-bg-effect" class="banner-effect"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-7 col-md-12 col-sm-12 order-lg-first mt-lg-0 mt-4">
                <h1 class="mb-4 title">Help Students On <strong>Doing </strong>their right thing, <br>at the <strong>right time.</strong>
                </h1>
                <p>
                     There are Lots of Students Seeking to be Tought by You. With Your Contineous Support and Techniques Provided, ExpertSquad Provide Them the Strongest Ladder to Reach them at the Top.
                     With ExpertSquad You are Helping the Students on <strong>Doing</strong> Their Right thing, at their <strong>right time</strong> .</p>
                <div class="mt-5">
                    <a class="btn btn-primary btn-style mr-2" href="../teachers/teachernotes.aspx">Notes Uploaded by You </a>
                    <a class="btn btn-outline btn-outline-style" href="../teachers/addnotes.aspx">Add Notes </a>
                </div>
            </div>
            <div class="col-lg-5 col-md-12 col-sm-12 order-first text-lg-left text-center">
                <div>
                    <img src="assets/images/banner-round.png" alt="" class="rounded-circle img-fluid">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //banner section -->
    <!-- home page about -->
<section class="w3l-about">
    <div class="container">
        <div class="row about-content">
            <div class="col-lg-6 info mb-lg-0 mb-sm-5 mb-4 align-center">
                <h3 class="title">About Us</h3>
                <h6>Educational Solutions and a problem-solving Techniques and a Requirements for the Consuting Service that leads to the 
                    product people actually want to use.</h6>
                <p class="mt-md-4 mt-3 mb-0">We the BrownSquad Members and With <strong>Your Help and Contribution</strong>, We Came with an idea of <strong>ExpertSquad</strong> that provides Smart Education to Students that make them More Smarter. 
               With The Help of you and our Best in Class Faculties with Experience in their Fields. Like You and Other Mentors, Teachers, councellors and guides. We Provide THem the Study Materials with Some Extra Contexts. That will really gonna Help Them.</p>
            </div>
            <div class="col-lg-6">
                <img src="assets/images/about.png" class="img-fluid img-shadow" alt="about">
            </div>
        </div>
    </div>
</section>
<!-- //home page about -->
</asp:Content>

