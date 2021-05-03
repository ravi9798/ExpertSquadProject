<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="addPdfNotes.aspx.cs" Inherits="admin_addPdfNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Add Notes</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-9 col-lg-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                       Add Notes Details
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="flot-chart">
                            <asp:Label ID="lblMsgReg" runat="server" Text=""></asp:Label>
                            <div class="clearfix">&nbsp;</div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="classlist">Class :</label>
                              <div class="col-sm-9">          
                                <asp:UpdatePanel ID="classlistpanel" runat="server">  
                                    <ContentTemplate>  
                                        <asp:DropDownList ID="ddlclass" AutoPostBack="true" AppendDataBoundItems="true" runat="server" onselectedindexchanged="ddlclass_SelectedIndexChanged" class="form-control"></asp:DropDownList>  
                                    </ContentTemplate> 
                                    <Triggers>  
                                    <asp:AsyncPostBackTrigger ControlID="ddlclass" /></Triggers>  
                                 </asp:UpdatePanel>
                              </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="subject">Subject :</label>
                              <div class="col-sm-9">          
                                <asp:UpdatePanel ID="subpanel" runat="server">      
                                    <ContentTemplate>  
                                      <asp:DropDownList ID="ddlsub" AutoPostBack="true" AppendDataBoundItems="true"  runat="server" onselectedindexchanged="ddlsub_SelectedIndexChanged" class="form-control"></asp:DropDownList>  
                                    </ContentTemplate>  
                                    <Triggers><asp:AsyncPostBackTrigger ControlID ="ddlsub"/></Triggers>  
                                 </asp:UpdatePanel>
                              </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="type">Notes Type :</label>
                              <div class="col-sm-9">          
                                <asp:UpdatePanel ID="typepanel" runat="server">       
                                   <ContentTemplate>        
                                     <asp:DropDownList ID="ddltype" AutoPostBack="true" AppendDataBoundItems="true" runat="server" class="form-control"></asp:DropDownList>  
                                  </ContentTemplate>  
                                  <Triggers><asp:AsyncPostBackTrigger ControlID ="ddltype"/></Triggers>    
                                 </asp:UpdatePanel>
                              </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="Label1">
                                  <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label>Chapter Name :</label>
                              <div class="col-sm-9">          
                                  <asp:TextBox ID="chapter" CssClass="form-control" placeholder="Enter Chapter Name" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Chapter Name is Required!!!" ForeColor="Red" ControlToValidate="chapter"></asp:RequiredFieldValidator>
                              </div>
                            <br />
                            <br />
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="pdf"><asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>Pdf :<asp:Label ID="lblfarPdf" runat="server" Text=""></asp:Label></label>
                              <div class="col-sm-9">          
                                  <asp:Label ID="lblcourse" runat="server" Text=""></asp:Label>
                                  <asp:FileUpload ID="FileUpload1" runat="server" />
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="File is Missing!!!" ControlToValidate="FileUpload1" ></asp:RequiredFieldValidator>
                              </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">        
                              <div class="col-sm-offset-3 col-sm-9">
                                <asp:Button ID="addPdf" runat="server" Text="Add PDF" CssClass="btn btn-primary" OnClick="addPdf_Click"/>
                              </div>
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

