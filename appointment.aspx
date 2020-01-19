<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="Hospitaldb.appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="background-color: #0000FF">View Appointment</h1>

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 1121px" Text="Back to Main Page" Width="213px" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="APP_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="252px" Width="687px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="APP_ID" HeaderText="APP_ID" ReadOnly="True" SortExpression="APP_ID" />
                    <asp:BoundField DataField="P_ID" HeaderText="P_ID" SortExpression="P_ID" />
                    <asp:BoundField DataField="D_ID" HeaderText="D_ID" SortExpression="D_ID" />
                    <asp:BoundField DataField="APP_DATE" HeaderText="APP_DATE" SortExpression="APP_DATE" />
                    <asp:BoundField DataField="APP_TIME" HeaderText="APP_TIME" SortExpression="APP_TIME" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hospitalConnectionString %>" SelectCommand="SELECT * FROM [APPOINTMENT]"></asp:SqlDataSource>
        </div>
        <div>
            <h1 style="background-color: #0066FF">Add Appointment</h1>
            <p>&nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server" Height="30px" style="margin-left: 220px" Text="Appointment ID" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Height="30px" style="margin-left: 220px" Text="Patient ID" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Height="30px" style="margin-left: 220px" Text="Doctor ID" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Height="30px" style="margin-left: 220px" Text="Appointment Date" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label5" runat="server" Height="30px" style="margin-left: 220px" Text="Appointment Time" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 395px" Text="Submit" Width="207px" />
            </p>
        </div>
        <asp:Label ID="Label6" runat="server"></asp:Label>
    </form>
</body>
</html>
