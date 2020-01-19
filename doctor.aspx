<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor.aspx.cs" Inherits="Hospitaldb.doctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="background-color: #0000FF">Add Doctor<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 943px" Text="Back to Main Page" Width="183px" />
            </h1>
            <p>
                <asp:Label ID="Label1" runat="server" Height="30px" style="margin-left: 220px" Text="Doctor ID" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Height="30px" style="margin-left: 220px" Text="Doctor Name" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Height="30px" style="margin-left: 220px" Text="Doctor Ph.No" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Height="30px" style="margin-left: 220px" Text="Specialization" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label5" runat="server" Height="30px" style="margin-left: 220px" Text="Cabin No" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 395px" Text="Submit" Width="207px" />
            </p>
            <p>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </p>
        </div>
        <div>
            <h1 style="background-color: #0099FF">View Doctors in Hospital</h1>
            <p>&nbsp;</p>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="D_ID" DataSourceID="SqlDataSource1" Height="172px" Width="671px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="D_ID" HeaderText="Doctor_ID" ReadOnly="True" SortExpression="D_ID" />
                <asp:BoundField DataField="D_NAME" HeaderText="Doc_Name" SortExpression="D_NAME" />
                <asp:BoundField DataField="DOC_PHNO" HeaderText="Doc_PhNo" SortExpression="DOC_PHNO" />
                <asp:BoundField DataField="SPECIALIZATION" HeaderText="Specialization" SortExpression="SPECIALIZATION" />
                <asp:BoundField DataField="CABIN_NO" HeaderText="Cabin_No" SortExpression="CABIN_NO" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hospitalConnectionString %>" SelectCommand="SELECT * FROM [DOCTOR]"></asp:SqlDataSource>
    </form>
</body>
</html>
