using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_tuitionrequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.PreRender += new EventHandler(GridView1_PreRender);
        bind();
    }
    public void bind()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        con.Open();

        String cmd = "select * from [tuitionreq]";

        SqlCommand login = new SqlCommand(cmd, con);
        SqlDataAdapter ad = new SqlDataAdapter(login);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        con.Close();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_PreRender(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count > 0)
        {
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}