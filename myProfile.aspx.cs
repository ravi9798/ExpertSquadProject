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

public partial class myProfile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["user_email"] == null)
            {
                Response.Redirect("signin.aspx");
            }
            string qr = "select * from [registration] where user_id = '" + Session["user_id"] + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(qr, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            con.Close();
            Image1.ImageUrl = "photoHandler.ashx?user_id=" + Session["user_id"] + "&email=" + Session["user_email"];
            first_name.Text = ds.Tables[0].Rows[0]["first_name"].ToString();
            last_name.Text = ds.Tables[0].Rows[0]["last_name"].ToString();
            course.Text = ds.Tables[0].Rows[0]["studentclass"].ToString();
            email.Text = ds.Tables[0].Rows[0]["email"].ToString();
            mobile.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
            address.Text = ds.Tables[0].Rows[0]["address"].ToString();
            gender.Text = ds.Tables[0].Rows[0]["gender"].ToString();

        }
    }
}