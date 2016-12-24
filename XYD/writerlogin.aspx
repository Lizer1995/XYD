<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="writerlogin.aspx.cs" Inherits="XYD.writerlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.user-scalable="no" />
    <title>作家专区-登陆</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/logincss.css" />
</head>
<body>
       <form id="form1" runat="server">
    <div class="pink" style="width:100%">
        <div class="orange" style="width:100%;height:10px;"></div>
        <div align="center"><img id="imgxyd" src="imgs/xydwriterlogin.png" /></div>
    </div>

    <div class="row" style="margin:0;padding:0">
    <div class="col-md-4 col-sx-1"></div>
    <div id="div1" class="col-md-4 col-sx-10">
    <div class="form-group">
        <label for="name" "control-label">用户名</label>
        <asp:TextBox ID="name" runat="server" class="form-control" placeholder="请输入手机号码登录"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="password" "control-label">密码</label>
        <asp:TextBox ID="namepassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
    </div>
    <br />
    <div align="center">
        <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="登录" OnClick="Button1_Click" />
    </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    <div class="col-md-4 col-sx-1"></div>
    </div>
    </form>
</body>
</html>
