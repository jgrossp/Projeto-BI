using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Resources;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected SqlCommand cmd;
    protected SqlConnection con;
    protected SqlDataReader DR;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEntrar_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);


        string strBusca = "select * from tbUsuarioMU where emailUsuario ='" + txtLoginEmail.Text + "' and senhaUsuario='" + txtSenhaLogin.Text + "'";

        string emailUsuario = txtLoginEmail.Text;

        SqlCommand cmd = new SqlCommand(strBusca, con);
        SqlDataReader DR;


        try
        {
            con.Open();
            DR = cmd.ExecuteReader();
            if (DR.Read())
            {
                Session["New"] = emailUsuario;
                Response.Redirect("feed.aspx");
                txtLoginEmail.Text = "";
                txtSenhaLogin.Text = "";
            }

            else
            {
                pnlAlert.Visible = true;
                lblEmail.CssClass = "label1 active";
                txtSenhaLogin.Text = "";
            }
        }
        
        catch (Exception)
        {
            pnlAlert.Visible = true;
            txtSenhaLogin.Text = "";
            lblEmail.CssClass = "label1 active";
        }

        finally
        {
            con.Close();
        }

    }
}