using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class notes_class_8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        GridView1.PreRender += new EventHandler(GridView1_PreRender);
        bind();
        GridView2.PreRender += new EventHandler(GridView2_PreRender);
        bind2();
    }
    public void bind()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        con.Open();
        String cmd = "select * from [pdfnotes] where class_name = 'Class-8' and subject_name = 'Maths'";
        SqlCommand login = new SqlCommand(cmd, con);
        SqlDataAdapter ad = new SqlDataAdapter(login);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        con.Close();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

        
    }
     public void bind2()
    {
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString);


        conn.Open();
        String cmd2 = "select * from [pdfnotes] where class_name = 'Class-8' and subject_name = 'Science'";
        SqlCommand login2 = new SqlCommand(cmd2, conn);
        SqlDataAdapter ad2 = new SqlDataAdapter(login2);
        DataSet ds2 = new DataSet();
        ad2.Fill(ds2);
        conn.Close();
        GridView2.DataSource = ds2.Tables[0];
        GridView2.DataBind();
        
    }
    protected void GridView1_PreRender(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count > 0)
        {
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

    }
    protected void GridView2_PreRender(object sender, EventArgs e)
    {
        if (GridView2.Rows.Count > 0)
        {
            GridView2.UseAccessibleHeader = true;
            GridView2.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

    }
}
