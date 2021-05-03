<%@ Page Title="" Language="C#" MasterPageFile="~/students/students.master" AutoEventWireup="true" CodeFile="studenthome.aspx.cs" Inherits="students_studenthome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- banner section -->
<section id="home" class="banner">
    <div id="banner-bg-effect" class="banner-effect"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-7 col-md-12 col-sm-12 order-lg-first mt-lg-0 mt-4">
                <h1 class="mb-4 title"><strong>Doing </strong>the right thing, <br>at the <strong>right time.</strong>
                </h1>
                <p>There is no Way to Get Out Once You are in.
                     So Take a Deep Breath and Learn With Us. Syllabus is Yours But Techniques is Ours, We Provide You Strongest Ladder to Reach at the Top.
                     With ExpertSquad You are <strong>Doing</strong> Your Right thing, at the <strong>right time</strong> .</p>
                <div class="mt-5">
                    <a class="btn btn-primary btn-style mr-2" href="../notes/noteshome.aspx">Notes Section </a>
                    <a class="btn btn-outline btn-outline-style" href="../features.aspx">Our Services </a>

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
                <p class="mt-md-4 mt-3 mb-0">We are BrownSquad Members and We Came with an idea of <strong>ExpertSquad</strong> that provides Smart Education to Make Students More Smarter. 
We have our Best in Class Faculties with Experience in their Fields. We have the Best Mentors, Teachers, councellors and guides. We Provide You the Study Materials with Some Extra Context. That will really gonna Help You.</p>
            </div>
            <div class="col-lg-6">
                <img src="assets/images/about.png" class="img-fluid img-shadow" alt="about">
            </div>
        </div>
    </div>
</section>
<!-- //home page about -->

<!-- home page service grids -->
<section id="services" class="bg-light">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-8 offset-lg-2 col-md-12 col-sm-12">
        <h4 class="section-title">Meet Our Solution For You</h4>
        <p class="text-center">ExpertSquad Provides you a lots of Educational Solutions.</p>
      </div>
    </div>
    <div class="row mt-lg-5">
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="box-wrap">
          <div class="icon">
            <span class="fa fa-book"></span>
          </div>    
          <h4><a href="../notes/noteshome.aspx">Notes Services</a></h4>
          <p>Explore Our Notes Sections For You. With a Vast Range of Courses and a variety of notes Provides you the best in class knowledge with ExpertSquad.</p>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="box-wrap">
          <div class="icon">
            <span class="fa fa-shield"></span>
          </div>
          <h4><a href="../tuitionrequest.aspx">Home Tuitions</a></h4>
          <p>ExpertSquad Provides you a Solution for Finding Tuition Teachers Around Your Home Place. You Will Get informed About best Teachers.</p>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="box-wrap">
          <div class="icon">
            <span class="fa fa-dollar"></span>
          </div>
          <h4><a href="../home.aspx">ExpertSquad for Free</a></h4>
          <p>We Provide you the Access To the World of Knowledge without any Hidden Cost. ExpertSquad Absolutely Free.</p>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="box-wrap">
          <div class="icon">
            <span class="fa fa-industry"></span>
          </div>
          <h4><a href="../contactus.aspx">Examination Planning</a></h4>
          <p>We Provide You the Best in Class Planning for Your Future Examinations So You can Prepare Best for Exams More Effeciently.</p>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="box-wrap">
          <div class="icon">
            <span class="fa fa-lightbulb-o"></span>
          </div>
          <h4><a href="../contactus.aspx">Career Consulting</a></h4>
          <p>With a Wide Range of Experts and Teachers in the ExpertSquad We can provide you the best Career Consulting For You. </p>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="box-wrap">
          <div class="icon">
            <span class="fa fa-picture-o"></span>
          </div>
          <h4><a href="#url">Projects Handling</a></h4>
          <p>With Huge Amount of Experiences From our of Experienced Teachers and Mentors We Can also Help You In Your Academics Project.</p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- //home page service grids -->

