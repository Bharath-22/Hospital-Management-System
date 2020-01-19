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
    public partial class maindoctor : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = @"Data source=DESKTOP-8JJ1K5O\SQLEXPRESS;initial catalog=hospital;integrated Security=True";
            String query = "select * from APPOINTMENT where D_ID =" + TextBox1.Text + ";";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource=ds;
            GridView1.DataBind();
            con.Close();
            Label2.Text = "Search Successful";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String mycon1 = @"Data source=DESKTOP-8JJ1K5O\SQLEXPRESS;initial catalog=hospital;integrated Security=True";
            String query1 = "select * from PRESCRIPTION;";
            SqlConnection con = new SqlConnection(mycon1);
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = query1;
            cmd1.Connection = con;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            GridView2.DataSource = ds1;
            GridView2.DataBind();
            con.Close();
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataSet ds2 = new DataSet();
            SqlConnection con2;
            con2 = new SqlConnection(@"Data source=DESKTOP-8JJ1K5O\SQLEXPRESS;initial catalog=hospital;integrated Security=True");
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.CommandText = "insertprescription";
            cmd2.Parameters.Add(new SqlParameter("@prescrptionid", SqlDbType.Int)).Value = TextBox2.Text;
            cmd2.Parameters.Add(new SqlParameter("@medicinename", SqlDbType.VarChar)).Value = TextBox3.Text;
            cmd2.Connection = con2;
            //SqlParameter sp1 = new SqlParameter();
            //SqlParameter sp2 = new SqlParameter();
            SqlDataAdapter da2 = new SqlDataAdapter();
            da2.SelectCommand = cmd2;
            //cmd2 = new SqlCommand("insertprescription", con2);
            da2.Fill(ds2);
            con2.Open();
            //cmd2.BeginExecuteNonQuery();
            con2.Close();
            Label5.Text = "Inserted successfully by stored procedure";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String mycon3 = @"Data source=DESKTOP-8JJ1K5O\SQLEXPRESS;initial catalog=hospital;integrated Security=True";
            String query3 = "update PATIENT set PR_ID=" + TextBox5.Text + "where P_ID=" + TextBox4.Text + ";";
            SqlConnection con3 = new SqlConnection(mycon3);
            SqlCommand cmd3 = new SqlCommand();
            cmd3.CommandText = query3;
            cmd3.Connection = con3;
            SqlDataAdapter da3 = new SqlDataAdapter();
            da3.SelectCommand = cmd3;
            DataSet ds3 = new DataSet();
            da3.Fill(ds3);
            
            con3.Close();
            Label8.Text = "Updated Successfully";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("startpage.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            String mycon4 = @"Data source=DESKTOP-8JJ1K5O\SQLEXPRESS;initial catalog=hospital;integrated Security=True";
            String query4 = "Delete from PRESCRIPTION where PR_ID=" + TextBox2.Text + ";";
            SqlConnection con4 = new SqlConnection(mycon4);
            SqlCommand cmd4 = new SqlCommand();
            cmd4.CommandText = query4;
            cmd4.Connection = con4;
            SqlDataAdapter da4 = new SqlDataAdapter();
            da4.SelectCommand = cmd4;
            DataSet ds4 = new DataSet();
            da4.Fill(ds4);

            con4.Close();
            Label5.Text = "Deleted Successfully";
        }
    }
}