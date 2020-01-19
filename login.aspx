<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Hospitaldb.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hospital DBMS</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="background-color: #0066FF">Hospital Management System</h1>
        </div>
        <hr />
        <asp:Label ID="Label1" runat="server" Height="52px" style="margin-left: 505px" Text="Login" Width="279px" Font-Size="20pt"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Height="40px" style="margin-left: 390px;" Text="UserName :" Width="188px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="216px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Height="40px" style="margin-left: 390px" Text="Password  :" Width="188px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="216px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="50px" style="margin-left: 480px" Text="Login" Width="200px" OnClick="Button1_Click" />
        <p>
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
