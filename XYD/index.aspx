<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="XYD.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>    
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.user-scalable="no" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>湘阅读</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/indexcss.css" />    
    <script src="js/jquery-3.1.0.min.js"></script>
    <script src="js/indexjs.js"></script>
</head>   
<body> 
<form id="form99" runat="server">
<nav class="navbar navbar-default navbar-fixed-top pink">
<div class="orange" style="width:100%;height:10px;"></div>
  <div class="container">
     <ul class="nav navbar-nav navbar-right nav-tabs">
           <li id="li1"><asp:Panel ID="Panel1" runat="server"><asp:Label ID="Label1" CssClass="text-muted" runat="server" Text=""></asp:Label><a href="exit.aspx">退出</a></asp:Panel></li>
           <li id="li2"><asp:Panel ID="Panel2" runat="server"><span style="cursor:pointer" class="text-muted">登录</span></asp:Panel></li> 
           <li><asp:Panel ID="Panel4" runat="server">|</asp:Panel></li>
           <li id="li3"><asp:Panel ID="Panel3" runat="server"><span style="cursor:pointer" class="text-muted">注册</span></asp:Panel></li>
       <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">作家入口</a>
              <ul class="dropdown-menu">
                  <li><a href="writerlogin.aspx" target="view_window">作家登陆</a></li>
                  <li><a href="#">作家注册</a></li>
              </ul>
         </li>
     </ul>
  </div>
</nav>

<img id="imgbg" src="imgs/beijing.png" />

<table border="0" style="border-collapse:collapse;">
<tr>
    <td class="hidden-xs hidden-sm"></td>
    <td valign="bottom">
        <br /><br /><br />
        
        <div class="form-inline form-group hidden-xs" style="margin:5px;" role="form">
        <div class="form-group" style="margin:1em;float:right;">
           <label class="sr-only" for="name">搜索</label>
           <input type="text" class="form-control" id="name" placeholder="请输入书名\作者" />
           <button type="submit" class="btn btn-default">搜索</button>
        </div>
        </div>

       <div style="text-align:center" class="visible-xs">
           <br />
           <br />
        <input type="text" placeholder="请输入书名\作者" />
        <button type="submit" class="btn btn-xs">搜索</button>
       </div> 
         
    <img id="imgxyd" src="imgs/xyd.png" />
    </td>
    <td class="hidden-xs hidden-sm"></td>
</tr>
<tr>
   <td style="width:12%;" class="hidden-xs hidden-sm">
       <div id="zuocd">
         <ul id="myul" class="list-group">
             <li style="margin-bottom:8px"><a href="#jdtj" style="cursor:pointer;color:#cc3300">经典推荐</a></li>
             <li style="margin-bottom:8px"><a href="#gdcy" style="cursor:pointer;color:#cc3300">古代&穿越</a></li>
             <li style="margin-bottom:8px"><a href="#xdyq" style="cursor:pointer;color:#cc3300">现代&言情</a></li>
             <li style="margin-bottom:8px"><a href="#xhxy" style="cursor:pointer;color:#cc3300">玄幻&悬疑</a></li>
         </ul>
       </div>
   </td>

   <td style="border-top:3px solid #cc3300;border-left:3px solid #cc3300;border-right:3px solid #cc3300;background-color:#ffffff;">
   
<!-- 经典推荐 -->
    
    <div id="jdtj" style="margin:0 0 0 1em">
       <span class="spansytle1">经典推荐</span>
       <a href="#" class="spansytle2">查看更多</a>
    </div>
    
    <!-- 轮播动画 -->
    <div class="hidden-xs">
       <iframe src="1.html" scrolling="No"></iframe>
    </div>

    <!-- 手机可见 -->
    <div id="phonediv" class="visible-xs">
        <a href="#"><img src="imgs/book/hlm.jpg" alt="image01" style="width:100px;margin:5px;" /></a>
		<a href="#"><img src="imgs/book/bc.jpg" alt="image02" style="width:100px;margin:5px;" /></a>
		<a href="#"><img src="imgs/book/sgyy.jpg" alt="image03" style="width:100px;margin:5px;" /></a>
		<a href="#"><img src="imgs/book/xajh.jpg" alt="image04" style="width:100px;margin:5px;" /></a>
		<a href="#"><img src="imgs/book/jdsbj.jpg" alt="image05" style="width:100px;margin:5px;" /></a>
		<a href="#"><img src="imgs/book/xyj.jpg" alt="image06" style="width:100px;margin:5px;" /></a>
    </div>
   
   </td>
   <td style="width:12%;" class="hidden-xs hidden-sm"></td>
</tr>

