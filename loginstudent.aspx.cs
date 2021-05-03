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

public partial class loginstudent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["user_email"] != null)
                Response.Redirect("home.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String user_id, email_address_db, password_db, first_name_db, last_name_db;
        //if (con.State == ConnectionState.Closed)
        con.Open();
        String cmd = "select email,password,first_name,user_id,last_name from [registration] where email='" + email.Text.ToString() + "' and password='" + MyEncrypt(password.Text.ToString()) + "'";
        SqlCommand login = new SqlCommand(cmd, con);
        SqlDataReader read = login.ExecuteReader();
        if (read.Read())
        {
            email_address_db = read.GetValue(0).ToString();
            password_db = read.GetValue(1).ToString();
            first_name_db = read.GetValue(2).ToString();
            user_id = read.GetValue(3).ToString();
            last_name_db = read.GetValue(4).ToString();

            con.Close();
            //if (con.State == ConnectionState.Closed)
            con.Open();
            String checkCmd = "select user_id from [registration] where is_active=1";
            SqlCommand login2 = new SqlCommand(checkCmd, con);
            SqlDataReader read2 = login2.ExecuteReader();
            if (read2.Read())
            {
                con.Close();
                Session["type"] = "student";
                Session["user_email"] = email_address_db.ToString();
                Session["first_name"] = first_name_db.ToString();
                Session["last_name"] = last_name_db.ToString();
                Session["user_id"] = user_id.ToString();
                Response.Redirect("students/studenthome.aspx");

            }
            else
            {
                con.Close();
                lblMsgReg.Text = "Your account is inactive. Please activate your account. Please check your email inbox/spam folder for activation link. or You can contact Our Developer Team.";
                lblMsgReg.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            con.Close();
            lblMsgReg.Text = "Invalid credentials. Please try with correct email and password.";
            lblMsgReg.ForeColor = System.Drawing.Color.Red;
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