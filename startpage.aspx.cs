﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospitaldb
{
    public partial class startpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("logindoc.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginpat.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}