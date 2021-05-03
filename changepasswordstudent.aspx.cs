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

public partial class changepasswordstudent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_email"] == null)
            Response.Redirect("signin.aspx");
    }
    protected void MySubmit_Click(object sender, EventArgs e)
    {

        if (con.State == ConnectionState.Closed)
            con.Open();
        SqlCommand checkpw = new SqlCommand("select password from [registration] where email =@email", con);
        checkpw.Parameters.AddWithValue("@email", Session["user_email"]);
        SqlDataReader read = checkpw.ExecuteReader();
        if (read.Read())
        {
            string oldpassworddb = read.GetValue(0).ToString();
            string oldpassworddbdecrypt = MyDecrypt(oldpassworddb);
            con.Close();
            con.Open();
            if (oldpassword.Text == oldpassworddbdecrypt)
            {
                if (password.Text == confirm_password.Text)
                {
                    if (con.State == ConnectionState.Closed)
                        con.Open();
                    string updatePwd = "update [registration] set password=@password where email= '" + Session["user_email"] + "'";
                    SqlCommand updateCMD = new SqlCommand(updatePwd, con);
                    updateCMD.Parameters.AddWithValue("@password", MyEncrypt(password.Text));
                    try
                    {
                        updateCMD.ExecuteNonQuery();
                        con.Close();
                        lblMsgReg.Text = "Password Changed successfully. Now you can signin to your account with new password.";
                        lblMsgReg.ForeColor = System.Drawing.Color.Red;
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
