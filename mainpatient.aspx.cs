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
    public partial class mainpatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = @"Data source=DESKTOP-8JJ1K5O\SQLEXPRESS;initial catalog=hospital;integrated Security=True";
            String query = "select * from APPOINTMENT where P_ID =" + TextBox1.Text + ";";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            Label2.Text = "Search Successful";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String mycon1 = @"Data source=DESKTOP-8JJ1K5O\SQLEXPRESS;initial catalog=hospital;integrated Security=True";
            String query1 = "select D_ID,D_NAME,DOC_PHNO,CABIN_NO from DOCTOR where D_ID in(SELECT D_ID FROM APPOINTMENT WHERE P_ID=" + TextBox1.Text + ");";
            SqlConnection con1 = new SqlConnection(mycon1);
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = query1;
            cmd1.Connection = con1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            GridView2.DataSource = ds1;
            GridView2.DataBind();
            con1.Close();
            Label2.Text = "Search Successful";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String mycon3 = @"Data source=DESKTOP-8JJ1K5O\SQLEXPRESS;initial catalog=hospital;integrated Security=True";
            String query3 = "select * from PRESCRIPTION where PR_ID=(select PR_ID from PATIENT where P_ID ="+TextBox1.Text+");";
            SqlConnection con3 = new SqlConnection(mycon3);
            SqlCommand cmd3 = new SqlCommand();
            cmd3.CommandText = query3;
            cmd3.Connection = con3;
            SqlDataAdapter da3 = new SqlDataAdapter();
            da3.SelectCommand = cmd3;
            DataSet ds3 = new DataSet();
            da3.Fill(ds3);
            GridView3.DataSource = ds3;
            GridView3.DataBind();
            con3.Close();
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("startpage.aspx");
        }
    }
}