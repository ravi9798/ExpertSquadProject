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

public partial class tuitionrequest : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    public void Bind_ddlcourse()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("select course_name,course_id from courselist", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        ddlcourse.DataSource = dr;
        ddlcourse.Items.Clear();
        ddlcourse.Items.Add("--------Please Select Course--------");
        ddlcourse.DataTextField = "course_name";
        ddlcourse.DataValueField = "course_id";
        ddlcourse.DataBind();
        conn.Close();
    }


    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Bind_ddlcourse();
        }
        //string email = Session["user_email"].ToString();
        if (Session["user_email"] == null)
        {
            Response.Redirect("signin.aspx");
        }

    }
    protected void req_submit_Click(object sender, EventArgs e)
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
        if (con.State == ConnectionState.Closed)
            con.Open();

        string email = Session["user_email"].ToString();
        if (ddlcourse.SelectedValue != "--------Please Select Course--------")
            {
                con.Close();
                if (con.State == ConnectionState.Closed)
                    con.Open();
                string insertCmd = "insert into [tuitionreq](first_name,last_name,email,req_class,school,address,mobile,gender,req_date,userinfo) values(@first_name,@last_name,@email,@course,@school,@address,@mobile,@gender,@date,@userinfo)";
                SqlCommand insertUser = new SqlCommand(insertCmd, con);
                insertUser.Parameters.AddWithValue("@first_name", fname.Text);
                insertUser.Parameters.AddWithValue("@last_name", lname.Text);
                insertUser.Parameters.AddWithValue("@email", email);
                insertUser.Parameters.AddWithValue("@course", ddlcourse.SelectedItem.ToString());
                insertUser.Parameters.AddWithValue("@school", school.Text);
                insertUser.Parameters.AddWithValue("@address", address.Text);
                insertUser.Parameters.AddWithValue("@mobile", mobile.Text);
                insertUser.Parameters.AddWithValue("@gender", rbdtext);
                insertUser.Parameters.AddWithValue("@date", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                insertUser.Parameters.AddWithValue("@userinfo", Session["user_email"].ToString());

                try
                {
                    insertUser.ExecuteNonQuery();  //to be learn //predefined
                    con.Close();

                    MailMessage mail = new MailMessage();
                    mail.To.Add(email.Trim());
                    mail.From = new MailAddress("expertsquad4you@gmail.com");
                    mail.Subject = "Thankyou for Applying for a Tuition with us.";
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
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;padding-top:15px;line-height:22px;margin:0px;font-weight:bold;padding-bottom:5px'>Hi " + fname.Text + "&nbsp" + lname.Text + ",</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Email: " + email + "</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Mobile: " + mobile.Text + "</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Thanks for reaching us... We will contact you ASAP.</p>";
                    emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Your Request has been submitted. We will inform You Soon.</p>";
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

                    lblCaptchaMsg.Text = "You Request for Home Tuition is Registered successfully. We Will Contact you soon.";
                    lblCaptchaMsg.ForeColor = System.Drawing.Color.Red;
                    //Response.Redirect("SignUp.aspx");
                }
                catch (Exception er)
                {
                    lblCaptchaMsg.Text = "Something went wrong. You can wait for our respond or you can request again...!!!";
                    lblCaptchaMsg.ForeColor = System.Drawing.Color.Red;
                }
                finally
                {

                }
            }
            else {
                lblCaptchaMsg.Text = "Please Select a Course!!!";
            }
        }
    }
    //else
    //{
    //    lblCaptchaMsg.Text = "Please enter correct captcha!";
    //    lblCaptchaMsg.ForeColor = System.Drawing.Color.Red;
    //}

