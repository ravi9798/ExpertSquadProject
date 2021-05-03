<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="deletepdf.aspx.cs" Inherits="admin_deletepdf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Delete PDF</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-9 col-lg-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Pdf Details
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="pdfid">PDF Id :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="pdfid" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="filename">File Name :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="filename" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="classname">Class Name :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="classname" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="subject">Subject Name :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="subject" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        
                         <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="chapter">Chapter Name :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="chapter" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="type">Type Name :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="type" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        


                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="uploader">Uploaded By :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="uploader" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <label class="control-label col-sm-3" for="createdon">Created On :</label>
                            <div class="col-sm-9">
                                <asp:Label ID="createdon" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="clearfix">&nbsp;</div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <asp:Button ID="deletepdf" runat="server" Text="Delete PDF" CssClass="btn btn-primary" OnClick="deletepdf_Click"/>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /.panel-body -->
            </div>
        </div>
    </div>
    <!-- /#page-wrapper -->
</asp:Content>

