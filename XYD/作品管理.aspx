<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="作品管理.aspx.cs" Inherits="xiangyuedu.作品管理" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        作品列表<br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" DeleteCommand="DELETE FROM [Book] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Book] ([Id], [name], [wirtename], [style], [jianjie]) VALUES (@Id, @name, @wirtename, @style, @jianjie)" SelectCommand="SELECT * FROM Book" UpdateCommand="UPDATE [Book] SET [name] = @name, [wirtename] = @wirtename, [style] = @style, [jianjie] = @jianjie WHERE [Id] = @Id" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="wirtename" Type="String" />
                <asp:Parameter Name="style" Type="String" />
                <asp:Parameter Name="jianjie" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="wirtename" Type="String" />
                <asp:Parameter Name="style" Type="String" />
                <asp:Parameter Name="jianjie" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" style="width:100%" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="WriterName" HeaderText="WriterName" SortExpression="WriterName" />
                <asp:BoundField DataField="Style" HeaderText="Style" SortExpression="Style" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="jianjie" HeaderText="jianjie" SortExpression="jianjie" />
                <asp:TemplateField HeaderText="删除"><ItemTemplate><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="删除"/></ItemTemplate></asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
    
    </div>
        <br />
    </form>
</body>
</html>
