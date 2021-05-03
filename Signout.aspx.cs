using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_email"] == null)
        {
            Response.Redirect("signin.aspx");
        }
        else
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("home.aspx");
        }
    }
}