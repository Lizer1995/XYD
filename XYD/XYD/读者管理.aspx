<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="读者管理.aspx.cs" Inherits="xiangyuedu.读者管理" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XYD %>" DeleteCommand="DELETE FROM [Reader] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Reader] ([Id], [name], [password]) VALUES (@Id, @name, @password)" SelectCommand="SELECT * FROM Reader" UpdateCommand="UPDATE [Reader] SET [name] = @name, [password] = @password WHERE [Id] = @Id" ProviderName="<%$ ConnectionStrings:XYD.ProviderName %>">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:TemplateField HeaderText="删除"><ItemTemplate><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="删除"/></ItemTemplate></asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
