<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="admin_change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Change Password</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Change password
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12"><asp:Label ID="lblMsg" runat="server" Text="" CssClass="lbl"/></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>Old Password</label>
                                        <asp:TextBox ID="TextBox1" runat="server" name="form-password" placeholder="Enter your old password" class="form-control" textmode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your old password." CssClass="text-danger"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>New Password</label>
                                        <asp:TextBox ID="TextBox2" runat="server" name="form-password" placeholder="Enter your new password" class="form-control" textmode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a new password." CssClass="text-danger"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>Old Password</label>
                                        <asp:TextBox ID="TextBox3" runat="server" name="form-password" placeholder="Enter your repeat password" class="form-control" textmode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter your repeat password." CssClass="text-danger"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-success btn-block" Text="Change Password" OnClick="Button1_Click"  />
                                    </div>
                                </div>
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

</asp:Content>

