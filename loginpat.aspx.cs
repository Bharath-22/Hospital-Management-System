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
    public partial class loginpat : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data source=DESKTOP-8JJ1K5O\SQLEXPRESS;initial catalog=hospital;integrated Security=True";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from loginpat where username3='" + TextBox1.Text + "'and password3='" + TextBox2.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "loginpat");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label4.Text = "login successful";
                Response.Redirect("mainpatient.aspx");
            }
            else
            {
                Label4.Text = "error";
            }
        }
    }
}