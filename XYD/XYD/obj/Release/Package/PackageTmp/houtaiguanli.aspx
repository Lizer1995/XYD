<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="houtaiguanli.aspx.cs" Inherits="XYD.houtaiguanli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>湘阅读后台管理</title>
    <style>
        #box{
            margin:20px;
        }
        #box div{
            width:100%;
            height:100%;
            background:#ffcc99;
            display:none;
        }
        .on{
            color:#fff;
            background:#cc3300;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div style="width:100%;background:#ffcc99;">
        <div style="width:100%;height:10px;background-color:#cc3300;"></div>
        <h2>湘阅读后台管理系统</h2>
        <br />
    </div>
   <div id="box">
    　　<input type="button" value="作品管理" class="on" />
    　　<input type="button" value="作家管理" />
    　　<input type="button" value="读者管理" />
    　　<div style="display:block;width:100%">
          作品管理<br />
          <iframe src="作品管理.aspx" style="width:100%;height:30em;"></iframe>
    　　</div>
    　　<div>
          作家管理<br />
          <iframe src="作家管理.aspx" style="width:100%;height:30em;"></iframe>
    　　</div>
    　　<div>
          读者管理<br />
          <iframe src="读者管理.aspx" style="width:100%;height:30em;"></iframe>
    　　</div>
  </div>
</form>
    <script>
        //获取元素
        var oBox = document.getElementById("box");
        var aBtn = oBox.getElementsByTagName("input");
        var aDiv = oBox.getElementsByTagName("div");
        //aBtn是一组元素，所以需要用到for循环
        for (var i = 0; i < aBtn.length; i++) {
            aBtn[i].index = i;
            aBtn[i].onclick = function () {
                for (var k = 0; k < aBtn.length; k++) {//先清空所有的样式
                    aBtn[k].className = '';
                    aDiv[k].style.display = 'none';
                }
                //给当前的按钮和div添加样式
                this.className = 'on';
                aDiv[this.index].style.display = 'block';
            };
        }
    </script>
</body>
</html>
