<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="deletestudent.aspx.cs" Inherits="admin_deletestudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Details About Students</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-9 col-lg-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Student Details
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="form-group">





                            <label class="control-label col-sm-3" for="id">User Id :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="id" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="name">First Name :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="firstname" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="lastname">Last Name :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="lastname" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="email">Email id :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="email" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="userclass">Class :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="userclass" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="school">School :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="school" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="address">Address :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="address" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="mobile">Mobile :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="mobile" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="gender">Gender :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="gender" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="date">Created Date :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="date" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        
                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <asp:Button ID="deletestudent" runat="server" Text="Delete Student" CssClass="btn btn-primary" OnClick="deletestudent_Click"/>
                            </div>
                        </div>

                        <br />
                        <br />


                    </div>
                </div>
                <!-- /.panel-body -->
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <!-- /#page-wrapper -->
</asp:Content>

