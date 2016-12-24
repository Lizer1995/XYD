<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhengwen.aspx.cs" Inherits="XYD.zhengwen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable="no" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>湘阅读-章节阅读</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/readbook.css" />
    <script src="js/jquery-3.1.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <nav class="navbar navbar-default navbar-fixed-top pink">
          <div class="orange" style="width:100%;height:10px;"></div>
     </nav>

<!-- 主区域 -->
<div id="div0" class="row" style="margin:0">
   <div id="div1" class="col-md-2 col-xs-0"></div>
   <div id="div2" class="col-md-8 col-xs-12 div2">
       <br />
       <br />
       <br />
       <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
           <ItemTemplate>
               <span class="h3" style="color:#cc3300;"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' /></span>
               <br />
               <br />
               <div>
               <asp:Label ID="neirongLabel" runat="server" Text='<%# Eval("neirong").ToString().Replace("\n", "<br/><br/>") %>' />
               </div>
               <br />
<br />
           </ItemTemplate>
       </asp:DataList>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>" SelectCommand="select Name,neirong from Capters where Name=?">
           <SelectParameters>
                 <asp:SessionParameter DefaultValue="1" Name="Name" SessionField="Capter" Type="String" />
             </SelectParameters>
       </asp:SqlDataSource>
   </div>
   <div id="div4" class="col-md-2 col-xs-0"></div>
</div>
        <div style="text-align:center">
           <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Button1_Click">上一章</asp:LinkButton>
           <asp:LinkButton ID="LinkButton2" runat="server" OnClick="Button2_Click">下一章</asp:LinkButton>
        </div>
   <footer>
      <span>版权所有：表情包大队</span>
   </footer>
<script src="bootstrap/js/bootstrap.min.js"></script>
    </div>
    </form>
</body>
</html>
