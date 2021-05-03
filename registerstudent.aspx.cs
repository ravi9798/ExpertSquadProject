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

public partial class registerstudent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    public void Bind_ddlcourse()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select course_name,course_id from courselist", con);
        SqlDataReader dr = cmd.ExecuteReader();
        ddlcourse.DataSource = dr;
        ddlcourse.Items.Clear();
        ddlcourse.Items.Add("--Please Select course--");
        ddlcourse.DataTextField = "course_name";
        ddlcourse.DataValueField = "course_id";
        ddlcourse.DataBind();
        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["user_email"] != null)
                Response.Redirect("home.aspx");
        }
        if (!IsPostBack)
        {
            Bind_ddlcourse();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string rbdtext;
        if (RadioButton1.Checked)
        {
            rbdtext = RadioButton1.Text;
        }
        else
        {
            rbdtext = RadioButton2.Text;
        }
        // create bytes array for uploaded file into filebytes.
        byte[] myphoto = myPhotoUpload.FileBytes;
        //Checking session state
        if (con.State == ConnectionState.Closed)
            con.Open();
        // checking session with entered into textbox.
        if (captchaCode.Text.ToLower() == Session["sessionCaptcha"].ToString())
        {
            // Checking email is exist in db or not
            SqlCommand checkemail = new SqlCommand("select email from [registration] where email =@email", con);
            checkemail.Parameters.AddWithValue("@email", email.Text.Trim());
            SqlDataReader read = checkemail.ExecuteReader();
            if (read.HasRows)
            {
                lblCaptchaMsg.Text = "Email Address is already exist. You Can Login with your password or Please try with different/correct Email Address.";
                lblCaptchaMsg.ForeColor = System.Drawing.Color.Red;
                con.Close();
            }
            else
            {
                con.Close();
                if (con.State == ConnectionState.Closed)
                    con.Open();
                Random rnd = new Random();
                int myRandomNo = rnd.Next(10000000, 99999999);
                string activation_code = myRandomNo.ToString();
                string insertCmd = "insert into [registration](first_name,last_name,studentclass,school,address,email,password,mobile,photo,gender,activation_code,is_active,created_on) values(@first_name,@last_name,@class1,@school,@address,@email,@password,@phone,@photo,@gender,@activation_code,@is_active,@created_on)";
                SqlCommand insertUser = new SqlCommand(insertCmd, con);
                insertUser.Parameters.AddWithValue("@first_name", fname.Text);
                insertUser.Parameters.AddWithValue("@last_name", lname.Text);
                insertUser.Parameters.AddWithValue("@class1", ddlcourse.SelectedItem.ToString());
                insertUser.Parameters.AddWithValue("@school", school.Text);
                insertUser.Parameters.AddWithValue("@address", address.Text);
                insertUser.Parameters.AddWithValue("@phone", mobile.Text);
                insertUser.Parameters.AddWithValue("@email", email.Text);
                insertUser.Parameters.AddWithValue("@password", MyEncrypt(password.Text));
                insertUser.Parameters.AddWithValue("@photo", myphoto);
                insertUser.Parameters.AddWithValue("@gender", rbdtext);
                insertUser.Parameters.AddWithValue("@activation_code", activation_code);
                insertUser.Parameters.AddWithValue("@created_on", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                insertUser.Parameters.AddWithValue("@is_active", 0);

                try
                {
                    insertUser.ExecuteNonQuery();  //to be learn //predefined
                    con.Close();

                    MailMessage mail = new MailMessage();
                    mail.To.Add(email.Text.Trim());
                    mail.From = new MailAddress("email");
                    mail.Subject = "Thankyou for registering with us.";
                    string emailBody = "";
                    emailBody += "<div style='background:#FFFFFF; font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px; margin:0; padding:0;'>";
                    emailBody += "<table cellspacing='0' cellpadding='0' border='0' width='100%' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
                    emailBody += "<tbody>";
                    emailBody += "<tr>";
                    emailBody += "<td valign='top' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
                    emailBody += "<div style='width:600px;margin-left:auto;margin-right:auto;clear:both;'>";
                    emailBody += "<div style='float:left;width:600px;min-height:35px;font-size:26px;font-weight:bold;text-align:left'>";
                    emailBody += "<div style='clear:both;width:100%;text-align:center;'>&nbsp;&nbsp;&nbsp;Website</div>";
                    emailBody += "<div style='clear:both;width:100%;text-align:center;font-size:11px;font-style:italic;'>&nbsp;&nbsp;&nbsp;&nbsp;ExpertSquad</div>";
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
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;padding-top:15px;line-height:22px;margin:0px;font-weight:bold;padding-bottom:5px'>Hi " + fname.Text + ",</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Email: " + email.Text + "</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Mobile: " + mobile.Text + "</p>";
                    emailBody += "<p><a href='" + "http://expertsquad.nslcomp.org/ActivateAccountstudent.aspx?activation_code=" + activation_code + "&email=" + Base64Encode(email.Text.Trim()) + "'>Click here to activate your account.</a></p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Thanks for reaching us... We will contact you ASAP.</p>";
                    emailBody += "<p>&nbsp;</p><p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;margin:0px'>If you have any additional queries, please feel free to reach out us at http://expertsquad.nslcomp.org or drop us an email at <a href='mailto:expertsquad4you@gmail.com' style='text-decoration:none;font-style:normal;font-variant:normal;font-weight:normal;font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:normal;color:rgb(162,49,35)' target='_blank'>expertsquad4you@gmail.com</a>. We are here to help you.</p>";
                    emailBody += "<p>&nbsp;</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;margin:0px;font-weight:bold'>Best Regards,</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;color:rgb(41,41,41);line-height:22px;margin:0px'>WebsiteSupport@ExpertSquad</p>";
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
                    smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                    smtp.Credentials = new System.Net.NetworkCredential("email", "password");
                    smtp.Send(mail);

                    lblCaptchaMsg.Text = "You Register successfully. Please check your email inbox/spam folder for the activation link.";
                    lblCaptchaMsg.ForeColor = System.Drawing.Color.Red;

                    //Response.Redirect("SignUp.aspx");
                }
                catch (Exception er)
                {
                    lblCaptchaMsg.Text = "Something Gone Wrong. Your Can Wait Or Try Again.";
                    lblCaptchaMsg.ForeColor = System.Drawing.Color.Red;
                }
                finally
                {

                }
            }
        }
        else
        {
            lblCaptchaMsg.Text = "Please enter correct captcha!";
            lblCaptchaMsg.ForeColor = System.Drawing.Color.Red;
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