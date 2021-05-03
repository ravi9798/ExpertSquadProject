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
using System.Security.Cryptography;

public partial class resetpasswordstudent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string activation_code = !string.IsNullOrEmpty(Request.QueryString["forgot_otp"]) ? Request.QueryString["forgot_otp"] : Guid.Empty.ToString();
        string encryped_email = !string.IsNullOrEmpty(Request.QueryString["email"]) ? Request.QueryString["email"] : Guid.Empty.ToString();
        string email_url = Base64Decode(encryped_email.ToString());

        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlCommand checkemail = new SqlCommand("select email from [registration] where email =@email and activation_code=@activation_code", con);
        checkemail.Parameters.AddWithValue("@email", email_url);
        checkemail.Parameters.AddWithValue("@activation_code", activation_code);
        SqlDataReader read = checkemail.ExecuteReader();
        if (!read.HasRows)
        {
            lblMsgReg.Text = "Reset Link is expired";
            lblMsgReg.ForeColor = System.Drawing.Color.Red;
            con.Close();
        }
        else
        {
            con.Close();
        }
    }
    protected void MySubmit_Click(object sender, EventArgs e)
    {
        string activation_code = !string.IsNullOrEmpty(Request.QueryString["forgot_otp"]) ? Request.QueryString["forgot_otp"] : Guid.Empty.ToString();
        string encryped_email = !string.IsNullOrEmpty(Request.QueryString["email"]) ? Request.QueryString["email"] : Guid.Empty.ToString();
        string email_url = Base64Decode(encryped_email);

        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlCommand checkemail = new SqlCommand("select email from [registration] where email =@email and activation_code=@activation_code and is_active=@is_active", con);
        checkemail.Parameters.AddWithValue("@email", email_url);
        checkemail.Parameters.AddWithValue("@activation_code", activation_code);
        checkemail.Parameters.AddWithValue("@is_active", 1);
        SqlDataReader read = checkemail.ExecuteReader();
        if (read.HasRows)
        {
            con.Close();
            if (password.Text == confirm_password.Text)
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                string updatePwd = "update [registration] set password=@password,activation_code='' where email= '" + email_url + "'";
                SqlCommand updateCMD = new SqlCommand(updatePwd, con);
                updateCMD.Parameters.AddWithValue("@password", MyEncrypt(password.Text));
                try
                {
                    updateCMD.ExecuteNonQuery();
                    con.Close();

                    MailMessage mail = new MailMessage();
                    mail.To.Add(email_url);
                    mail.From = new MailAddress("email");
                    mail.Subject = "You are reset your password successfully.";
                    string emailBody = "";
                    emailBody += "<div style='background:#FFFFFF; font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px; margin:0; padding:0;'>";
                    emailBody += "<table cellspacing='0' cellpadding='0' border='0' width='100%' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
                    emailBody += "<tbody>";
                    emailBody += "<tr>";
                    emailBody += "<td valign='top' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
                    emailBody += "<div style='width:600px;margin-left:auto;margin-right:auto;clear:both;'>";
                    emailBody += "<div style='float:left;width:600px;min-height:35px;font-size:26px;font-weight:bold;text-align:left'>";
                    emailBody += "<div style='clear:both;width:100%;text-align:center;'>&nbsp;&nbsp;&nbsp;Expert Squad</div>";
                    emailBody += "<div style='clear:both;width:100%;text-align:center;font-size:11px;font-style:italic;'>&nbsp;&nbsp;&nbsp;&nbsp;website World!</div>";
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
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;padding-top:15px;line-height:22px;margin:0px;font-weight:bold;padding-bottom:5px'>Hi,</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Your password is reset successfully.</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Your new password is " + password.Text + "</p>";
                    emailBody += "<p>&nbsp;</p><p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;margin:0px'>If you have any additional queries, please feel free to reach out us at +919798179617 or drop us an email at <a href='mailto:expertsquad4you@gmail.com' style='text-decoration:none;font-style:normal;font-variant:normal;font-weight:normal;font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:normal;color:rgb(162,49,35)' target='_blank'>expertsquad4you@gmail.com</a>. We are here to help you.</p>";
                    emailBody += "<p>&nbsp;</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;margin:0px;font-weight:bold'>Best Regards,</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;color:rgb(41,41,41);line-height:22px;margin:0px'>Expert Squad Support</p>";
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

                    lblMsgReg.Text = "Password Reset successfully. Now you can signin to your account with new password.";
                    lblMsgReg.ForeColor = System.Drawing.Color.Red;
                }
                catch (Exception er)
                {
                    lblMsgReg.Text = "something going wrong. But Your Password May have been changed.";
                    lblMsgReg.ForeColor = System.Drawing.Color.Red;
                }
                finally
                {

                }
            }
            else
            {
                lblMsgReg.Text = "Password and confirm password is not same.";
                lblMsgReg.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            lblMsgReg.Text = "Reset Link is expired";
            lblMsgReg.ForeColor = System.Drawing.Color.Red;
            con.Close();
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
    private string MyEncrypt(string returnText)
    {
        string EncryptionKey = "E5C2B81A3B2B2";
        byte[] clearBytes = Encoding.Unicode.GetBytes(returnText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                returnText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return returnText;
    }

    private string MyDecrypt(string returnText)
    {
        string EncryptionKey = "E5C2B81A3B2B2";
        byte[] cipherBytes = Convert.FromBase64String(returnText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                returnText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return returnText;
    }

}