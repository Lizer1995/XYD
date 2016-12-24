<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XHXY.aspx.cs" Inherits="XYD.XHXY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable="no" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>湘阅读-作品分类</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <script src="js/jquery-3.1.0.min.js"></script>
    <style>
        @media screen and (max-width:960px){
            body{
                font-size:xx-small;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%;background:#ffcc99;">
        <div style="width:100%;height:10px;background-color:#cc3300;"></div>
        <img src="imgs/xyd.png" />
    </div>
    <div class="row" style="margin:0">
      <div class="col-md-2 col-xs-0 col-sm-0"></div>
      <div class="col-md-8 col-xs-12 col-sm-12">
        <asp:GridView ID="GridView1" runat="server" cellpadding="3" class="table table-bordered" style="width:100%" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="15" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="书名" SortExpression="Name" />
                <asp:BoundField DataField="WriterName" HeaderText="作者" SortExpression="WriterName" />
                <asp:BoundField DataField="Style" HeaderText="类型" SortExpression="Style" />
                <asp:BoundField DataField="State" HeaderText="状态" SortExpression="State" />
                <asp:BoundField DataField="jianjie" HeaderText="简介" SortExpression="jianjie" />
                <asp:TemplateField HeaderText="开始阅读"><ItemTemplate><asp:LinkButton ID="Button1" runat="server" OnClick="Click" Text="开始阅读"/></ItemTemplate></asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select Name,WriterName,Style,State,jianjie from Book Where Style='玄幻&amp;悬疑'"></asp:SqlDataSource>
    
      </div>
      <div class="col-md-2 col-xs-0 col-sm-0"></div>
    </div>
    </form>
</body>
</html>
