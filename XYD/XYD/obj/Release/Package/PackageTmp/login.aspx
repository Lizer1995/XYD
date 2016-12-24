<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="XYD.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.user-scalable="no" />
    <title>读者登录</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/logincss.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="pink" style="width:100%;height:50px;">
        <div class="orange" style="width:100%;height:10px;"></div>
    </div>
    <div id="div1">
    <div class="form-group">
        <label for="name" "control-label">用户名</label>
        <asp:TextBox ID="name" runat="server" class="form-control" placeholder="请输入用户名"></asp:TextBox>
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
    </form>
</body>
</html>
