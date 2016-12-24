<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="readbook.aspx.cs" Inherits="XYD.readbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable="no" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>湘阅读-作品详情</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/readbook.css" />
    <script src="js/jquery-3.1.0.min.js"></script>
</head>
<body>
<form id="form1" runat="server">
     <div class="navbar navbar-default navbar-fixed-top pink">
          <div class="orange"></div>
          <img id="divimg" src="imgs/xydzpxq.png" /></>
     </div>

<!-- 主区域 -->
<div id="div0" class="row" style="margin:0">
   <div id="div1" class="col-md-2 col-xs-0"></div>
   <div id="div2" class="col-md-8 col-xs-12 div2">
      <br />
      <br />
      <br />
      <br />
      <div>
        <asp:DataList ID="DataList1" class="myDataList" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <br />
            <b>书名：</b>
            <asp:Label ID="NameLabel2" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            <b>作者:</b>
            <asp:Label ID="WriterNameLabel2" runat="server" Text='<%# Eval("WriterName") %>' />
            <br />
            <b>类型:</b>
            <asp:Label ID="StyleLabel2" runat="server" Text='<%# Eval("Style") %>' />
            <br />
            <b>状态:</b>
            <asp:Label ID="StateLabel2" runat="server" Text='<%# Eval("State") %>' />
            <br />
            <div style="width:95%">
            <b>简介:</b>
            <asp:Label ID="jianjieLabel2" runat="server" Text='<%# Eval("jianjie") %>' />
            </div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select Name,WriterName,Style,State,jianjie from Book where Name=?">
          <SelectParameters>
                 <asp:SessionParameter DefaultValue="1" Name="Name" SessionField="Book" Type="String" />
           </SelectParameters>
    </asp:SqlDataSource>
   </div>

   <div>
       <span class="h3" style="color:#cc3300"><b>目录</b></span>
       <br />
       <br />
       <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
           <ItemTemplate>
               <asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
           </ItemTemplate>
       </asp:DataList>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="SELECT Name FROM Capters WHERE (BookName = ?)">
           <SelectParameters>
                 <asp:SessionParameter DefaultValue="2" Name="BookName" SessionField="Book" Type="String" />
           </SelectParameters>
       </asp:SqlDataSource>
   </div>
   <br />
   <br />
   <br />
 </div>
 
   <div id="div4" class="col-md-2 col-xs-0"></div>
</div>
   <footer>
      <span>版权所有：表情包大队</span>
   </footer>
<script src="bootstrap/js/bootstrap.min.js"></script>
</form>
</body>
</html>
