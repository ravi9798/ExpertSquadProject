<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="update_profile.aspx.cs" Inherits="admin_update_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Update Admin Profile</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-9 col-lg-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Admin Details
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="first_name">First Name :</label>
                              <div class="col-sm-9">
                                <asp:TextBox ID="first_name" runat="server" name="first_name" placeholder="First Name" class="form-control"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="first_name" ErrorMessage="Enter your first name" CssClass="text-danger"></asp:RequiredFieldValidator>
                              </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="last_name">Last Name :</label>
                              <div class="col-sm-9">          
                                <asp:TextBox ID="last_name" runat="server" name="last_name" placeholder="Last Name" class="form-control"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="last_name" ErrorMessage="Enter your last name" CssClass="text-danger"></asp:RequiredFieldValidator>
                              </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="email_address">Email Address :</label>
                              <div class="col-sm-9">          
                                <asp:TextBox ID="email_address" runat="server" name="email_address" placeholder="email_address" class="form-control"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter email address" ControlToValidate="email_address" CssClass="text-danger"></asp:RequiredFieldValidator>
                              </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="mobile">Mobile :</label>
                              <div class="col-sm-9">          
                                <asp:TextBox ID="mobile" runat="server" name="mobile" MaxLength="10" placeholder="Mobile" class="form-control"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter mobile number" ControlToValidate="mobile" CssClass="text-danger"></asp:RequiredFieldValidator>
                              </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">        
                              <div class="col-sm-offset-3 col-sm-9">
                                <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="Button1_Click" />
                              </div>
                            </div>

                        </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
        </div>
            <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->
</asp:Content>

