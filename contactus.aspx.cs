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

public partial class contactus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void user_submit_Click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
            con.Open();
        string insertCmd = "insert into [helpbox](user_name,user_email,user_message,user_date) values(@name,@email,@message,@date)";
        SqlCommand insertMessage = new SqlCommand(insertCmd, con);
        insertMessage.Parameters.AddWithValue("@name", namebox.Text);
        insertMessage.Parameters.AddWithValue("@email", emailbox.Text);
        insertMessage.Parameters.AddWithValue("@message", messagebox.Text);
        insertMessage.Parameters.AddWithValue("@date", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
        try
        {
            insertMessage.ExecuteNonQuery();
            lblCaptchaMsg.Text = "ThankYou!!! We are Happy to Communicate with You..";
            lblCaptchaMsg.ForeColor = System.Drawing.Color.Red;
        }
        finally
        {

        }
    }
}