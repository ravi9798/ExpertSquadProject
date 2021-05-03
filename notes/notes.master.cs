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

public partial class notes_notes : System.Web.UI.MasterPage
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

                string idd, emm;
                idd = Session["user_id"].ToString();
                emm = Session["user_email"].ToString();

                Image1.ImageUrl = "../photoHandler.ashx?user_id=" + idd + "&email=" + emm;
            }
            else
            {
                Response.Redirect("../home.aspx");
            }
        }
    }
}