<tr>
<td class="hidden-xs hidden-sm"></td>
<!-- 古代&穿越 -->
<td class="td1">
   <div id="gdcy" style="margin:1em;">
   <span class="spansytle1">古代&穿越</span>
   <a href="#" class="spansytle2">查看更多</a>
   </div>
    <div style="float:left" class="hidden-xs"><img src="imgs/book/zll.jpg" class="imgcss" /></div>
    <!-- 分类强推 -->
    <div style="float:left" class="hidden-xs">
    <asp:DataList ID="DataList1" class="myDataList" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <b style="color:#cc3300">分类强推</b>
            <br />
            <asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="NameLabel1" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            <b>作者:</b>
            <asp:Label ID="WriterNameLabel1" runat="server" Text='<%# Eval("WriterName") %>' />
            <br />
            <b>类型:</b>
            <asp:Label ID="StyleLabel1" runat="server" Text='<%# Eval("Style") %>' />
            <br />
            <b>状态:</b>
            <asp:Label ID="StateLabel1" runat="server" Text='<%# Eval("State") %>' />
            <br />
            <div style="width:100%">
            <b>简介:</b>
            <asp:Label ID="jianjieLabel1" runat="server" Text='<%# Eval("jianjie") %>' />
            </div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="SELECT Name,WriterName,Style,State,jianjie FROM Book where Name=&quot;醉玲珑&quot;"></asp:SqlDataSource>
    </div>

    <!-- 列表 -->
    <div class="lb1">
    <asp:DataList ID="OneDataList1" class="myDataLista" runat="server" DataSourceID="SqlDataSource4">
        <ItemTemplate>
            <div class="bottomgrey"><asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="nameLabel1" runat="server" Text='<%# Eval("name") %>' /></div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select name from Book where Style='古代\&amp;穿越' AND Name not in (select Book.Name from(select Name from Book where Style='古代\&amp;穿越' limit 0) as Book) limit 4;"></asp:SqlDataSource>
    </div>

    <div class="lb2">
    <asp:DataList ID="OneDataList2" class="myDataLista" runat="server" DataSourceID="SqlDataSource5">
        <ItemTemplate>
            <div class="bottomgrey"><asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="nameLabel2" runat="server" Text='<%# Eval("name") %>' /></div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select name from Book where Style='古代\&amp;穿越' AND Name not in (select Book.Name from(select Name from Book where Style='古代\&amp;穿越' limit 4) as Book) limit 4;"></asp:SqlDataSource>
    </div>

    <div class="lb3">
    <asp:DataList ID="OneDataList3" class="myDataLista" runat="server" DataSourceID="SqlDataSource6">
        <ItemTemplate>
            <div class="bottomgrey"><asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="nameLabel3" runat="server" Text='<%# Eval("name") %>' /></div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select name from Book where Style='古代\&amp;穿越' AND Name not in (select Book.Name from(select Name from Book where Style='古代\&amp;穿越' limit 8) as Book) limit 4;"></asp:SqlDataSource>
    </div>
    
</td>
<td class="hidden-xs hidden-sm"></td>
</tr>

<tr>
<td class="hidden-xs hidden-sm"></td>

<!-- 现代&言情 -->
<td class="td1">
   <div id="xdyq" style="margin:1em">
   <span class="spansytle1">现代&言情</span>
   <a href="#" class="spansytle2">查看更多</a>
   </div>
   <div style="float:left" class="hidden-xs"><img class="imgcss" src="imgs/book/wwyx.jpg"></div>

   <!-- 分类强推 -->
    
   <div style="float:left" class="hidden-xs">
    <asp:DataList ID="DataList2" class="myDataList" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <b style="color:#cc3300">分类强推</b>
            <br />
            <asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="NameLabel2" runat="server" Text='<%# Eval("Name") %>' />
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
            <div style="width:14em">
            <b>简介:</b>
            <asp:Label ID="jianjieLabel2" runat="server" Text='<%# Eval("jianjie") %>' />
            </div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select Name,WriterName,Style,State,jianjie from Book where Name=&quot;微微一笑很倾城&quot;"></asp:SqlDataSource>
   </div>
    
    <!-- 列表 -->
    <div class="lb1">
    <asp:DataList ID="TwoDataList1" class="myDataLista" runat="server" DataSourceID="SqlDataSource7">
        <ItemTemplate>
            <div class="bottomgrey"><asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="nameLabel4" runat="server" Text='<%# Eval("name") %>' /></div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select name from Book where Style='现代\&amp;言情' AND Name not in (select Book.Name from(select Name from Book where Style='现代\&amp;言情' limit 0) as Book) limit 4;"></asp:SqlDataSource>
    </div>

    <div class="lb2">
    <asp:DataList ID="TwoDataList2" class="myDataLista" runat="server" DataSourceID="SqlDataSource8">
        <ItemTemplate>
            <div class="bottomgrey"><asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="nameLabel5" runat="server" Text='<%# Eval("name") %>' /></div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select name from Book where Style='现代\&amp;言情' AND Name not in (select Book.Name from(select Name from Book where Style='现代\&amp;言情' limit 4) as Book) limit 4;"></asp:SqlDataSource>
    </div>

    <div class="lb3">
    <asp:DataList ID="TwoDataList3" class="myDataLista" runat="server" DataSourceID="SqlDataSource9">
        <ItemTemplate>
            <div class="bottomgrey"><asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="nameLabel6" runat="server" Text='<%# Eval("name") %>' /></div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select name from Book where Style='现代\&amp;言情' AND Name not in (select Book.Name from(select Name from Book where Style='现代\&amp;言情' limit 8) as Book) limit 4;"></asp:SqlDataSource>
    </div>    
