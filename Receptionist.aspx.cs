using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospitaldb
{
    public partial class Receptionist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logout7_Click(object sender, EventArgs e)
        {
            Response.Redirect("startpage.aspx");
        }

        protected void doctor1_Click(object sender, EventArgs e)
        {
            Response.Redirect("doctor.aspx");
        }

        protected void patient3_Click(object sender, EventArgs e)
        {
            Response.Redirect("patient.aspx");
        }

        protected void appointment2_Click(object sender, EventArgs e)
        {
            Response.Redirect("appointment.aspx");
        }

        protected void room4_Click(object sender, EventArgs e)
        {
            Response.Redirect("room.aspx");
        }

        protected void nurse5_Click(object sender, EventArgs e)
        {
            Response.Redirect("nurse.aspx");
        }

        protected void prescription6_Click(object sender, EventArgs e)
        {
            Response.Redirect("prescription.aspx");
        }
    }
}