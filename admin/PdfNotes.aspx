<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="PdfNotes.aspx.cs" Inherits="admin_PdfNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">PDF Notes List</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        PDF Notes
                        <asp:HyperLink ID="addPDF" runat="server" style="float:right;" NavigateUrl="~/admin/addPdfNotes.aspx" CssClass="btn" >Add PDF File</asp:HyperLink>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                            <div class="flot-chart-content" id="flot-line-chart">

                                <asp:GridView ID="GridView1" CssClass="table table-hover" GridLines="None"  runat="server" AutoGenerateColumns="False" >
                                    <Columns>
                                        <asp:BoundField DataField="pdf_id" HeaderText="PDF Id" SortExpression="pdf_id" />
                                        <asp:BoundField DataField="class_name" HeaderText="Class" SortExpression="course_name" />
                                        <asp:BoundField DataField="subject_name" HeaderText="Subject" SortExpression="subject_name" />
                                        <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                                        <asp:BoundField DataField="uploaded_by" HeaderText="Uploader" SortExpression="uploader" />
                                        <asp:BoundField DataField="filename" HeaderText="Filename" SortExpression="filename" />
                                        <asp:BoundField DataField="chapter_name" HeaderText="Chapter" SortExpression="Chapter" />
                                        <asp:BoundField DataField="created_on" HeaderText="Uploaded Date" SortExpression="created_on" />
                                        <asp:TemplateField HeaderText="View">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("~/admin/viewPDFNotes.aspx?filename={0}",Eval("filename")) %>'>View PDF</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" ForeColor="Red" runat="server" NavigateUrl='<%# String.Format("~/admin/deletepdf.aspx?pdf_id={0}",Eval("pdf_id")) %>'>Delete PDF</asp:HyperLink>
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

