<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tuitionrequest.aspx.cs" Inherits="tuitionrequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <div id="contact-sec">
        <div class="overlay">
            <div class="container set-pad">
                <div class="row text-center">
                    <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                        <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line">Apply For Home Tuition  </h1>
                        <p data-scroll-reveal="enter from the bottom after 0.3s">
                            We Provide Best Tuitions
                            <br />
                            Around Your Locality
                            <br />
                            We Will Be Happy to Communicate with You.<br />
                            <asp:Label ID="lblCaptchaMsg" ForeColor="Red"  runat="server" Text=""></asp:Label>
                            </p>
                    </div>

                </div>
                <!--/.HEADER LINE END-->
                <div class="row set-row-pad" data-scroll-reveal="enter from the bottom after 0.5s">


                    <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
                        <form>
                            <div class="form-group">
                                
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="fname">Enter Your Name :</label>
                                <asp:TextBox ID="fname" runat="server" class="form-control " required="required" placeholder="First Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Your First Name" ControlToValidate="fname"></asp:RequiredFieldValidator>
                            
                                <asp:TextBox ID="lname" runat="server" class="form-control " required="required" placeholder="Last Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Last Name" ControlToValidate="fname"></asp:RequiredFieldValidator>
                            </div>
                            <%--<div class="form-group">
                                <label class="control-label col-sm-3" for="email">Email :</label>
                                <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Enter Your Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ForeColor="Red"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Correct Email"  ControlToValidate="email"></asp:RequiredFieldValidator>
                            </div>--%>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="mobile">Mobile Number :</label>
                                <asp:TextBox ID="mobile" runat="server" class="form-control" placeholder="mobile" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red"  runat="server" ErrorMessage="Enter a Valid Mobile Number"  ControlToValidate="mobile"></asp:RequiredFieldValidator>
                            </div>



                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <div class="form-group">

                                <label class="control-label col-sm-3" for="courselist">Course List :</label>
                                <asp:UpdatePanel ID="updatepanel1" runat="server">  
                                    <ContentTemplate>  
                                        <asp:DropDownList ID="ddlcourse" AutoPostBack="true"  AppendDataBoundItems="true" runat="server"   class="btn btn-info btn-block "></asp:DropDownList>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Correct Course Details" ControlToValidate="ddlcourse"></asp:RequiredFieldValidator>
                                        <br />
                                    </ContentTemplate> 
                                   </asp:UpdatePanel>   
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="school">School :</label>
                                <asp:TextBox ID="school" runat="server" class="form-control " required="required" placeholder="Your School"></asp:TextBox>
                                <asp:RequiredFieldValidator  ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Your Correct School" ControlToValidate="school"></asp:RequiredFieldValidator>
                            </div>
                            
                            <div class="form-group">
                                <asp:Label ID="lblgender" runat="server" Text="Select Your Gender : &nbsp"></asp:Label>
                                <asp:RadioButton ID="RadioButton1" Text="Male" runat="server" GroupName="gender" Checked="true" class=""/>&nbsp&nbsp
                                <asp:RadioButton ID="RadioButton2" Text="Female" runat="server" GroupName="gender" />
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="address" runat="server" class="form-control " required="required" Style="min-height: 50px;" placeholder="Address"></asp:TextBox><br />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" runat="server" ErrorMessage="Enter Your Correct Address" ControlToValidate="address"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group">
                                <asp:Button ID="req_submit" class="btn btn-info btn-block btn-lg" runat="server" Text="Submit" OnClick="req_submit_Click" />
                             <%--<button type="submit" class="btn btn-info btn-block btn-lg">SUBMIT REQUEST</button>--%>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

