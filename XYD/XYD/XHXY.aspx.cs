using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XYD
{
    public partial class XHXY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Click(object sender, EventArgs e)
        {
            LinkButton btn = sender as LinkButton;
            GridViewRow row = btn.Parent.Parent as GridViewRow;
            string a = System.Convert.ToString(row.Cells[0].Text);
            Session["Book"] = a;
            Response.Redirect("readbook.aspx");
        }
    }
}