<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editprofilestudent.aspx.cs" Inherits="editprofilestudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
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



                                    <div class="form-group">

                                        <div class="container-fluid"></div>

                                        <h3>Update Profile</h3>
                                        <h4>For Student</h4>
                                        <div class="form-group">
                                            <asp:Label ID="lblCaptchaMsg" runat="server" Text=""></asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="first_name" runat="server" class="form-control" placeholder="enter your first name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your First Name" ControlToValidate="first_name"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="last_name" runat="server" class="form-control" placeholder="enter your last name"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="email" runat="server" class="form-control" placeholder=""></asp:Label>
                                        </div>
                                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                                        <div class="form-group">
                                            <asp:UpdatePanel ID="updatepanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="ddlcourse" AutoPostBack="true" AppendDataBoundItems="true" runat="server" class="form-control"></asp:DropDownList>
                                                    <asp:Button ID="changecourse" runat="server" CssClass="btn btn-primary" Text="Change Course" OnClick="changecourse_Click" />
                                                    <br />
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="address" runat="server" class="form-control"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <asp:TextBox ID="mobile" runat="server" class="form-control" placeholder="mobile" MaxLength="10"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:Image ID="Image1" runat="server" Height="50px" Width="50px" /><br />
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </div>

                                        <div class="form-group">
                                            <asp:Button ID="UpdateProfile" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="UpdateProfile_Click" />
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
    </div>

</asp:Content>

