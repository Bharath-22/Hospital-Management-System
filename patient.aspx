<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient.aspx.cs" Inherits="Hospitaldb.patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="background-color: #0066FF">Add Patient<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 943px" Text="Back to Main Page" Width="183px" />
            </h1>
            <p>&nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server" Height="30px" style="margin-left: 220px" Text="Patient ID" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Height="30px" style="margin-left: 220px" Text="Patient Name" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Height="30px" style="margin-left: 220px" Text="Age" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Height="30px" style="margin-left: 220px" Text="Guardian Ph.No" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label5" runat="server" Height="30px" style="margin-left: 220px" Text="Gender" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label6" runat="server" Height="30px" style="margin-left: 220px" Text="Room_No" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label7" runat="server" Height="30px" style="margin-left: 220px" Text="Prescript ID" Width="354px"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" Width="256px"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 395px" Text="Submit" Width="207px" />
            </p>
            <p>
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </p>
        </div>
        <div>
            <h1 style="background-color: #3366FF">Veiw Patients</h1>
            <p>&nbsp;</p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="P_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="197px" Width="748px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="P_ID" HeaderText="Patient ID" ReadOnly="True" SortExpression="P_ID" />
                        <asp:BoundField DataField="P_NAME" HeaderText="Patient Name" SortExpression="P_NAME" />
                        <asp:BoundField DataField="AGE" HeaderText="Age" SortExpression="AGE" />
                        <asp:BoundField DataField="GUARDIAN_PHNO" HeaderText="Guardian PhNo" SortExpression="GUARDIAN_PHNO" />
                        <asp:BoundField DataField="GENDER" HeaderText="Gender" SortExpression="GENDER" />
                        <asp:BoundField DataField="ROOM_NO" HeaderText="Room No" SortExpression="ROOM_NO" />
                        <asp:BoundField DataField="PR_ID" HeaderText="Prescript ID" SortExpression="PR_ID" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hospitalConnectionString %>" SelectCommand="SELECT * FROM [PATIENT]"></asp:SqlDataSource>
                </p>
        </div>
    </form>
</body>
</html>
