<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="support.aspx.cs" Inherits="admin_support" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Message HelpBox</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Support Messages!!!
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                            <div class="flot-chart-content" id="flot-line-chart">

                                <asp:GridView ID="GridView1" CssClass="table table-hover" GridLines="None"  runat="server" AutoGenerateColumns="False" >
                                    <Columns>
                                        <asp:BoundField DataField="helpbox_id" HeaderText="helpbox_id" SortExpression="helpbox_id" />
                                        <asp:BoundField DataField="user_name" HeaderText="Name" SortExpression="user_name" />
                                        <asp:BoundField DataField="user_email" HeaderText="Email" SortExpression="user_email" />
                                        <asp:BoundField DataField="user_date" HeaderText="Date" SortExpression="user_date" />
                                        <%--<asp:BoundField DataField="user_message" HeaderText="Message" SortExpression="user_message" />--%>
                                        <asp:TemplateField HeaderText="Details">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl='<%# String.Format("~/admin/supportdetails.aspx?support_id={0}",Eval("helpbox_id")) %>'>Details</asp:HyperLink>
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

