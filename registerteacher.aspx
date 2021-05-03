<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registerteacher.aspx.cs" Inherits="registerteacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        hr.new1 {
            border-top: 3px solid red;
        }

        hr.new2 {
            border-top: 2px solid black;
            width: 450px;
        }

        hr.new3 {
            border-top: 2px solid black;
            width: 340px;
        }

        h2.new1 {
            font-family: "Comic Sans MS", cursive, sans-serif;
            text-align: center;
        }

        h3.new1 {
            font-family: "Comic Sans MS", cursive, sans-serif;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
    <br />
    <br />
    <div class="container">
        <div class="row">

            <h2 class="new1">
                <img src="assets/img/register.png" alt="Register with ExpertSquad" width="200px" />Register With Us
                <br />
                As A Teacher</h2>
            <hr class="new2" />
            <h3 class="new1">Help Them To be an Expert with ExpertSquad.</h3>
            <hr class="new3" />
            <hr class="new1" />
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <asp:Label ID="lblCaptchaMsg" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group">
                    <h5 >Enter Your First Name :</h5>
                    <asp:TextBox ID="fname" runat="server" class="form-control" placeholder="Enter Your First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  Forecolor="Red" runat="server" ErrorMessage="First Name is Requrired!!!" ControlToValidate="fname"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <h5>Enter Your Last Name :</h5>
                    <asp:TextBox ID="lname" runat="server" class="form-control" placeholder="Enter Your Last Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Forecolor="Red"  runat="server" ErrorMessage="Last Name is Requrired!!!" ControlToValidate="lname"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <h5>Enter Your Email Id :</h5>
                    <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Enter Your Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Forecolor="Red"  runat="server" ErrorMessage="Email is Requrired!!!" ControlToValidate="email"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <h5 >Enter Your Qualification :</h5>
                    <asp:TextBox ID="qualification" runat="server" class="form-control" placeholder="Enter Your Qualification"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Forecolor="Red"  runat="server" ErrorMessage="Qualification is Requrired!!!" ControlToValidate="qualification"></asp:RequiredFieldValidator>
                </div>
                
                <div class="form-group">
                    <h5 >Enter Your Address :</h5>
                    <asp:TextBox ID="address" runat="server" class="form-control" placeholder="Enter Your Address"></asp:TextBox>
                     <asp:Label ID="Label2" ForeColor="Red" runat="server" Text="*not mondatory."></asp:Label>
                </div>

                <div class="form-group">
                     <h5 >Enter Your Password :</h5>
                    <asp:TextBox ID="password" runat="server" class="form-control" TextMode="password" placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Forecolor="Red"  runat="server" ErrorMessage="Password Required" ControlToValidate="password"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                     <h5 >Enter Your Confirm Password :</h5>
                    <asp:TextBox ID="cpassword" runat="server" class="form-control" TextMode="password" placeholder="Confirm Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and Confirm Password Must Be Same!!!" ControlToCompare="password" ControlToValidate="cpassword" ForeColor="Red"></asp:CompareValidator>
                </div>
                <div class="form-group">
                        <h5 >Enter Your Mobile Number :</h5>
                    <asp:TextBox ID="mobile" runat="server" class="form-control" placeholder="mobile" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Forecolor="Red"  ErrorMessage="Mobile Number is Requrired!!!" ControlToValidate="mobile"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  Forecolor="Red" runat="server" ControlToValidate="mobile" ErrorMessage="Number only" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                        <h5 >Upload Your Photo :</h5>
                    <asp:FileUpload ID="myPhotoUpload" runat="server" />
                     <asp:Label ID="Label1" ForeColor="Red" runat="server" Text="*not mondatory."></asp:Label>
                </div>
                <div class="form-group">
                        <h5 >Select Your Gender :</h5>
                    <asp:RadioButton ID="RadioButton1" Text="Male" runat="server" GroupName="gender" Checked="true" />
                    <asp:RadioButton ID="RadioButton2" Text="Female" runat="server" GroupName="gender" />
                </div>
                <div class="form-group">
                    <asp:Image ID="captchaImage" runat="server" Height="40px" Width="150px" ImageUrl="~/Captcha.aspx" />
                    <asp:TextBox runat="server" ID="captchaCode" class="form-control" PlaceHolder="Enter Captcha code"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="captchaCode" Forecolor="Red"  ErrorMessage="Captcha Code is required" CssClass="requiredField"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="Button1_Click" />
                </div>

            </div>

        </div>
        <hr class="new1" />

    </div>
    <img src="assets/img/connect.jpg" alt="join ExpertSquad" width="100%" />
    <h2 class="new1">Join us To Make It More PowerFull.</h2>
</asp:Content>

