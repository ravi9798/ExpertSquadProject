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

public partial class admin_supportdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlCommand checkpdf = new SqlCommand("select helpbox_id,user_name,user_email,user_message,user_date from [helpbox] where helpbox_id =@hb_id", con);
        checkpdf.Parameters.AddWithValue("@hb_id", Request.QueryString["support_id"].ToString());
        SqlDataReader read = checkpdf.ExecuteReader();
        if (read.Read())
        {
            supportid.Text = read.GetValue(0).ToString();
            name.Text = read.GetValue(1).ToString();
            email.Text = read.GetValue(2).ToString();
            message.Text = read.GetValue(3).ToString();
            date.Text = read.GetValue(4).ToString();
        }
    }
    
}