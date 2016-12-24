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
    public partial class InsertBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Writername"] != null)
            {
                string bookname = TextBox1.Text.Trim();
                string fenlei = xuanze.Text.Trim();
                string jianjie = TextBox2.Text.Trim();
                string Writer = Session["Writername"].ToString();

                string odbcString = "DSN=Lizer;";
                string sqlid = "select * from Book where ID = (select max(ID) from Book)";
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
                    string sql = "insert into Book values(" + num + ",'" + bookname + "','" + Writer + "','" + fenlei + "','连载中','" + jianjie +"')";
                    OdbcCommand odbcCmd = new OdbcCommand(sql, odbcConninsert);
                    OdbcDataReader myinsert = odbcCmd.ExecuteReader();
                    if (myinsert.Read())
                    {
                        myinsert.Close();
                        odbcConninsert.Close();
                    }
                    Response.Redirect("writer.aspx");
                }
            }
        }    
    }
}