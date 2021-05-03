<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="editstudentdetails.aspx.cs" Inherits="admin_editstudentdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Update User Profile</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-9 col-lg-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        User Details
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
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="ddlcourse">Class :</label>
                                <div class="col-sm-9">
                                    <asp:UpdatePanel ID="updatepanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="ddlcourse" AutoPostBack="true" AppendDataBoundItems="true" runat="server" class="form-control"></asp:DropDownList><br />
                                            <asp:Button ID="changecourse" runat="server" CssClass="btn btn-primary" Text="Change Course" OnClick="changecourse_Click" /><br /><br />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-3" for="last_name">School/College :</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="school" runat="server" name="school" placeholder="school" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="school" ErrorMessage="Enter your current school" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="email_address">Email Address :</label>
                                <div class="col-sm-9">
                                    <asp:Label ID="email_address" runat="server" Text=""></asp:Label>
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
                                <label class="control-label col-sm-3" for="photo">
                                    Photo :
                                </label>
                                <div class="col-sm-9">
                                    <asp:Label ID="lblfarImg" runat="server" Text=""></asp:Label><br />
                                    <br />

                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="address">Address :</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="address" TextMode="multiline" name="form-address" Columns="30" Rows="5" runat="server" class="form-control" Style="" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="address" ErrorMessage="Enter address" class="text-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                         
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="is_active">Account Status :</label>
                                <div class="col-sm-9">
                                    <asp:RadioButton ID="active" Text="Active" runat="server" GroupName="is_active" />&nbsp&nbsp&nbsp&nbsp&nbsp
                                    <asp:RadioButton ID="notactive" Text="Not Active" runat="server" GroupName="is_active" />
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-9">
                                    <asp:Button ID="UpdateUser" runat="server" Text="Update Student Details" CssClass="btn btn-primary" OnClick="UpdateUser_Click" />
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

