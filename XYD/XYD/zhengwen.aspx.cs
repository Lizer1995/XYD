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
    public partial class zhengwen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Capter"] != null)
            {
                string name = Session["Capter"].ToString();
                string odbcString = "DSN=Lizer;";
                string sqlid = "select * from Capters where Name = '" + name +"'";
                OdbcConnection odbcConn = new OdbcConnection(odbcString);
                odbcConn.Open();
                OdbcCommand odbcCmdid = new OdbcCommand(sqlid, odbcConn);
                OdbcDataReader myID = odbcCmdid.ExecuteReader();
                if (myID.Read())
                {
                    int n = System.Convert.ToInt32(myID.GetValue(myID.GetOrdinal("ID")));
                    string bookname = System.Convert.ToString(myID.GetValue(myID.GetOrdinal("BookName")));
                    //int num = n - 1;

                    myID.Close();
                    odbcConn.Close();
                    OdbcConnection odbcConninsert = new OdbcConnection(odbcString);
                    odbcConninsert.Open();
                    string sql = "select * from Capters where BookName = '" + bookname + "' AND ID <" + n + " order by id desc limit 1";
                    OdbcCommand odbcCmd = new OdbcCommand(sql, odbcConninsert);
                    OdbcDataReader myinsert = odbcCmd.ExecuteReader();
                    if (myinsert.Read())
                    {
                        string ss = System.Convert.ToString(myinsert.GetValue(myinsert.GetOrdinal("Name")));
                        Session["Capter"] = ss;
                        myinsert.Close();
                        odbcConninsert.Close();
                        Response.Redirect("zhengwen.aspx");
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
                string name = Session["Capter"].ToString();
                string odbcString = "DSN=Lizer;";
                string sqlid = "select * from Capters where Name = '" + name +"'";
                OdbcConnection odbcConn = new OdbcConnection(odbcString);
                odbcConn.Open();
                OdbcCommand odbcCmdid = new OdbcCommand(sqlid, odbcConn);
                OdbcDataReader myID = odbcCmdid.ExecuteReader();
                if (myID.Read())
                {
                    int n = System.Convert.ToInt32(myID.GetValue(myID.GetOrdinal("ID")));
                    string bookname = System.Convert.ToString(myID.GetValue(myID.GetOrdinal("BookName")));
                    //Button2.Text = System.Convert.ToString(n);
                    //int num = n+1;
                    myID.Close();
                    odbcConn.Close();
                    OdbcConnection odbcConninsert = new OdbcConnection(odbcString);
                    odbcConninsert.Open();
                    string sql = "select * from Capters where BookName = '" + bookname +"' AND ID>"+n+" limit 1";
                    OdbcCommand odbcCmd = new OdbcCommand(sql, odbcConninsert);
                    OdbcDataReader myinsert = odbcCmd.ExecuteReader();
                    if (myinsert.Read())
                    {
                        string ss = System.Convert.ToString(myinsert.GetValue(myinsert.GetOrdinal("Name")));
                        Session["Capter"] = ss;
                        myinsert.Close();
                        odbcConninsert.Close();
                        Response.Redirect("zhengwen.aspx");
                    }
                }
        }
    }
}