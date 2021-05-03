<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="studentslist.aspx.cs" Inherits="admin_studentslist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Students List</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Registered Student
                        <asp:HyperLink ID="addfarmer" runat="server" style="float:right;" NavigateUrl="~/admin/addstudent.aspx" CssClass="btn" >Add Student Manually</asp:HyperLink>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                            <div class="flot-chart-content" id="flot-line-chart">

                                <asp:GridView ID="GridView1" CssClass="table table-hover" GridLines="None"  runat="server" AutoGenerateColumns="False" >
                                    <Columns>
                                         <asp:BoundField DataField="user_id" HeaderText="user id" SortExpression="user_id" />
                                        <asp:BoundField DataField="is_active" HeaderText="Status" SortExpression="is_active" />
                                        <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="studentclass" HeaderText="Class" SortExpression="studentclass" />
                                        <asp:TemplateField HeaderText="Photo">
                                            <ItemTemplate>
                                                <asp:Image Width="50px" ID="Image1" ImageUrl='<%# String.Format("~/Admin/studenthandler.ashx?user_id={0}",Eval("user_id")) %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                        <asp:TemplateField HeaderText="Details">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# String.Format("~/admin/studentdetails.aspx?s_id={0}",Eval("user_id")) %>'>Details</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("~/admin/editstudentdetails.aspx?user_id={0}",Eval("user_id")) %>'>Edit</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" ForeColor="Red" runat="server" NavigateUrl='<%# String.Format("~/admin/deletestudent.aspx?user_id={0}",Eval("user_id")) %>'>Delete Account</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
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
    <%--<script src="assetsadmin/js/jquery.min.js"></script>
    <script src="assetsadmin/js/bootstrap.min.js"></script>
    <script src="assetsadmin/js/jquery.dataTables.min.js"></script>--%>
    <%--<script type="text/javascript">
        $(document).ready(function () {
            $('#ContentPlaceHolder1_GridView1').DataTable({
                "paging": true,
                "ordering": false,
                "info": false
            });
        });
    </script>--%>
</asp:Content>

