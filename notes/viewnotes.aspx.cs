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
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Security.Cryptography;

public partial class notes_viewnotes : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user_email"] == null)
        {
            Response.Redirect("../home.aspx");
        }
        else
        {

            if (con.State == ConnectionState.Closed)
                con.Open();

            SqlCommand checkemail = new SqlCommand("select email from [registration] where email =@email", con);
            checkemail.Parameters.AddWithValue("@email", Session["user_email"]);
            SqlDataReader read = checkemail.ExecuteReader();
            if (read.HasRows)
            {
                string qfilename = Request.QueryString["filename"].ToString();
                string myfilePdf = "<object data=\"{0}\" type=\"application/pdf\" width=\"1024px\" height=\"600px\">";
                myfilePdf += "If you are unable to view file, you can download from <a href = \"{0}\">here</a>";
                myfilePdf += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
                myfilePdf += "</object>";
                string filename = qfilename;
                ltEmbed.Text = string.Format(myfilePdf, ResolveUrl("~/Uploads/" + filename));
            }
            else
            {
                Response.Redirect("../signin.aspx");
            }
        }
    }
}