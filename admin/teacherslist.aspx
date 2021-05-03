<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="teacherslist.aspx.cs" Inherits="admin_teacherslist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Teachers List</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Teachers
                        <asp:HyperLink ID="addTeacher" runat="server" style="float:right;" NavigateUrl="~/admin/addteacher.aspx" CssClass="btn" >Add Teacher Manually</asp:HyperLink>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                            <div class="flot-chart-content" id="flot-line-chart">
                                <asp:GridView ID="GridView1" CssClass="table table-hover" GridLines="None"  runat="server" AutoGenerateColumns="False" >
                                    <Columns>
                                        <asp:BoundField DataField="user_id" HeaderText="user id" SortExpression="user_id" />
                                        <asp:BoundField DataField="is_active" HeaderText="Status" SortExpression="is_active" />
                                        <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                                       <%-- <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />--%>
                                       <%-- <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />--%>
                                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                                        <%--<asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />--%>
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                       <%-- <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                                        <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
                                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                        <asp:BoundField DataField="created_on" HeaderText="created_on" SortExpression="created_on" />--%>
                                        
                                        <asp:TemplateField HeaderText="Photo">
                                            <ItemTemplate>
                                                <asp:Image Width="50px" ID="Image1" ImageUrl='<%# String.Format("~/Admin/teacherHandler.ashx?user_id={0}",Eval("user_id")) %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Details">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("~/admin/teacherdetails.aspx?user_id={0}",Eval("user_id")) %>'>Details</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("~/admin/editteacherdetails.aspx?user_id={0}",Eval("user_id")) %>'>Edit</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" ForeColor="Red" runat="server" NavigateUrl='<%# String.Format("~/admin/deleteteacher.aspx?user_id={0}",Eval("user_id")) %>'>Delete Account</asp:HyperLink>
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
</asp:Content>

