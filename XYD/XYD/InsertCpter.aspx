<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertCpter.aspx.cs" Inherits="XYD.InsertCpter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable="no" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>湘阅读-作家专区</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/readbook.css" />
    <script src="js/jquery-3.1.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="pink">
       <div class="orange" style="width:100%;height:10px;"></div>
       <div>
         <div class="container">
            
                <h2><b>湘阅读 写新章节</b></h2>
            
         </div>
         <div id="name" style="float:right;margin-right:10%"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
       </div>
    </div>
        <!-- 主区域 -->
<div id="div0" class="row" style="margin:5px">
   <div id="div1" class="col-md-2 col-xs-0 col-sm-1"></div>
   <div id="div2" class="col-md-8 col-xs-12 col-sm-10">
      <p>  
        章节名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
          <asp:Button ID="Button1" class="btn btn-sm hidden-xs" style="color:#ffffff;background-color:#cc3300;float:right" runat="server" Text="确认添加" OnClick="Button1_Click" />
    </p>
     <p>添加到：<asp:Label ID="Label2" runat="server" Text=""></asp:Label></p>
     <p>
         <asp:TextBox ID="TextBox2" class="mytext" runat="server" TextMode="MultiLine"></asp:TextBox>
     </p>  

     <div class="visible-xs"><asp:Button ID="Button2" class="btn btn-block btn-sm" style="color:#ffffff;background-color:#cc3300;float:right" runat="server" Text="确认添加" OnClick="Button1_Click" /></div>   
   </div>
   <div id="div3" class="col-md-2 col-xs-0 col-sm-1"></div>
 </div>
 
 <footer>
   <span>版权所有：表情包大队</span>
 </footer>
    </form>

<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
