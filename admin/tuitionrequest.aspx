<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="tuitionrequest.aspx.cs" Inherits="admin_tuitionrequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Tuitions Requests List</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        All Requests!!!
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                            <div class="flot-chart-content" id="flot-line-chart">

                                <asp:GridView ID="GridView1" CssClass="table table-hover" GridLines="None"  runat="server" AutoGenerateColumns="False" >
                                    <Columns>
                                        <asp:BoundField DataField="req_id" HeaderText="req_id" SortExpression="req_id" />
                                        <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="helpbox_id" />
                                        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                                        <asp:BoundField DataField="req_class" HeaderText="Class" SortExpression="req_class" />
                                        <asp:BoundField DataField="school" HeaderText="School" SortExpression="school" />
                                        <asp:BoundField DataField="req_date" HeaderText="Date" SortExpression="req_date" />
                                        <asp:TemplateField HeaderText="Details">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl='<%# String.Format("~/admin/tuitiondetails.aspx?request_id={0}",Eval("req_id")) %>'>Details</asp:HyperLink>
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
   
</asp:Content>

