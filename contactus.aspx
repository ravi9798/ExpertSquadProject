<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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

