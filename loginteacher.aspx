<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="loginteacher.aspx.cs" Inherits="loginteacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br />
    <br />
    <%--*****************************************************************************************************--%>
    <div class="home-sec1" id="Div1">
        <div class="overlay1">
            <br />
            <div class="container">
                <div class="row text-center ">
                    <div class="row1">
                        <div class="col-md-offset-4 col-md-4 col-md-offset-4">
                            <div class="container-fluid1">
                                <br />
                                <div class="form-group">
                                    <div class="container-fluid"></div>
                                    <h3>ExpertSquad
                                        <br />
                                        Login</h3> <br />
                                    <h4>For Teachers</h4>
                                   
                                    <div class="form-group">

                                        <div class="container-fluid"></div>

                                        <asp:Label ID="lblMsgReg" runat="server" Text=""></asp:Label>
                                        <div class="form-group">
                                            <asp:TextBox ID="email" runat="server" class="form-control" placeholder="enter your email"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="password" runat="server" class="form-control" TextMode="password" placeholder="enter password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Correct Password" ControlToValidate="password"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:Button ID="Button1" runat="server" CssClass="form-control" Text="Submit" OnClick="Button1_Click" />
                                        </div>
                                        <div class="form-group">
                                        </div>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forgotPasswordteacher.aspx"><span class="myclass">Forgot Password?</span></asp:HyperLink>
                                        <br />
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

