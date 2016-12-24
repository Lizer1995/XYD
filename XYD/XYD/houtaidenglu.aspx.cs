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
    public partial class houtaidenglu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = name.Text.Trim();
            string password = namepassword.Text.Trim();

            //需要事先创建MySQL ODBC DSN.
            string odbcString = "DSN=Lizer;";
            string sql = "select * from Guanli where Name ='" + user + "' and Password ='" + password + "'";

            //string odbcString = "DRIVER={MySQL ODBC 3.51 Driver};" +
            //                    "SERVER=localhost;" +
            //                    "Port=3306;" +  //连接本地数据库时可省略此项设置
            //                    "DATABASE=test;" +
            //                    "UID=root;" +
            //                    "PASSWORD=root;" +
            //                    "OPTION=3";

            OdbcConnection odbcConn = new OdbcConnection(odbcString);
            odbcConn.Open();
            OdbcCommand odbcCmd = new OdbcCommand(sql, odbcConn);
            OdbcDataReader myreader = odbcCmd.ExecuteReader();
            if (myreader.Read())
            {
                //Label1.Text = "您好，登陆成功";
                Session["Readername"] = myreader.GetValue(myreader.GetOrdinal("Name"));//获取该用户的用户名
                //Page.Response.Redirect("index.aspx");
                Response.Redirect("houtaiguanli.aspx");
                myreader.Close();
                odbcConn.Close();
            }
            else
            {
                Label1.Text = "登陆失败，用户名或密码错误";
            }
        }
    }
}