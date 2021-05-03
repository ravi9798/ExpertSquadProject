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

public partial class admin_editteacherdetails : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string rbval;
            string user_id = Request.QueryString["user_id"].ToString();
            string qr = "select * from [registrationteacher] where user_id=" + user_id;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(qr, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            con.Close();
            email_address.Text = ds.Tables[0].Rows[0]["user_id"].ToString();
            first_name.Text = ds.Tables[0].Rows[0]["first_name"].ToString();
            last_name.Text = ds.Tables[0].Rows[0]["last_name"].ToString();
            email_address.Text = ds.Tables[0].Rows[0]["email"].ToString();
            rbval = ds.Tables[0].Rows[0]["is_active"].ToString();
            mobile.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
            qualification.Text = ds.Tables[0].Rows[0]["qualification"].ToString();
            address.Text = ds.Tables[0].Rows[0]["address"].ToString();
            date.Text = ds.Tables[0].Rows[0]["created_on"].ToString();


            lblfarImg.Text = "<img width='50' height='50' src='teacherHandler.ashx?user_id=" + user_id + "' alt='' />";


            if (rbval == "1")
            {
                active.Checked = true;
            }
            else
            {
                notactive.Checked = true;
            }
        }
    }
    protected void UpdateUser_Click(object sender, EventArgs e)
    {
        string rbdtext;
        if (active.Checked)
        {
            rbdtext = "1";
        }
        else
        {
            rbdtext = "0";
        }
        byte[] myphoto = FileUpload1.FileBytes;
        if (myphoto == null || myphoto.Length == 0)
        {
            string user_id = Request.QueryString["user_id"].ToString();
            string qr = "update [registrationteacher] set first_name='" + first_name.Text.Trim() + "',last_name='" + last_name.Text.Trim() + "',is_active='" + rbdtext + "',qualification='" + qualification.Text.Trim() + "',mobile='" + mobile.Text.Trim() + "',address='" + address.Text.Trim() + "' where user_id=" + user_id;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = qr;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("teacherslist.aspx");
        }
        else
        {
            string user_id = Request.QueryString["user_id"].ToString();
            string qr = "update [registrationteacher] set first_name='" + first_name.Text.Trim() + "',last_name='" + last_name.Text.Trim() + "',qualification='" + qualification.Text.Trim() + "',mobile='" + mobile.Text.Trim() + "',address='" + address.Text.Trim() + "',photo=@ph where user_id=" + user_id;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = qr;
            cmd.Parameters.AddWithValue("@ph", myphoto);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("teacherslist.aspx");
        }
    }
}