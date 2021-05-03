<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--NAVBAR SECTION END-->
    <div class="home-sec" id="home">
        <div class="overlay">
            <div class="container">
                <div class="row text-center ">
                    <div class="col-lg-12  col-md-12 col-sm-12">
                        <div class="flexslider set-flexi" id="main-section">
                            <div class="header-line">
                                <%-- <h2 data-scroll-reveal="enter from the bottom after 0.5s" >Welcome to Expert Squad    </h2>--%>
                                <img src="assets/img/hat1.png" alt="Alternate Text" width="100px" />
                                <h1>Become An Expert In Your Studies With ExpertSquad</h1>

                            </div>
                            <ul class="slides move-me">
                                <!-- Slider 01 -->
                                <li>
                                    <h3>Best Teachers at Your FingerTip With</h3>
                                    <h1>ExpertSquad</h1>


                                    <!-- Slider 02 -->
                                    <li>
                                        <h3>Join our Squad</h3>
                                        <h1>It's Free of any Cost</h1>

                                    </li>
                                    <!-- End Slider 02 -->

                                    <!-- Slider 03 -->
                                    <li>
                                        <h3>Get the Local Teachers</h3>
                                        <h1>Near Your Home</h1>
                                    </li>

                                    <!-- End Slider 03 -->
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
    <!--HOME SECTION END-->
    <div class="tag-line">
        <div class="container">
            <div class="row  text-center">

                <div class="col-lg-12  col-md-12 col-sm-12">
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />

    <div class="col-md-8 col-md-offset-2">
        <div class="container-fluid">

            <h1>Welcome To The World Of Digital Education.</h1>

            <br />
            <br />
        </div>
    </div>


    <img src="assets/img/bookgallery.jpg" alt="ExpertSquad" width="100%" />
    <br />
    <br />
    <br />
    <br />

    <br />
    <div id="features-sec" class="container set-pad">
        <div class="row text-center">
            <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                <h1 data-scroll-reveal="enter from the bottom after 0.2s" class="header-line">Meet Our Solution For You</h1>
                <p data-scroll-reveal="enter from the bottom after 0.2s">
                    <strong> Educational Solutions</strong> and a <strong>problem-solving Techniques</strong> and a Requirements for the <strong>Consuting Service</strong> that leads to the 
                    <strong>product</strong> people actually want to use.
                    <br />We are BrownSquad Members and We Came with an idea of <strong>ExpertSquad</strong> that provides <strong>Smart Education</strong> to Make Students More <strong>Smarter</strong>. 
