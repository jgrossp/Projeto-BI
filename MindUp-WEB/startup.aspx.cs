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

public partial class startup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<script>console.log('startup, " + Session["idStartup"] + "')</script>");
        if (Session["New"] != null)
        {
            int idCategoria = 0;
            int idStartup = Convert.ToInt32(Session["idStartup"]);
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);

            string strPesquisarStartup = "select * from tbStartupMU where idStartup = " + idStartup;
            SqlCommand cmd = new SqlCommand(strPesquisarStartup, con);

            SqlDataReader DR;

            try
            {
                con.Open();
                DR = cmd.ExecuteReader();
                if (DR.Read())
                {
                    idCategoria = Convert.ToInt32(DR[7]);
                    lblNome.Text = DR[3].ToString();
                    imgLogo.ImageUrl = DR[4].ToString();
                    lblSlogan.Text = DR[5].ToString(); 
                    lblDescricao.Text = ((DR[6].ToString().Length >= 250) ? (DR[6].ToString().Substring(0, 250) + "...") : DR[6].ToString());
                    lblAno.Text = (DR[8].ToString() == "Selecione" ? "" : ("(" + DR[8].ToString() + ")"));
                    lblEstado.Text = ((DR[10].ToString().Length == 0) ? "" : (DR[10].ToString() + " - "));
                    string estagio = DR[11].ToString();
                    switch (estagio)
                    {
                        case "Ideia":
                            imgIdeia.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF6700");
                            break;

                        case "Desenvolvimento":
                            imgDesenvolvimento.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF6700");
                            break;

                        case "Funcionando":
                            imgFuncionando.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF6700");
                            break;

                        case "Lucrando":
                            imgLucrando.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF6700");
                            break;
                    }

                    lblCNPJ.Text = DR[12].ToString();
                    if (lblCNPJ.Text.Length == 0)
                    {
                        pnlCNPJ.Visible = false;
                    }
                    lblSocios.Text = DR[13].ToString();
                    lblInvestimento.Text = DR[14].ToString();
                    lblFaturamento.Text = DR[15].ToString();

                    lblEmail.Text = DR[17].ToString();
                    hplEmail.NavigateUrl = "mailTo:" + lblEmail.Text;

                    lblVideo.Text = DR[18].ToString();
                    hplVideo.NavigateUrl = lblVideo.Text;
                    if (lblVideo.Text.Length == 0)
                    {
                        hplVideo.Visible = false;
                    }

                    lblSite.Text = DR[19].ToString();
                    hplSite.NavigateUrl = lblSite.Text;
                    if (lblSite.Text.Length == 0)
                    {
                        hplSite.Visible = false;
                    }

                    lblFacebook.Text = DR[20].ToString();
                    hplFacebook.NavigateUrl = lblFacebook.Text;
                    if (lblFacebook.Text.Length == 0)
                    {
                        hplFacebook.Visible = false;
                    }

                    lblTwitter.Text = DR[21].ToString();
                    hplTwitter.NavigateUrl = lblTwitter.Text;
                    if (lblTwitter.Text.Length == 0)
                    {
                        hplTwitter.Visible = false;
                    }

                    lblYoutube.Text = DR[22].ToString();
                    hplYoutube.NavigateUrl = lblYoutube.Text;
                    if (lblYoutube.Text.Length == 0)
                    {
                        hplYoutube.Visible = false;
                    }
                }
                else
                {
                    Response.Redirect("feed.aspx");
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('Erro: " + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

            try
            {
                string strPesquisarCategoria = "select * from tbCategoriaMU where idCategoria = " + idCategoria;
                SqlCommand cmdCategoria = new SqlCommand(strPesquisarCategoria, con);

                SqlDataReader DRCategoria;
                con.Open();
                DRCategoria = cmdCategoria.ExecuteReader();
                if (DRCategoria.Read())
                {
                    lblCategoriaMenu.Text = DRCategoria[1].ToString();
                    imgSlogan.ImageUrl = DRCategoria[3].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Erro: " + ex.Message + "')</script>");
            }
            finally
            {
                con.Close();
            }

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

    protected void btnComprar_Click(object sender, EventArgs e)
    {
        pnlComprar.Visible = false;
        pnlInfosPagas1.Visible = true;
        hplSite.Visible = true;
        hplEmail.Visible = true;
        hplVideo.Visible = true;
    }

    protected void btnUp_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);
        string strPesquisaUps = "select upsStartup from tbStartupMU where idStartup = " + Session["idStartup"];
        SqlCommand cmdUp = new SqlCommand(strPesquisaUps, con);
        int ups = 0;



        try
        {
            con.Open();
            ups = Convert.ToInt32(cmdUp.ExecuteScalar());
            
            if (btnUp.CssClass == "btn btn-startup btn-up ativo")
            {
                ups = ups - 1;
                btnUp.CssClass = "btn btn-startup btn-up desativo";
            }
            else
            {
                ups = ups + 1;
                btnUp.CssClass = "btn btn-startup btn-up ativo";
            }
            Response.Write("<script>console.log('" + (ups).ToString() + "')</script>");

            string strInserirUps = "update tbStartupMU set upsStartup=" + ups + " where idStartup = " + Session["idStartup"];
            SqlCommand cmdInserirUp = new SqlCommand(strInserirUps, con);
            int i = cmdInserirUp.ExecuteNonQuery();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Erro: " + ex.Message + "')</script>");
        }
        finally
        {
            con.Close();
        }
    }

    protected void btnContato_Click(object sender, EventArgs e)
    {

    }

}