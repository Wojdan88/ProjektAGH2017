<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagerUzytkownikow.aspx.cs" Inherits="ManagerUzytkownikow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSourceZarejestrowani" runat="server"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSourceZarejestrowani">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
