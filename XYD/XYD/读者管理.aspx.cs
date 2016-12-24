using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Odbc;

namespace xiangyuedu
{
    public partial class 读者管理 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            GridViewRow row = btn.Parent.Parent as GridViewRow;
            int id = System.Convert.ToInt32(row.Cells[0].Text);

            string odbcString = "DSN=Lizer;";
            string sqlid = "Delete from Reader where ID = " + id;
            OdbcConnection odbcConn = new OdbcConnection(odbcString);
            odbcConn.Open();
            OdbcCommand odbcCmdid = new OdbcCommand(sqlid, odbcConn);
            OdbcDataReader myID = odbcCmdid.ExecuteReader();
            if (myID.Read())
            {


            }
            Response.Redirect("houtaiguanli.aspx");
        }
    }
}