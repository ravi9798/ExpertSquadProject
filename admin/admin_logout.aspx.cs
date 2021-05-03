using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_email_address"] == null)
        {
            Response.Redirect("admin.aspx");
        }
        else
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("admin.aspx");
        }
    }
}