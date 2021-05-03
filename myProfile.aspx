<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myProfile.aspx.cs" Inherits="myProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="padding-top:100px;min-height:750px;">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-sm-6 col-md-6">
                        <asp:Image ID="Image1" runat="server" Width="300px" />
                    </div>
                    <div class="col-sm-6 col-md-6">
                        <h4><asp:Label ID="first_name" runat="server" Text=""></asp:Label> <asp:Label ID="last_name" runat="server" Text=""></asp:Label></h4>
                        <small><cite title=""><asp:Label ID="address" runat="server" Text=""></asp:Label>
                        </cite></small>
                        <p>
                            <i class="glyphicon glyphicon-envelope"></i><asp:Label ID="email" runat="server" Text=""></asp:Label>
                            <br />
                            Gender : <asp:Label ID="gender" runat="server" Text=""></asp:Label></p>
                        <br />
                            Current Class : <asp:Label ID="course" runat="server" Text=""></asp:Label>
                        <br />
                            Mobile : <asp:Label ID="mobile" runat="server" Text=""></asp:Label></p>
                        <div class="btn-group">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/editProfilestudent.aspx">Edit Profile</asp:HyperLink>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/changepasswordstudent.aspx">Change Password</asp:HyperLink>
                        </div>
                        <!-- Split button -->
                        <%--<div class="btn-group">
                            <button type="button" class="btn btn-primary">
                                Social</button>
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                <span class="caret"></span><span class="sr-only">Social</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Twitter</a></li>
                                <li><a href="https://plus.google.com/+Jquery2dotnet/posts">Google +</a></li>
                                <li><a href="https://www.facebook.com/jquery2dotnet">Facebook</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Github</a></li>
                            </ul>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>

