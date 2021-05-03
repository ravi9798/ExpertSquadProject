<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script language="Javascript">
        //$(function() {
        //    Morris.Donut({
        //        element: 'morris-donut-chart',
        //        data: [{
        //            label: "Student",
        //            value: 12
        //        }, {
        //            label: "Lectures",
        //            value: 30
        //        }],
        //        resize: true
        //    });
        //});
    </script>
    <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-user fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">
                                        <asp:Label ID="lblTotalCount" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div>Total Students</div>
                                </div>
                            </div>
                        </div>
                        <a href="studentslist.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">View Detailed List of Students!!!</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-user fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">
                                        <asp:Label ID="lblTotalLecCount" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div>Total Teachers</div>
                                </div>
                            </div>
                        </div>
                        <a href="teacherslist.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">View Detailed List of Teachers!!!</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-book fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">
                                        <asp:Label ID="lblTotalftlsrCount" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div>Total PDF Notes</div>
                                </div>
                            </div>
                        </div>
                        <a href="pdfnotes.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">View Detailed List</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">
                                        <asp:Label ID="lblTotalreqCount" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div>New Tuition Requests!</div>
                                </div>
                            </div>
                        </div>
                        <a href="tuitionrequest.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">View Lists</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-support fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">
                                        <asp:Label ID="lblTotalMsgCount" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div>Support Messages!</div>
                                </div>
                            </div>
                        </div>
                        <a href="support.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">
                                        <asp:Label ID="lblcourselist" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div>Courses Offered!</div>
                                </div>
                            </div>
                        </div>
                        <a href="courselist.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
            </div>
            
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

</asp:Content>

