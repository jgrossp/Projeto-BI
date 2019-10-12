using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
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
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void btnMenuSair_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("index.aspx");
    }

    protected void reptrStartup_ItemCommand(object sender, RepeaterCommandEventArgs e)
    {
        Label lblStartup = e.Item.FindControl("lblIdStartup") as Label;
        string idStartup = lblStartup.Text;
        Session["idStartup"] = idStartup;
        Response.Write("<script>console.log('feed, " + Session["idStartup"] + "')</script>");
        Response.Redirect("startup.aspx");

    }
    protected void btnHeaderAlimentacao_Click(object sender, EventArgs e)
    {
        string strAlimentacao = "select * from tbStartupMU where idCategoria = 1";

        SqlDataSource1.SelectCommand = strAlimentacao;
    }



    protected void btnHeaderCultura_Click(object sender, EventArgs e)
    {
        string strCultura = "select * from tbStartupMU where idCategoria = 2";

        SqlDataSource1.SelectCommand = strCultura;
    }

    protected void btnHeaderEducacao_Click(object sender, EventArgs e)
    {
        string strEducacao = "select * from tbStartupMU where idCategoria = 3";

        SqlDataSource1.SelectCommand = strEducacao;
    }



    protected void btnHeaderEmpreendedorismo_Click(object sender, EventArgs e)
    {
        string strEmpreendedorismo = "select * from tbStartupMU where idCategoria = 4";

        SqlDataSource1.SelectCommand = strEmpreendedorismo;
    }

    protected void btnHeaderEntretenimento_Click(object sender, EventArgs e)
    {
        string strEntretenimento = "select * from tbStartupMU where idCategoria = 5";

        SqlDataSource1.SelectCommand = strEntretenimento;
    }



    protected void btnHeaderEsportes_Click(object sender, EventArgs e)
    {
        string strEsportes = "select * from tbStartupMU where idCategoria = 6";

        SqlDataSource1.SelectCommand = strEsportes;
    }

    protected void btnHeaderInfantil_Click(object sender, EventArgs e)
    {
        string strInfantil = "select * from tbStartupMU where idCategoria = 7";

        SqlDataSource1.SelectCommand = strInfantil;
    }



    protected void btnHeaderPolitica_Click(object sender, EventArgs e)
    {
        string strPolitica = "select * from tbStartupMU where idCategoria = 8";

        SqlDataSource1.SelectCommand = strPolitica;
    }


    protected void btnHeaderSaude_Click(object sender, EventArgs e)
    {
        string strSaude = "select * from tbStartupMU where idCategoria = 9";

        SqlDataSource1.SelectCommand = strSaude;
    }

    protected void btnHeaderTecnologia_Click(object sender, EventArgs e)
    {
        string strTecnologia = "select * from tbStartupMU where idCategoria = 10";

        SqlDataSource1.SelectCommand = strTecnologia;
    }

    protected void btnHeaderTransporte_Click(object sender, EventArgs e)
    {
        string strTransporte = "select * from tbStartupMU where idCategoria = 11";

        SqlDataSource1.SelectCommand = strTransporte;
    }

    protected void btnHeaderTurismo_Click(object sender, EventArgs e)
    {
        string strTurismo = "select * from tbStartupMU where idCategoria = 12";

        SqlDataSource1.SelectCommand = strTurismo;
    }

    protected void btnHeaderOutros_Click(object sender, EventArgs e)
    {
        string strOutros = "select * from tbStartupMU where idCategoria = 13";

        SqlDataSource1.SelectCommand = strOutros;
    }

    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        string strSearch = "select * from tbStartupMU where nomeStartup = " + txtSearch.Text;

        SqlDataSource1.SelectCommand = strSearch;
    }
}