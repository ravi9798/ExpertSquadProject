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
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Security.Cryptography;

public partial class admin_addPdfNotes : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

    public void Bind_ddlclass()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select class_name,class_id from classlist", con);
        SqlDataReader dr = cmd.ExecuteReader();
        ddlclass.DataSource = dr;
        ddlclass.Items.Clear();
        ddlclass.Items.Add("------Please Select Class------");
        ddlclass.DataTextField = "class_name";
        ddlclass.DataValueField = "class_id";
        ddlclass.DataBind();
        con.Close();
        
    }
    public void Bind_ddlsub()
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("select sub_name,sub_id from subject where class_id='" + ddlclass.SelectedValue + "'", con);

        SqlDataReader dr = cmd.ExecuteReader();
        ddlsub.DataSource = dr;
        ddlsub.Items.Clear();
        ddlsub.Items.Add("------Please Select Subject------");
        ddlsub.DataTextField = "sub_name";
        ddlsub.DataValueField = "sub_id";
        ddlsub.DataBind();
        con.Close();
    }
    public void Bind_ddltype()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from type where sub_id ='" + ddlsub.SelectedValue + "'", con);

        SqlDataReader dr = cmd.ExecuteReader();
        ddltype.DataSource = dr;
        ddltype.Items.Clear();
        ddltype.Items.Add("------Please Select Notes Type------");
        ddltype.DataTextField = "type_name";
        ddltype.DataValueField = "type_id";
        ddltype.DataBind();
        con.Close();
    }
   
    protected void ddlclass_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind_ddlsub();
    }
    protected void ddlsub_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind_ddltype();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_ddlclass();
        }
    }
    
    protected void addPdf_Click(object sender, EventArgs e)
    {
        FileUpload uploadImg = FileUpload1;
        string photoname;
        Random rnd = new Random();
        int myRandomNo = rnd.Next(1000, 9999);
        string randonNewNumber = myRandomNo.ToString();
        string uploadsFolder = Request.PhysicalApplicationPath + "Uploads\\";
        if (uploadImg.HasFile)
        {
            //string uploadFileName = Path.Combine(Server.MapPath("~/Uploads"), uploadImg.FileName);
            /*if (File.Exists(uploadFileName))
            {
                File.Delete(uploadFileName);
            }*/
            string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
            photoname = randonNewNumber + extension;
            uploadImg.SaveAs(uploadsFolder + randonNewNumber + extension);
            lblcourse.Text = "File uploaded successfully as: " + randonNewNumber + extension;
        }
        else
        {
            photoname = "";
        }
        con.Open();
        string insertCmd = "insert into [pdfnotes](class_name,chapter_name,subject_name,type,filename,created_on,uploaded_by) values(@classname,@chaptername,@subjectname,@type,@filename,@created_on,@uploader)";
        SqlCommand insertUser = new SqlCommand(insertCmd, con);
        insertUser.Parameters.AddWithValue("@classname",   ddlclass.SelectedItem.ToString());   //ddl
        insertUser.Parameters.AddWithValue("@chaptername",chapter.Text );   //type----------------
        insertUser.Parameters.AddWithValue("@subjectname", ddlsub.SelectedItem.ToString());   //ddl
        insertUser.Parameters.AddWithValue("@type", ddltype.SelectedItem.ToString());    //ddl
        insertUser.Parameters.AddWithValue("@filename", photoname.ToString());
        insertUser.Parameters.AddWithValue("@created_on", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
        insertUser.Parameters.AddWithValue("@uploader", "ExpertSquad");
        insertUser.ExecuteNonQuery();
        con.Close();
        Response.Redirect("pdfnotes.aspx");
    }
}