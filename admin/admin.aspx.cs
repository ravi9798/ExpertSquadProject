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

public partial class admin_admin : System.Web.UI.Page
{
    string str;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
            if (Session["admin_email_address"] != null)
            {
                Response.Redirect("dashboard.aspx");
            }
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String email_address, password;
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        con.Open();
        String cmd = "select email_address,password from [admin] where email_address='" + TextBox1.Text.ToString() + "' and password='" + MyEncrypt(TextBox2.Text.ToString()) + "'";
        SqlCommand login = new SqlCommand(cmd, con);
        SqlDataReader read = login.ExecuteReader();
        if (read.Read())
        {
            email_address = read.GetValue(0).ToString().Trim();
            password = read.GetValue(1).ToString().Trim();
            Session["admin_email_address"] = email_address.ToString();
            if (TextBox1.Text.Trim() == email_address)
            {
                if (MyEncrypt(TextBox2.Text.Trim()) == password)
                {
                    Response.Redirect("dashboard.aspx");
                } else {
                    
                }
            }
        }
        else
        {
            lblMsg.Text = "Incorrect Username or Password";
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }
    }
    private string MyEncrypt(string clearText)
    {
        string EncryptionKey = "E6C69AC9CCE39";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
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
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }

    private string MyDecrypt(string cipherText)
    {
        string EncryptionKey = "E6C69AC9CCE39";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
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
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }
}