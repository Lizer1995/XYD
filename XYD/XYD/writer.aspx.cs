using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XYD
{
    public partial class writer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Writername"] == null)
            {
                Label1.Visible = false;
            }
            else
            {
                Label1.Text = Session["Writername"] + "，您好！";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            GridViewRow row = btn.Parent.Parent as GridViewRow;
            string a = row.Cells[1].Text;
            //Label1.Text = a;
            Session["InsertBook"] = a;
            Response.Redirect("InsertCpter.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertBook.aspx");
        }
    }
}