<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="assetsadmin/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="assetsadmin/css/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="assetsadmin/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="assetsadmin/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="login-panel panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Please Sign In</h3>
                            </div>
                            <div class="panel-body">
                                <asp:Label ID="lblMsg" runat="server" Text="" CssClass="lbl"/>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your email address." CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="TextBox1" runat="server" name="form-email-address" placeholder="Email Address" class="form-control" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your password." CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="TextBox2" runat="server" name="form-password" placeholder="Password..." class="form-control" textmode="Password"></asp:TextBox>
                                </div>
                                <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-success btn-block" Text="SignIn" OnClick="Button1_Click"  />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- jQuery -->
    <script src="assetsadmin/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="assetsadmin/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="assetsadmin/js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="assetsadmin/js/sb-admin-2.js"></script>
</body>
</html>
