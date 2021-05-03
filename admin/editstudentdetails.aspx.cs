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

public partial class admin_editstudentdetails : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    public void Bind_ddlcourse()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select course_name,course_id from courselist", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        ddlcourse.DataSource = dr;
        ddlcourse.Items.Clear();
        ddlcourse.Items.Add("--Please Select course--");
        ddlcourse.DataTextField = "course_name";
        ddlcourse.DataValueField = "course_id";
        ddlcourse.DataBind();
        conn.Close();
    }
    public void Bind_ddlcourse2()
    {

        conn.Open();
        SqlCommand cmd = new SqlCommand("select studentclass from registration where user_id='" + Request.QueryString["user_id"].ToString() + "'", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        ddlcourse.DataSource = dr;
        ddlcourse.Items.Clear();
        //ddlcourse.Items.Add("--------Please Select Course--------");
        ddlcourse.DataTextField = "studentclass";
        ddlcourse.DataBind();
        conn.Close();
    }
    protected void changecourse_Click(object sender, EventArgs e)
    {
        Bind_ddlcourse();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_ddlcourse2();


           



            string rbval;
            string user_id = Request.QueryString["user_id"].ToString();
            string qr = "select * from [registration] where user_id=" + user_id;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(qr, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            con.Close();
            first_name.Text = ds.Tables[0].Rows[0]["first_name"].ToString();
            last_name.Text = ds.Tables[0].Rows[0]["last_name"].ToString();
            email_address.Text = ds.Tables[0].Rows[0]["email"].ToString();
            rbval = ds.Tables[0].Rows[0]["is_active"].ToString();
            ddlcourse.DataTextField = ds.Tables[0].Rows[0]["studentclass"].ToString();
            mobile.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
            school.Text = ds.Tables[0].Rows[0]["school"].ToString();
            address.Text = ds.Tables[0].Rows[0]["address"].ToString();

            lblfarImg.Text = "<img width='50' height='50' src='studenthandler.ashx?user_id=" + user_id + "' alt='' />";


            if (rbval == "1")
            {
                active.Checked = true ;
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
            rbdtext ="0";
        }
        byte[] myphoto = FileUpload1.FileBytes;
        if (myphoto == null || myphoto.Length == 0)
        {
            string user_id = Request.QueryString["user_id"].ToString();
            string qr = "update [registration] set first_name='" + first_name.Text.Trim() + "',last_name='" + last_name.Text.Trim() + "',studentclass='" + ddlcourse.SelectedItem.ToString() + "',is_active='" + rbdtext + "',school='" + school.Text.Trim() + "',mobile='" + mobile.Text.Trim() + "',address='" + address.Text.Trim() + "' where user_id=" + user_id;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = qr;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("studentslist.aspx");
        }
        else
        {
            string user_id = Request.QueryString["user_id"].ToString();
            string qr = "update [registration] set first_name='" + first_name.Text.Trim() + "',last_name='" + last_name.Text.Trim() + "',studentclass='" + ddlcourse.SelectedItem.ToString() + "',school='" + school.Text.Trim() + "',mobile='" + mobile.Text.Trim() + "',address='" + address.Text.Trim() + "',photo=@ph where user_id=" + user_id;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = qr;
            cmd.Parameters.AddWithValue("@ph", myphoto);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("studentslist.aspx");
        }
    }
}