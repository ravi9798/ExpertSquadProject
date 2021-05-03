<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepasswordstudent.aspx.cs" Inherits="changepasswordstudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
    <br />
    <%--*****************************************************************************************************--%>
    <div class="home-sec1" id="Div1">
        <div class="overlay1">
            <br />   <br />   <br />
            <div class="container">
                <div class="row text-center ">
                    <div class="row1">
                        <div class="col-md-offset-4 col-md-4 col-md-offset-4">
                            <div class="container-fluid1">
                              
                                <div class="form-group">
                                    <div class="container-fluid"></div>
                                    <h3>ExpertSquad</h3>
                                  
                                    <h4>For Student</h4>

                                    <div class="form-group">

                                        <div class="container-fluid"></div>

                                        <h3>Change password</h3>
                                        <br />
                                        <asp:Label ID="lblMsgReg" runat="server" Text=""></asp:Label>
                                        <div class="form-group">
                                            <asp:TextBox ID="oldpassword" runat="server" class="form-control" TextMode="Password" PlaceHolder="Enter Old Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="oldpassword" ErrorMessage="Enter Old Password" CssClass="requiredField"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="password" runat="server" class="form-control" TextMode="Password" PlaceHolder="Enter New Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" ErrorMessage="Password is required" CssClass="requiredField"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="confirm_password" runat="server" class="form-control" TextMode="Password" PlaceHolder=" Confirm New Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="confirm_password" ErrorMessage="Confirm Password is required" CssClass="requiredField"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirm_password" ErrorMessage="Password and confirm password should be same." CssClass="requiredField"></asp:CompareValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:Button ID="MySubmit" runat="server" CssClass="form-control" Text="Submit" OnClick="MySubmit_Click" />
                                        </div>
                                        <br />
                                    </div>
                                </div>
                            </div><br /><br /> <br /> <br /> <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

