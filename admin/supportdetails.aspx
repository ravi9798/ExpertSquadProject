<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="supportdetails.aspx.cs" Inherits="admin_supportdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Details About Tuition Request</h1>
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
                            <label class="control-label col-sm-3" for="pdfid">Support Id :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="supportid" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="name">Sender Name :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="name" runat="server" Text=""></asp:Label>
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
                            <label class="control-label col-sm-3" for="date">Date :</label>
                            <div class="col-md-9">
                                <asp:Label ID="date" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="createdby">Detailed Support Message :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="message" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        
                       

                    </div>
                </div>
                <!-- /.panel-body -->
            </div>
        </div>
    </div>
    <!-- /#page-wrapper -->
</asp:Content>

