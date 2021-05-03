using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class admin_update_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin_email_address"] == null)
            {
                Response.Redirect("admin.aspx");
            }
            string qr = "select * from [admin]";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(qr, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            con.Close();
            first_name.Text = ds.Tables[0].Rows[0]["first_name"].ToString();
            last_name.Text = ds.Tables[0].Rows[0]["last_name"].ToString();
            email_address.Text = ds.Tables[0].Rows[0]["email_address"].ToString();
            mobile.Text = ds.Tables[0].Rows[0]["mobile"].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            string qr = "update [admin] set first_name='" + first_name.Text.Trim() + "',last_name='" + last_name.Text.Trim() + "',mobile='" + mobile.Text.Trim() + "'";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = qr;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("dashboard.aspx");
    }
}