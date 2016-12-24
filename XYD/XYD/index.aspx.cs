using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XYD
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Readername"] == null)
            {
                Panel1.Visible = false;
            }
            else
            {
                Label1.Text = Session["Readername"] + "，您好！";
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
            }
        }

        protected void NameLabel3_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = sender as LinkButton;
            string a = lbtn.Text;
            Session["Book"] = a;
            Response.Redirect("readbook.aspx");
        }
    }
}