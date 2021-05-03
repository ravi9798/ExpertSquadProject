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

public partial class admin_deletepdf : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {
         string filename1 = Request.QueryString["pdf_id"].ToString();
         if (con.State == ConnectionState.Closed)
             con.Open();
         SqlCommand checkpdf = new SqlCommand("select pdf_id,class_name,subject_name,chapter_name,type,filename,created_on,uploaded_by from [pdfnotes] where pdf_id =@pdf_id", con);
         checkpdf.Parameters.AddWithValue("@pdf_id", Request.QueryString["pdf_id"].ToString());
         SqlDataReader read = checkpdf.ExecuteReader();
         if (read.Read())
         {
             pdfid.Text = read.GetValue(0).ToString();
             classname.Text = read.GetValue(1).ToString();
             subject.Text = read.GetValue(2).ToString();
             chapter.Text = read.GetValue(3).ToString();
             type.Text = read.GetValue(4).ToString();
             filename.Text = read.GetValue(5).ToString();
             createdon.Text = read.GetValue(6).ToString();
             uploader.Text = read.GetValue(7).ToString();
         }
    }
    protected void deletepdf_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        string qr = "delete from [pdfnotes] where pdf_id=@ph";
        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = qr;
        cmd.Parameters.AddWithValue("@ph", Request.QueryString["pdf_id"].ToString());
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("pdfnotes.aspx");
    }
}