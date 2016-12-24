<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="writer.aspx.cs" Inherits="XYD.writer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable="no" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>湘阅读-作家专区</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/writercss.css" />
    <script src="js/jquery-3.1.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-default navbar-fixed-top pink">
       <div class="orange" style="width:100%;height:10px;"></div>
       <div>
         <div class="container">
            
                <h2><b>湘阅读 作家专区</b></h2>
            
         </div>
         <div id="name" style="float:right;margin-right:10%"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
       </div>
    </nav>

<!-- 主区域 -->
<div id="div0" class="row" style="margin:0">
   <div id="div1" class="col-md-1 col-xs-1"></div>
   <div id="div2" class="col-md-1 col-xs-2">
      <div id="div3"><span><b>作品管理</b><span></div>
   </div>
   <div id="div4" class="col-md-9 col-xs-8">
      <div style="padding:1em;float:right">
          <asp:Button ID="Button2" class="btn btn-default orange" style="color:#ffffff" runat="server" Text="创建新作品" OnClick="Button2_Click" /></div>
       <br />
       <br />
      <div >
          <asp:GridView ID="GridView1" cellpadding="3" class="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:BoundField DataField="ID" HeaderText="书号" SortExpression="ID" />
                  <asp:BoundField DataField="Name" HeaderText="书名" SortExpression="Name" />
                  <asp:BoundField DataField="Style" HeaderText="分类" SortExpression="Style" />
                  <asp:BoundField DataField="State" HeaderText="状态" SortExpression="State" />
                  <asp:TemplateField HeaderText="写新章节"><ItemTemplate><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="写新章节"/></ItemTemplate></asp:TemplateField>
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="SELECT ID,Name,Style,State FROM Book WHERE WriterName = ?">
              <SelectParameters>
                 <asp:SessionParameter DefaultValue="1" Name="WriterName" SessionField="Writername" Type="String" />
             </SelectParameters>
          </asp:SqlDataSource>
      </div>
   </div>
   <div id="div5" class="col-md-1 col-xs-1"></div>
 </div>
 
 <footer>
   <span>版权所有：表情包大队</span>
 </footer>
    </form>

<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
