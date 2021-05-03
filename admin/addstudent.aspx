<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="addstudent.aspx.cs" Inherits="admin_addstudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Add Student Profile</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-9 col-lg-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Add Student Details
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="flot-chart">
                            <asp:Label ID="lblMsgReg" runat="server" Text=""></asp:Label>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="first_name">First Name :</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="first_name" runat="server" name="first_name" placeholder="First Name" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="first_name" ErrorMessage="Enter your first name" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="last_name">Last Name :</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="last_name" runat="server" name="last_name" placeholder="Last Name" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="last_name" ErrorMessage="Enter your last name" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="email_address">Email Address :</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="email_address" runat="server" name="email_address" placeholder="email_address" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter email address" ControlToValidate="email_address" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="ddlcourse">Class :</label>
                                <div class="col-sm-9">
                                    <asp:UpdatePanel ID="updatepanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlcourse" AutoPostBack="true" AppendDataBoundItems="true" runat="server" class="form-control"></asp:DropDownList>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="school">School/College :</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="school" runat="server" name="school" placeholder="School" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter School" ControlToValidate="school" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="password">Password :</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="password" runat="server" name="password" placeholder="password" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Password" ControlToValidate="password" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="mobile">Mobile :</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="mobile" runat="server" name="mobile" MaxLength="10" placeholder="Mobile" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter mobile number" ControlToValidate="mobile" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mobile" ErrorMessage="Number only" CssClass="text-danger" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="photo">Photo :<asp:Label ID="lblfarImg" runat="server" Text=""></asp:Label></label>
                                <div class="col-sm-9">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </div>
                            </div>
                            <%--<div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="photo">Date of Birth :<asp:Label ID="Label2" runat="server" Text=""></asp:Label></label>
                              <div class="col-sm-9">          
                                <asp:TextBox ID="dob" runat="server" class="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator runat="server" ForeColor = "Red" ControlToValidate="dob" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$" ErrorMessage="Invalid date format."/>
                              </div>
                            </div>--%>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="photo">Gender :<asp:Label ID="Label1" runat="server" Text=""></asp:Label></label>
                                <div class="col-sm-9">
                                    <asp:RadioButton ID="RadioButton1" Text="Male" runat="server" GroupName="gender" Checked="true" />
                                    <asp:RadioButton ID="RadioButton2" Text="Female" runat="server" GroupName="gender" />
                                </div>
                            </div>
                            <%-- <div class="clearfix">&nbsp;</div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="address">Country :</label>
                              <div class="col-sm-9">          
                                <asp:UpdatePanel ID="countrypanel" runat="server">  
                                    <ContentTemplate>  
                                        <asp:DropDownList ID="ddlcountry" AutoPostBack="true" AppendDataBoundItems="true" runat="server" onselectedindexchanged="ddlcountry_SelectedIndexChanged" class="form-control"></asp:DropDownList>  
                                    </ContentTemplate> 
                                    <Triggers>  
                                    <asp:AsyncPostBackTrigger ControlID="ddlcountry" /></Triggers>  
                                 </asp:UpdatePanel>
                              </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="address">State :</label>
                              <div class="col-sm-9">          
                                <asp:UpdatePanel ID="statepanel" runat="server">      
                                    <ContentTemplate>  
                                      <asp:DropDownList ID="ddlstate" AutoPostBack="true" AppendDataBoundItems="true"  runat="server" onselectedindexchanged="ddlstate_SelectedIndexChanged" class="form-control"></asp:DropDownList>  
                                    </ContentTemplate>  
                                    <Triggers><asp:AsyncPostBackTrigger ControlID ="ddlstate"/></Triggers>  
                                 </asp:UpdatePanel>
                              </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                              <label class="control-label col-sm-3" for="address">City :</label>
                              <div class="col-sm-9">          
                                <asp:UpdatePanel ID="citypanel" runat="server">       
                                   <ContentTemplate>        
                                     <asp:DropDownList ID="ddlcity" AutoPostBack="true" AppendDataBoundItems="true" runat="server" class="form-control"></asp:DropDownList>  
                                  </ContentTemplate>  
                                  <Triggers><asp:AsyncPostBackTrigger ControlID ="ddlcity"/></Triggers>    
                                 </asp:UpdatePanel>
                              </div>
                            </div>--%>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="address">Address :</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="address" TextMode="multiline" name="form-address" Columns="30" Rows="5" runat="server" class="form-control" Style="" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="address" ErrorMessage="Enter address" class="text-danger"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-9">
                                    <asp:Button ID="addstudent" runat="server" Text="Add Student" CssClass="btn btn-primary" OnClick="addstudent_Click" />
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

