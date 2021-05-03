using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewpdf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string qfilename = Request.QueryString["filename"].ToString();
        string myfilePdf = "<object data=\"{0}\" type=\"application/pdf\" width=\"1024px\" height=\"600px\">";
        myfilePdf += "If you are unable to view file, you can download from <a href = \"{0}\">here</a>";
        myfilePdf += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
        myfilePdf += "</object>";
        string filename = qfilename;
        ltEmbed.Text = string.Format(myfilePdf, ResolveUrl("~/Uploads/" + filename));
    }
}