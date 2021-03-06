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

public partial class admin_tuitiondetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlCommand checkpdf = new SqlCommand("select req_id,first_name,last_name,email,req_class,school,address,mobile,gender,req_date,userinfo from [tuitionreq] where req_id =@req_id", con);
        checkpdf.Parameters.AddWithValue("@req_id", Request.QueryString["request_id"].ToString());
        SqlDataReader read = checkpdf.ExecuteReader();
        if (read.Read())
        {
            reqid.Text = read.GetValue(0).ToString();
            firstname.Text = read.GetValue(1).ToString();
            lastname.Text = read.GetValue(2).ToString();
            email.Text = read.GetValue(3).ToString();
            userclass.Text = read.GetValue(4).ToString();
            school.Text = read.GetValue(5).ToString();
            address.Text = read.GetValue(6).ToString();
            mobile.Text = read.GetValue(7).ToString();
            gender.Text = read.GetValue(8).ToString();
            date.Text = read.GetValue(9).ToString();
            user.Text = read.GetValue(10).ToString();
        }
    }
}