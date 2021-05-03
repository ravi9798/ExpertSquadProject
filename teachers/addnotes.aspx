<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teacher.master" AutoEventWireup="true" CodeFile="addnotes.aspx.cs" Inherits="teachers_addnotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <!-- about page breadcrumns -->
    <section class="inner-banner">
    </section>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb breadcrumb-padding">
            <li class="breadcrumb-item"><a href="../home.aspx">ExpertSquad</a></li>
            <li class="breadcrumb-item"><a href="../teachers/teacherhome.aspx"><%=HttpContext.Current.Session["first_name"]%></a></li>
            <li class="breadcrumb-item"><a href="teachernotes.aspx">Your Notes</a></li>
            <li class="breadcrumb-item active" aria-current="page">Upload</li>
        </ol>
    </nav>
    <!-- //about page breadcrumns -->

    <!-- contact section -->
    <section class="w3l-contact3">
        <div class="contact1-bg section-gap">
            <div class="container">
                <div class="col-lg-8 offset-lg-2 col-md-12 col-sm-12 px-lg-3 px-0">
                    <h4 class="section-title">Upload Your Notes</h4>

                    <center>
                     <div class="flot-chart">
                            <asp:Label ID="lblMsgReg" runat="server" Text=""></asp:Label>
                            <div class="clearfix">&nbsp;</div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <div class="form-group">
                             <label class="control-label col-sm-3" for="classlist">Select Class :</label>
                              <div class="col-sm-9">
                                  <asp:UpdatePanel ID="classlistpanel" runat="server">
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlclass" AutoPostBack="true" AppendDataBoundItems="true" runat="server" OnSelectedIndexChanged="ddlclass_SelectedIndexChanged" class="form-control btn-primary"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="ddlclass" />
                                    </Triggers>
                                </asp:UpdatePanel>
                              </div>
                            </div>
                            <br />
                            <br />

                          <div class="form-group">
                                 <label class="control-label col-sm-3" for="subject">Select Subject :</label>
                              <div class="col-sm-9">
                                <asp:UpdatePanel ID="subpanel" runat="server">
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlsub" AutoPostBack="true" AppendDataBoundItems="true" runat="server" OnSelectedIndexChanged="ddlsub_SelectedIndexChanged" class="form-control btn-primary"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="ddlsub" />
                                    </Triggers>
                                </asp:UpdatePanel>
                              </div>
                            </div>
                            <br />
                            <br />

                          <div class="form-group">
                               <label class="control-label col-sm-3" for="type">Select Notes Type :</label>
                              <div class="col-sm-9">
                                 <asp:UpdatePanel ID="typepanel" runat="server">
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddltype" AutoPostBack="true" AppendDataBoundItems="true" runat="server" class="form-control btn-primary"></asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="ddltype" />
                                    </Triggers>
                                </asp:UpdatePanel>
                              </div>
                            </div>
                          
                            <br />
                            <br />
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="pdf"><asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>Only Pdf :<asp:Label ID="lblfarPdf" runat="server" Text=""></asp:Label></label>
                              <div class="col-sm-9">       
                                  <asp:Label ID="lblcourse" runat="server" Text=""></asp:Label>   
                                  <asp:FileUpload ID="FileUpload1" runat="server" />
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="File is Missing!!!" ControlToValidate="FileUpload1" ></asp:RequiredFieldValidator>
                              </div>
                            </div>
                           <br />
                            <br />
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="Label1">
                                  <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label>Chapter Name :</label>
                              <div class="col-sm-9">          
                                  <asp:TextBox ID="chapter" CssClass="form-control " placeholder="Enter Chapter Name" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Chapter is Required!!!" ForeColor="Red" ControlToValidate="chapter"></asp:RequiredFieldValidator>
                              </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">        
                              <div class="col-sm-offset-3 col-sm-9">
                               
                                 <asp:Button ID="addpdf" runat="server" Text="Add Notes" OnClick="addPdf_Click"  CssClass="form-control btn-primary"></asp:Button>

                                  
                              </div>
                            </div>
                        </div>
                    </div>

            
                                  </center>





                </div>
    </section>

</asp:Content>

