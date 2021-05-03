<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editprofileteacher.aspx.cs" Inherits="editprofileteacher" %>

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
                                        <h4>For Teacher</h4>
                                        <div class="form-group">
                                            <asp:Label ID="lblCaptchaMsg" runat="server" Text=""></asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="first_name" runat="server" class="form-control" placeholder="Enter Your First Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your First Name" ControlToValidate="first_name"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="last_name" runat="server" class="form-control" placeholder="Enter Your Last Name"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Last Name" ControlToValidate="last_name"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="email" runat="server" class="form-control" placeholder=""></asp:Label>
                                        </div>
                                       <div class="form-group">
                                            <asp:TextBox ID="mobile" runat="server" class="form-control" placeholder="Mobile" MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Your Mobile Number" ControlToValidate="mobile"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="qualification" runat="server" class="form-control" placeholder="Qualification" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Your Qualification" ControlToValidate="qualification"></asp:RequiredFieldValidator>
                                        </div>
                                       
                                        <div class="form-group">
                                            <asp:TextBox ID="address" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Your address" ControlToValidate="address"></asp:RequiredFieldValidator>
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

