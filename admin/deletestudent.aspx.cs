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
public partial class admin_deletestudent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlCommand checkpdf = new SqlCommand("select user_id,first_name,last_name,email,studentclass,school,address,mobile,gender,created_on from [registration] where user_id =@s_id", con);
        checkpdf.Parameters.AddWithValue("@s_id", Request.QueryString["user_id"].ToString());
        SqlDataReader read = checkpdf.ExecuteReader();
        if (read.Read())
        {
            id.Text = read.GetValue(0).ToString();
            firstname.Text = read.GetValue(1).ToString();
            lastname.Text = read.GetValue(2).ToString();
            email.Text = read.GetValue(3).ToString();
            userclass.Text = read.GetValue(4).ToString();
            school.Text = read.GetValue(5).ToString();
            address.Text = read.GetValue(6).ToString();
            mobile.Text = read.GetValue(7).ToString();
            gender.Text = read.GetValue(8).ToString();
            date.Text = read.GetValue(9).ToString();
        }
    }
    protected void deletestudent_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        string qr = "delete from [registration] where user_id=@ph";
        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = qr;
        cmd.Parameters.AddWithValue("@ph", Request.QueryString["user_id"].ToString());
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("studentslist.aspx");
    }
}