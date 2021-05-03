<%@ Page Title="" Language="C#" MasterPageFile="~/notes/notes.master" AutoEventWireup="true" CodeFile="noteshome.aspx.cs" Inherits="notes_noteshome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- banner section -->
    <section id="home" class="banner">
        <div id="banner-bg-effect" class="banner-effect"></div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 col-md-12 col-sm-12 order-lg-first mt-lg-0 mt-4">
                    <h1 class="mb-4 title">All Uploaded
                        <br />
                        Notes Will  Appear here.
                </h1>
                </div>
            </div>
        </div>
    </section>
    <!-- //banner section -->



    <!-- home page service grids -->
    <section id="services" class="bg-light">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-8 offset-lg-2 col-md-12 col-sm-12">
                    <h4 class="section-title">Meet Our Notes Collection For You</h4>
                    <p class="text-center">ExpertSquad Provides you a Huge Amount of Notes to You.</p>
                </div>
            </div>
            <div class="row mt-lg-5">
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <a href="class-8.aspx">
                        <div class="box-wrap">
                            <div class="icon">
                                <span class="fa fa-book"></span>
                            </div>
                            <h4>Class - 8</h4>
                            <hr />
                            <p>All MCQs, Notes, Important Questions, NCERT Solutions, Sample Questions,Sample Papers Related to Class - 8 are There.</p>

                            <hr />
                            <p>
                                Subjects Covered : <strong>Maths, Science
                                    <br />
                                    &nbsp</strong>
                            </p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <a href="class-9.aspx">
                        <div class="box-wrap">
                            <div class="icon">
                                <span class="fa fa-book"></span>
                            </div>
                            <h4>Class - 9</h4>
                            <hr />
                            <p>All MCQs, Notes, Important Questions, NCERT Solutions, Sample Questions,Sample Papers Related to Class - 9 are There.</p>
                            <hr />
                            <p>
                                Subjects Covered : <strong>Maths, Biology, Chemistry, Physics </strong>
                            </p>

                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <a href="class-10.aspx">
                        <div class="box-wrap">
                            <div class="icon">
                                <span class="fa fa-book"></span>
                            </div>
                            <h4>Class - 10</h4>
                            <hr />
                            <p>All MCQs, Notes, Important Questions, NCERT Solutions, Sample Questions,Sample Papers Related to Class - 10 are There.</p>
                            <hr />
                            <p>
                                Subjects Covered : <strong>Maths, Biology, Chemistry, Physics </strong>
                            </p>
                        </div>
                    </a>
                </div>



            </div>
        </div>
    </section>
    <!-- //home page service grids -->


</asp:Content>