We have our Best in Class Faculties with Experience in their Fields. We have the Best Mentors, Teachers, councellors and guides. We Provide You the Study Materials with Some Extra Context. That will really gonna Help You.
                    ExpertSquad Provides you a lots of Educational Solutions.
                <h1 data-scroll-reveal="enter from the bottom after 0.0s" class="header-line"> </h1>
                </p>
               
            </div>

        </div>
        <!--/.HEADER LINE END-->


       <div class="row">
            <br />
            <br />
            <br />
            <center>
            <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.2s">
                <div class="about-div"> 
                   <%-- <i class="fa fa-paper-plane-o fa-4x icon-round-border"></i>--%>
                     <i class="fa fa-book fa-4x icon-round-border"></i>
                    <br />
                    <h3>Notes Services
                    </h3>
                    <hr />
                    <p>
                       Explore Our Notes Sections For You. With a Vast Range of Courses and a variety of notes Provides you the best in class knowledge with ExpertSquad.
                    </p>
                      <hr />
                    <a href="notes/noteshome.aspx" class="btn btn-info btn-set">Explore Our Notes Now</a>
                </div>
            </div>
            <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.2s">
                <div class="about-div">
                    <i class="fa fa-lightbulb-o fa-4x icon-round-border"></i>
                    <h3>Career Consulting</h3>
                    <hr />
                    <p>
                       With a Wide Range of Experts and Teachers in the ExpertSquad We can provide you the best Career Consulting For You With or Without Any Cost. 
                    </p><hr />
                    <a href="contactus.aspx" class="btn btn-info btn-set">Apply for Consulting Now</a>
                </div>
            </div>
            <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.2s">
                <div class="about-div">
                    <i class="fa fa-user fa-4x icon-round-border"></i>
                    <h3>Home Tuitions</h3>
                    <hr />
                    <p>
                        ExpertSquad Provides you a Solution for Finding Tuition Teachers Around Your Home Place. You Will Get informed About best Teachers around Your Place.
                       <br />

                    </p><hr />
                    <a href="tuitionrequest.aspx" class="btn btn-info btn-set">Apply For Home Tuitions Now</a>
                </div>
            </div>
                <br /><br />
            <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.2s">
                <div class="about-div">

                    <i class="fa fa-shield fa-4x icon-round-border"></i>
                    <h3>Examination Planning</h3>
                    <hr />
                    <p>
                      We Provide You the Best in Class Planning for Your Future Examinations So You can Prepare Best for Exams More Effeciently.
                       <br />

                    </p><hr />
                    <a href="contactus.aspx" class="btn btn-info btn-set">Get Help From us Now</a>
                </div>
            </div>
            <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.2s">
                <div class="about-div">
                    <i class="fa fa-dollar fa-4x icon-round-border"></i>
                    <h3>ExpertSquad for Free</h3>
                    <hr />
                    <p>
                      We Provide you the Access To the World of Knowledge without any Hidden Cost. ExpertSquad Absolutely Free.
                       <br />

                    </p>
                    <hr />

                    <a href="contactus.aspx" class="btn btn-info btn-set">Apply For Consulting Now</a>
                </div>
            </div>
                 <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.2s">
                <div class="about-div">
                    <i class="fa fa-bolt fa-4x icon-round-border"></i>
                    <h3>Projects Handling <br />&nbsp</h3>
                    <hr />
                    <p>
                      With Huge Amount of Experiences From our of Experienced Teachers and Mentors We Can also Help You In Your Academics Project.
                       <br />

                    </p>
                    <hr />

                    <a href="contactus.aspx" class="btn btn-info btn-set">Get Help for Projects Now</a>
                </div>
            </div>
                </center>


        </div>
    </div>

    <br />
    <br />
    <br />




    <!-- Faculty SECTION start-->
    <%-- <div id="faculty-sec">
                <div class="container set-pad">
                    <div class="row text-center">
                        <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                            <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line">OUR FACULTY </h1>
                            <p data-scroll-reveal="enter from the bottom after 0.3s">
                               test
                            </p>
                        </div>

                    </div>
                    <!--/.HEADER LINE END-->

                    <div class="row">


                        <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.4s">
                            <div class="faculty-div">
                                <img src="assets/img/faculty/1.jpg" class="img-rounded" />
                                <h3>ROXI CHI LUENA </h3>
                                <hr />
                                <h4>Desigining
                                    <br />
                                    test</h4>
                                <p>
                                   test
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.5s">
                            <div class="faculty-div">
                                <img src="assets/img/faculty/2.jpg" class="img-rounded" />
                                <h3>JANE DEO ALEX</h3>
                                <hr />
                                <h4>Enginering
                                    <br />
                                    Department</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                        Aenean commodo . 
                       
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.6s">
                            <div class="faculty-div">
                                <img src="assets/img/faculty/3.jpg" class="img-rounded" />
                                <h3>RUBY DECORSA</h3>
                                <hr />
                                <h4>Management
                                    <br />
                                    Department</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                        Aenean commodo . 
                       
                                </p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>--%>
    <!-- FACULTY SECTION END-->

    <div id="contact-sec">
        <div class="overlay">
            <div class="container set-pad">
                <div class="row text-center">
                    <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                        <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line">CONTACT US  </h1>
                        <p data-scroll-reveal="enter from the bottom after 0.3s">
                            For Any Help,
                            <br />
                            Any Suggestion,
                            <br />
                            or Any Complaints.
                            <br />
                            Write to Us.
                            <br />
                            We Will Be Happy to Communicate with You.
                        </p>
                    </div>

                </div>
                <!--/.HEADER LINE END-->
                <div class="row set-row-pad" data-scroll-reveal="enter from the bottom after 0.5s">


                    <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
                        <form>
                            <div class="form-group">
                                <asp:Label ID="lblCaptchaMsg" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="namebox" runat="server" class="form-control " required="required" placeholder="Your Name"></asp:TextBox>
                                <%--<input type="text" class="form-control "  required="required" placeholder="Your Name" />--%>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="emailbox" runat="server" class="form-control " required="required" placeholder="Your Email"></asp:TextBox>
                                <%--<input type="text" class="form-control " required="required"  placeholder="Your Email" />--%>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="messagebox" runat="server" class="form-control " required="required" Style="min-height: 150px;" placeholder="Message"></asp:TextBox>
                                <%-- <textarea name="message" required="required" class="form-control" style="min-height: 150px;" placeholder="Message"></textarea>--%>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="user_submit" class="btn btn-info btn-block btn-lg" runat="server" Text="Submit" OnClick="user_submit_Click" />
                                <%--<button type="submit" class="btn btn-info btn-block btn-lg">SUBMIT REQUEST</button>--%>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

