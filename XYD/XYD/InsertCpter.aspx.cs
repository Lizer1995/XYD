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

namespace XYD
{
    public partial class InsertCpter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["InsertBook"] != null)
            {
                Label2.Text = Session["InsertBook"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["InsertBook"] != null)
            {
                string zhangjiemingcheng = TextBox1.Text.Trim();
                string neirong = TextBox2.Text.Trim();
                string shudemingcheng = Session["InsertBook"].ToString();
                Label2.Text = shudemingcheng;
                //需要事先创建MySQL ODBC DSN.
                string odbcString = "DSN=Lizer;";
                string sqlid = "select * from Capters where ID = (select max(ID) from Capters)";
                OdbcConnection odbcConn = new OdbcConnection(odbcString);
                odbcConn.Open();
                OdbcCommand odbcCmdid = new OdbcCommand(sqlid, odbcConn);
                OdbcDataReader myID = odbcCmdid.ExecuteReader();
                if (myID.Read())
                {
                    int n = System.Convert.ToInt32(myID.GetValue(myID.GetOrdinal("ID")));
                    int num = n + 1;
                    myID.Close();
                    odbcConn.Close();

                    OdbcConnection odbcConninsert = new OdbcConnection(odbcString);
                    odbcConninsert.Open();
                    string sql = "insert into Capters values(" + num + ",'" + zhangjiemingcheng + "','" + shudemingcheng + "','" + neirong + "')";
                    OdbcCommand odbcCmd = new OdbcCommand(sql, odbcConninsert);
                    OdbcDataReader myinsert = odbcCmd.ExecuteReader();
                    if (myinsert.Read())
                    {
                        myinsert.Close();
                        odbcConninsert.Close();
                    }
                    Response.Redirect("InsertCpter.aspx"); 
                }
            }
        }
        

    }
}