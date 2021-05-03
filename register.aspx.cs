using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void registerstudent_Click(object sender, EventArgs e)
    {
        Response.Redirect("registerstudent.aspx");
    }
    protected void registerteacher_Click(object sender, EventArgs e)
    {
        Response.Redirect("registerteacher.aspx");
    }
}