<%--<!-- testimonials section -->
<section id="slider" class="testimonials">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-sm-12">
                <h4 class="section-title">What they said about us</h4>
                <p class="text-center">There are many variations of passages of Lorem Ipsum available, but the majority
                    have
                    suffered alteration in some form, by injected humour</p>
            </div>
        </div>
        <div class="large-12 columns mt-5">
            <div class="owl-carousel owl-theme">
                <div class="item">
                    <div class="w3l-customers-7">
                        <div class="customers_sur">
                            <div class="customers-left_sur">
                                <div class="customers_grid">
                                    <div class="custo-img-res">
                                        <img src="assets/images/testi1.jpg" alt=" " class="">
                                    </div>
                                    <div class="ratings my-4 my-4">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                    <p>Lorem ipsum dolor, sit amet consect adipis icing elit. Ab commodi iure minus
                                        placeat quia, animi. Eveniet, iure et. ipsum dolor sed ut init et.</p>
                                    <div class="customers-bottom_sur">
                                        <div class="custo_grid">
                                            <h5>Tanguy De</h5>
                                            <span>Designation</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="w3l-customers-7">
                        <div class="customers_sur">
                            <div class="customers-left_sur">
                                <div class="customers_grid">
                                    <div class="custo-img-res">
                                        <img src="assets/images/testi2.jpg" alt=" " class="img-fluid">
                                    </div>
                                    <div class="ratings my-4">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                    <p>Lorem ipsum dolor, sit amet consect adipis icing elit. Ab commodi iure minus
                                        placeat quia, animi. Eveniet, iure et. ipsum dolor sed ut init et.</p>
                                    <div class="customers-bottom_sur">
                                        <div class="custo_grid">
                                            <h5>Christopher</h5>
                                            <span>Designation</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="w3l-customers-7">
                        <div class="customers_sur">
                            <div class="customers-left_sur">
                                <div class="customers_grid">
                                    <div class="custo-img-res">
                                        <img src="assets/images//testi3.jpg" alt=" " class="img-fluid">
                                    </div>
                                    <div class="ratings my-4">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                    <p>Lorem ipsum dolor, sit amet consect adipis icing elit. Ab commodi iure minus
                                        placeat quia, animi. Eveniet, iure et. ipsum dolor sed ut init et.</p>
                                    <div class="customers-bottom_sur">
                                        <div class="custo_grid">
                                            <h5>Edward</h5>
                                            <span>Designation</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="w3l-customers-7">
                        <div class="customers_sur">
                            <div class="customers-left_sur">
                                <div class="customers_grid">
                                    <div class="custo-img-res">
                                        <img src="assets/images//testi4.jpg" alt=" " class="img-fluid">
                                    </div>
                                    <div class="ratings my-4">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                    <p>Lorem ipsum dolor, sit amet consect adipis icing elit. Ab commodi iure minus
                                        placeat quia, animi. Eveniet, iure et. ipsum dolor sed ut init et.</p>
                                    <div class="customers-bottom_sur">
                                        <div class="custo_grid">
                                            <h5>Abigail</h5>
                                            <span>Designation</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="w3l-customers-7">
                        <div class="customers_sur">
                            <div class="customers-left_sur">
                                <div class="customers_grid">
                                    <div class="custo-img-res">
                                        <img src="assets/images//testi5.jpg" alt=" " class="img-fluid">
                                    </div>
                                    <div class="ratings my-4">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                    <p>Lorem ipsum dolor, sit amet consect adipis icing elit. Ab commodi iure minus
                                        placeat quia, animi. Eveniet, iure et. ipsum dolor sed ut init et.</p>
                                    <div class="customers-bottom_sur">
                                        <div class="custo_grid">
                                            <h5>Abigail</h5>
                                            <span>Designation</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--//testimonials section -->--%>

    
<!-- stats section -->
<section id="stats" class="stats">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 margin-md-60">
                <h2 class="left-title">Some of Our Website's Facts.</h2>
                <p class="white">We are BrownSquad Members and We Came with an idea of <strong>ExpertSquad</strong> that provides Smart Education to Make Students More Smarter.</p>
            </div>
            <div class="col-lg-7 mt-lg-0 mt-5">
                <div class="d-sm-flex justify-content-lg-around justify-content-between counter-main">
                    <div class="counter">
                        <div class="icon">
                            <span class="fa fa-folder-open-o"></span>
                        </div>
                        <p class="value">385</p>
                        <p class="title white">Uploaded Notes</p>
                    </div>
                    <div class="counter">
                        <div class="icon">
                            <span class="fa fa-users"></span>
                        </div>
                        <p class="value">260</p>
                        <p class="title white">Registered Students</p>
                    </div>
                    <div class="counter">
                        <div class="icon">
                            <span class="fa fa-users"></span>
                        </div>
                        <p class="value">10</p>
                        <p class="title white">Registered Teachers</p>
                    </div>
                   <%-- <div class="counter">
                        <div class="icon">
                            <span class="fa fa-trophy"></span>
                        </div>
                        <p class="value">150</p>
                        <p class="title white">Awards</p>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //stats section -->
    

</asp:Content>

