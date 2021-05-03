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

public partial class admin_addteacher : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addteacher_Click(object sender, EventArgs e)
    {
        string rbdtext;
        if (RadioButton1.Checked) { rbdtext = RadioButton1.Text; } else { rbdtext = RadioButton2.Text; }

        byte[] myphoto = FileUpload1.FileBytes;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        con.Open();
        String cmd = "select email from [registrationteacher] where email =" + email.Text.Trim();
        SqlCommand checkemail = new SqlCommand("select email from [registration] where email =@email", con);
        checkemail.Parameters.AddWithValue("@email", email.Text.Trim());
        SqlDataReader read = checkemail.ExecuteReader();
        if (read.HasRows)
        {
            lblMsgReg.Text = "Email Address is already exist. Please try with different email address.";
            lblMsgReg.ForeColor = System.Drawing.Color.Red;
            con.Close();
        }
        else
        {
            con.Close();
            con.Open();
            string insertCmd = "insert into [registrationteacher](first_name,last_name,qualification,address,email,password,mobile,photo,gender,is_active,created_on) values(@first_name,@last_name,@qualification,@address,@email,@password,@phone,@photo,@gender,@is_active,@created_on)";
            SqlCommand insertStudent = new SqlCommand(insertCmd, con);
            insertStudent.Parameters.AddWithValue("@first_name", first_name.Text);
            insertStudent.Parameters.AddWithValue("@last_name", last_name.Text);
            insertStudent.Parameters.AddWithValue("@qualification", qualification.Text);
            insertStudent.Parameters.AddWithValue("@address", address.Text);
            insertStudent.Parameters.AddWithValue("@phone", mobile.Text);
            insertStudent.Parameters.AddWithValue("@email", email.Text);
            insertStudent.Parameters.AddWithValue("@password", MyEncrypt(password.Text));
            insertStudent.Parameters.AddWithValue("@photo", myphoto);
            insertStudent.Parameters.AddWithValue("@gender", rbdtext);
            insertStudent.Parameters.AddWithValue("@created_on", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
            insertStudent.Parameters.AddWithValue("@is_active", 1);
            insertStudent.ExecuteNonQuery();
            con.Close();
            Response.Redirect("teacherslist.aspx");
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