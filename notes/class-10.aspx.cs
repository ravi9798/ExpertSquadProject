using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class notes_class_10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.PreRender += new EventHandler(GridView1_PreRender);
        bind1();
        GridView2.PreRender += new EventHandler(GridView2_PreRender);
        bind2();
        GridView3.PreRender += new EventHandler(GridView3_PreRender);
        bind3();
        GridView4.PreRender += new EventHandler(GridView4_PreRender);
        bind4();
    }
    public void bind1()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        con.Open();
        String cmd = "select * from [pdfnotes] where class_name = 'Class-10' and subject_name = 'Biology'";
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
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        con.Open();
        String cmd2 = "select * from [pdfnotes] where class_name = 'Class-10' and subject_name = 'Chemistry'";
        SqlCommand login2 = new SqlCommand(cmd2, con);
        SqlDataAdapter ad2 = new SqlDataAdapter(login2);
        DataSet ds2 = new DataSet();
        ad2.Fill(ds2);
        con.Close();
        GridView2.DataSource = ds2.Tables[0];
        GridView2.DataBind();


    }
    public void bind3()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        con.Open();
        String cmd3 = "select * from [pdfnotes] where class_name = 'Class-10' and subject_name = 'Maths'";
        SqlCommand login3 = new SqlCommand(cmd3, con);
        SqlDataAdapter ad3 = new SqlDataAdapter(login3);
        DataSet ds3 = new DataSet();
        ad3.Fill(ds3);
        con.Close();
        GridView3.DataSource = ds3.Tables[0];
        GridView3.DataBind();


    }
    public void bind4()
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        con.Open();
        String cmd4 = "select * from [pdfnotes] where class_name = 'Class-10' and subject_name = 'Physics'";
        SqlCommand login4 = new SqlCommand(cmd4, con);
        SqlDataAdapter ad4 = new SqlDataAdapter(login4);
        DataSet ds4 = new DataSet();
        ad4.Fill(ds4);
        con.Close();
        GridView4.DataSource = ds4.Tables[0];
        GridView4.DataBind();


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
    protected void GridView3_PreRender(object sender, EventArgs e)
    {
        if (GridView3.Rows.Count > 0)
        {
            GridView3.UseAccessibleHeader = true;
            GridView3.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
    protected void GridView4_PreRender(object sender, EventArgs e)
    {
        if (GridView4.Rows.Count > 0)
        {
            GridView4.UseAccessibleHeader = true;
            GridView4.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}