</td>
<td class="hidden-xs hidden-sm"></td>

</tr>

<tr style="border-bottom:6px solid #cc3300;background-color:#ffffff;">
<td class="hidden-xs hidden-sm"></td>

<!-- 玄幻&悬疑 -->
<td class="td1">
   <div id="xhxy" style="margin:1em">
   <span class="spansytle1">玄幻&悬疑</span>
   <a href="XHXY.aspx" class="spansytle2">查看更多</a>
   </div>
   <div style="float:left" class="hidden-xs"><img class="imgcss" src="imgs/book/wxfs.jpg"></div>
    <!-- 分类强推 -->
    
   <div style="float:left" class="hidden-xs">
    <asp:DataList ID="DataList3" class="myDataList" runat="server" DataSourceID="SqlDataSource3">
        <ItemTemplate>
            <b style="color:#cc3300">分类强推</b>
            <br />
            <asp:LinkButton style="color:#333;" ID="NameLabel3" runat="server" Text='<%# Eval("Name") %>' OnClick="NameLabel3_Click" />
            <br />
            <b>作者:</b>
            <asp:Label ID="WriterNameLabel3" runat="server" Text='<%# Eval("WriterName") %>' />
            <br />
            <b>类型:</b>
            <asp:Label ID="StyleLabel3" runat="server" Text='<%# Eval("Style") %>' />
            <br />
            <b>状态:</b>
            <asp:Label ID="StateLabel3" runat="server" Text='<%# Eval("State") %>' />
            <br />
            <div style="width:14em">
            <b>简介:</b>
            <asp:Label ID="jianjieLabel3" runat="server" Text='<%# Eval("jianjie") %>' />
            </div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select Name,WriterName,Style,State,jianjie from Book where Name=&quot;无心法师&quot;"></asp:SqlDataSource>
    </div>

        <!-- 列表 -->
    <div class="lb1">
    <asp:DataList ID="ThreeDataList1" class="myDataLista" runat="server" DataSourceID="SqlDataSource10">
        <ItemTemplate>
            <div class="bottomgrey"><asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="nameLabel7" runat="server" Text='<%# Eval("name") %>' /></div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select name from Book where Style='玄幻\&amp;悬疑' AND Name not in (select Book.Name from(select Name from Book where Style='玄幻\&amp;悬疑' limit 0) as Book) limit 4;"></asp:SqlDataSource>
    </div>

    <div class="lb2">
    <asp:DataList ID="ThreeDataList2" class="myDataLista" runat="server" DataSourceID="SqlDataSource11">
        <ItemTemplate>
            <div class="bottomgrey"><asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="nameLabel8" runat="server" Text='<%# Eval("name") %>' /></div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select name from Book where Style='玄幻\&amp;悬疑' AND Name not in (select Book.Name from(select Name from Book where Style='玄幻\&amp;悬疑' limit 4) as Book) limit 4;"></asp:SqlDataSource>
    </div>

    <div class="lb3">
    <asp:DataList ID="ThreeDataList3" class="myDataLista" runat="server" DataSourceID="SqlDataSource12">
        <ItemTemplate>
            <div class="bottomgrey"><asp:LinkButton style="color:#333;" OnClick="NameLabel3_Click" ID="nameLabel9" runat="server" Text='<%# Eval("name") %>' /></div>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select name from Book where Style='玄幻\&amp;悬疑' AND Name not in (select Book.Name from(select Name from Book where Style='玄幻\&amp;悬疑' limit 8) as Book) limit 4;"></asp:SqlDataSource>
    </div>
</td>
  
<td class="hidden-xs hidden-sm"></td>
</tr>

<tr>
<td class="hidden-xs hidden-sm"></td>
<td align=center style="padding:2em"><span>版权所有：表情包大队</span></td>
<td class="hidden-xs hidden-sm"></td>
</tr>

</table>

<script src="bootstrap/js/bootstrap.min.js"></script>  

</form>
</body>
</html>
