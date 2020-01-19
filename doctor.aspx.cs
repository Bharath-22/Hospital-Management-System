using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;

namespace Hospitaldb
{
    public partial class doctor : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = @"Data source=DESKTOP-8JJ1K5O\SQLEXPRESS;initial catalog=hospital;integrated Security=True";
            String query = "insert into DOCTOR values("+TextBox1.Text +",'"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"',"+TextBox5.Text+");";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            Label6.Text = "Successfully Inserted";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Receptionist.aspx");
        }
    }
}