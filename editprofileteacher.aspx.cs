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


public partial class editprofileteacher : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
   
    

   
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            
            if (Session["user_email"] == null)
            {
                Response.Redirect("loginteacher.aspx");
            }
            string qr = "select * from [registrationteacher] where user_id = '" + Session["user_id"] + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(qr, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            con.Close();
            Image1.ImageUrl = "photoHandler.ashx?user_id=" + Session["user_id"] + "&email=" + Session["user_email"];
            first_name.Text = ds.Tables[0].Rows[0]["first_name"].ToString();
            last_name.Text = ds.Tables[0].Rows[0]["last_name"].ToString();
            email.Text = ds.Tables[0].Rows[0]["email"].ToString();
            mobile.Text = ds.Tables[0].Rows[0]["mobile"].ToString().Trim();
            qualification.Text = ds.Tables[0].Rows[0]["qualification"].ToString().Trim();
            address.Text = ds.Tables[0].Rows[0]["address"].ToString();
            //gender.Text = ds.Tables[0].Rows[0]["gender"].ToString();


        }
    }
    protected void UpdateProfile_Click(object sender, EventArgs e)
    {
        byte[] myphoto = FileUpload1.FileBytes;
        string qr;
        if (myphoto == null || myphoto.Length == 0)
        {
            //qr = "update [registration] set first_name='" + first_name.Text.Trim() + "',last_name='" + last_name.Text.Trim() + "',mobile='" + mobile.Text.Trim() + "' where user_id='" + Session["user_id"] + "'";
            qr = "update [registrationteacher] set first_name='" + first_name.Text.Trim() + "',last_name='" + last_name.Text.Trim() + "',qualification='" + qualification.Text.Trim() + "',address='" + address.Text.Trim() + "',mobile='" + mobile.Text.Trim() + "' where user_id='" + Session["user_id"] + "'";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = qr;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("myprofileteacher.aspx");
        }
        else
        {
            //qr = "update [registration] set first_name='" + first_name.Text.Trim() + "',last_name='" + last_name.Text.Trim() + "',mobile='" + mobile.Text.Trim() + "',photo=@ph where user_id='" + Session["user_id"] + "'";
            //qr = "update [registration] set first_name='" + first_name.Text.Trim() + "',last_name='" + last_name.Text.Trim() + "',photo=@ph where user_id='" + Session["user_id"] + "'";
            qr = "update [registrationteacher] set first_name='" + first_name.Text.Trim() + "',last_name='" + last_name.Text.Trim() + "',qualification='" + qualification.Text.Trim() + "',address='" + address.Text.Trim() + "',mobile='" + mobile.Text.Trim() + "',photo=@ph where user_id='" + Session["user_id"] + "'";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = qr;
            cmd.Parameters.AddWithValue("@ph", myphoto);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("myprofileteacher.aspx");
        }


    }
}