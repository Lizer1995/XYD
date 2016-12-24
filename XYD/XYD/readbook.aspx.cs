using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XYD
{
    public partial class readbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NameLabel3_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = sender as LinkButton;
            string a = lbtn.Text;
            Session["Capter"] = a;
            Response.Redirect("zhengwen.aspx");
        }
    }
}