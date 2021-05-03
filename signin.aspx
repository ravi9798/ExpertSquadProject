<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <%--*****************************************************************************************************--%>
    <div class="home-sec1" id="home">
        <div class="overlay1">
            <br />
            <div class="container">
                <div class="row text-center ">
                    <div class="row1">
                        <div class="col-md-offset-4 col-md-4 col-md-offset-4">
                            <div class="container-fluid1">
                                <br />
                                <h3>ExpertSquad
                                    <br />
                                    <br />
                                    <hr />
                                </h3>
                                <div class="form-group">
                                    <div class="container-fluid"></div>

                                    <div class="form-group">
                                        <asp:Button ID="loginstudent" CssClass="form-control" runat="server" Text="Login as Student" OnClick="loginstudent_Click" />
                                    </div>
                                    <hr />
                                    <div class="form-group">
                                        <asp:Button ID="loginteacher" CssClass="form-control" runat="server" Text="Login as Teacher" OnClick="loginteacher_Click" />
                                    </div>
                                    <hr />
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="register.aspx"><span class="myclass">or you can register yourself here...</span></asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

