<%@ WebHandler Language="C#" Class="photoHandler" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class photoHandler : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
      //  String usernamedb;
        string email = context.Request.QueryString["email"].ToString();
       // string user_id = context.Request.QueryString["user_id"].ToString();
       
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        conn.Open();
     
         SqlCommand checkemail = new SqlCommand("select email from [registration] where email =@email", conn);
         checkemail.Parameters.AddWithValue("@email", email);

         SqlDataReader read = checkemail.ExecuteReader();
         if (read.HasRows)
         {
                string user_id = context.Request.QueryString["user_id"].ToString();
                string qr = "select photo from [registration] where user_id=" + user_id;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand(qr, con);
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                con.Close();
                context.Response.ContentType = "application/Image";
                context.Response.AddHeader("Content-Disposition", "attachment; filename=" + context.Request.QueryString[0].ToString());
                byte[] myphoto = (byte[])ds.Tables[0].Rows[0]["photo"];
                context.Response.BinaryWrite(myphoto);
            }
            else
            {

                string user_id2 = context.Request.QueryString["user_id"].ToString();
                string qr = "select photo from [registrationteacher] where user_id=" + user_id2;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand(qr, con);
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                con.Close();
                context.Response.ContentType = "application/Image";
                context.Response.AddHeader("Content-Disposition", "attachment; filename=" + context.Request.QueryString[0].ToString());
                byte[] myphoto = (byte[])ds.Tables[0].Rows[0]["photo"];
                context.Response.BinaryWrite(myphoto);
            }
        
    }
       public bool IsReusable {
        get {
            return false;
        }
    }

}