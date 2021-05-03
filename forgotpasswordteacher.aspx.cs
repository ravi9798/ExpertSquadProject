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
using System.Net;
using System.Net.Mail;

public partial class forgotpasswordteacher : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["user_email"] != null)
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
    protected void MySubmit_Click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
            con.Open();
        Random rnd = new Random();
        int myRandomNo = rnd.Next(10000000, 99999999);
        string forgot_otp = myRandomNo.ToString();
        SqlCommand checkemail = new SqlCommand("select email from [registrationteacher] where email =@email", con);
        checkemail.Parameters.AddWithValue("@email", email.Text.Trim());
        SqlDataReader read = checkemail.ExecuteReader();

        if (!read.HasRows)
        {
            lblMsgReg.Text = "This email address is not associate with us. kindly Register yourself with ExpertSquad";
            lblMsgReg.ForeColor = System.Drawing.Color.Red;
            con.Close();
        }
        else
        {
            try
            {
                con.Close();

                if (con.State == ConnectionState.Closed)
                    con.Open();
                string updateCmd = "update [registrationteacher] set activation_code='" + forgot_otp + "' where email= '" + email.Text.Trim() + "'";
                SqlCommand updateotp = new SqlCommand(updateCmd, con);
                updateotp.ExecuteNonQuery();
                con.Close();

                MailMessage mail = new MailMessage();
                mail.To.Add(email.Text.Trim());
                mail.From = new MailAddress("email");
                mail.Subject = "Reset password link from ExpertSquad";
                string emailBody = "";
                emailBody += "<div style='background:#FFFFFF; font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px; margin:0; padding:0;'>";
                emailBody += "<table cellspacing='0' cellpadding='0' border='0' width='100%' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
                emailBody += "<tbody>";
                emailBody += "<tr>";
                emailBody += "<td valign='top' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
                emailBody += "<div style='width:600px;margin-left:auto;margin-right:auto;clear:both;'>";
                emailBody += "<div style='float:left;width:600px;min-height:35px;font-size:26px;font-weight:bold;text-align:left'>";
                emailBody += "<div style='clear:both;width:100%;text-align:center;'>&nbsp;&nbsp;&nbsp;ExpertSquad</div>";
                emailBody += "<div style='clear:both;width:100%;text-align:center;font-size:11px;font-style:italic;'>&nbsp;&nbsp;&nbsp;&nbsp; expertsquad!</div>";
                emailBody += "</div>";
                emailBody += "</div>";
                emailBody += "</td>";
                emailBody += "</tr>";
                emailBody += "</tbody>";
                emailBody += "</table>";
                emailBody += "<table cellspacing='0' cellpadding='0' border='0' width='600' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;margin-left:auto;margin-right:auto;'>";
                emailBody += "<tbody>";
                emailBody += "<tr>";
                emailBody += "<td valign='top' colspan='2' style='width:600px;padding-left:20px;padding-right:20px;font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
                emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;padding-top:15px;line-height:22px;margin:0px;font-weight:bold;padding-bottom:5px'>Hi User,</p>";
                emailBody += "<p><a href = '" + "http://expertsquad.nslcomp.org/resetPasswordteacher.aspx?forgot_otp=" + forgot_otp + "&email=" + Base64Encode(email.Text.Trim()) + "'>Click here to reset password link.</a></p>";
                emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Thanks for reaching us.. We ll contact you ASAP.</p>";
                emailBody += "<p>&nbsp;</p><p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;margin:0px'>If you have any additional queries, please feel free to reach out us at http://ExpertSquad.nslcomp.org or drop us an email at <a href='mailto:expertsquad4you@gmail.com' style='text-decoration:none;font-style:normal;font-variant:normal;font-weight:normal;font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:normal;color:rgb(162,49,35)' target='_blank'>ExpertSquad4you@gmail.com</a>. We are here to help you.</p>";
                emailBody += "<p>&nbsp;</p>";
                emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;margin:0px;font-weight:bold'>Best Regards,</p>";
                emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;color:rgb(41,41,41);line-height:22px;margin:0px'>ExpertSquad Support Team</p>";
                emailBody += "</td>";
                emailBody += "</tr>";
                emailBody += "</tbody>";
                emailBody += "</table>";
                emailBody += "</div>";

                mail.Body = emailBody;
                mail.IsBodyHtml = true;


                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = true;
                smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Addressgf
                smtp.Credentials = new System.Net.NetworkCredential("email", "password"); //// original password or email daalna h
                smtp.Send(mail);

                lblMsgReg.Text = "Something Went Wrong.!!! Contact our Developer Team or You Can Mail us At expertsquad4you@gmail.com";
                lblMsgReg.ForeColor = System.Drawing.Color.Red;

                //Response.Redirect("forgotPassword.aspx");
            }
            catch (Exception er)
            {
                lblMsgReg.Text = "something going wrong.";
                lblMsgReg.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {

            }
        }
    }
    public static string Base64Encode(string plainText)
    {
        var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
        return System.Convert.ToBase64String(plainTextBytes);
    }
    public static string Base64Decode(string base64EncodedData)
    {
        var base64EncodedBytes = System.Convert.FromBase64String(base64EncodedData);
        return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);
    }
}