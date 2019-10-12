﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Resources;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

public partial class Home : System.Web.UI.Page
{
    protected SqlCommand cmd;
    protected SqlConnection con;
    protected SqlDataReader DR;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            pnlLoginCadastrar.Visible = false;
            pnlPerfil.Visible = true;
            pnlBusca.Visible = true;
        }
        else
        {
            pnlLoginCadastrar.Visible = true;
            pnlPerfil.Visible = false;
            pnlBusca.Visible = false;

        }
    }


    protected void btnMenuSair_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("index.aspx");
    }
}



