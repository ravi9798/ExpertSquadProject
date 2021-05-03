<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgotpasswordteacher.aspx.cs" Inherits="forgotpasswordteacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                                        Login</h3>
                                    <br />
                                    <h4>For Teacher</h4>

                                    <div class="form-group">

                                        <div class="container-fluid"></div>

                                                <h3>Forgot Password</h3>
                                                <br />
                                                <asp:Label ID="lblMsgReg" runat="server" Text=""></asp:Label>
                                                <div class="form-group">
                                                    <asp:TextBox ID="email" runat="server" class="form-control" placeholder="enter Email address"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your email address" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Button ID="MySubmit" runat="server" CssClass="form-control btn-primary" Text="Submit" OnClick="MySubmit_Click" />
                                                </div>
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

