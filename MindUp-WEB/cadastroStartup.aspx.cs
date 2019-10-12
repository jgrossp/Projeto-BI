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
using System.IO;

public partial class cadastroStartup : System.Web.UI.Page
{
    protected SqlCommand cmd;
    protected SqlConnection con;
    protected SqlDataReader DR;
    protected int idUser = 0;
    public string fileImagem;
    public string fileArq;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            MultiView1.ActiveViewIndex = 0;
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);

            string strSQLPesquisar = "Select * from tbUsuarioMU where emailUsuario='" + Session["New"] + "'";

            SqlCommand cmd = new SqlCommand(strSQLPesquisar, con);
            SqlDataReader DR;

            try
            {
                con.Open();
                DR = cmd.ExecuteReader();
                if (DR.Read())
                {
                    string idUserString = DR[0].ToString();
                    lblIdUser.Text = idUserString;
                }
            }
            catch (Exception erro)
            {
                Response.Write("<script>alert('Erro " + erro + "')</script>");
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

    protected void btnNext1_Click(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 1;
        img1.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
        img1.ImageUrl = "~/img/cadastro-startup/identificacao.png";
        img2.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF6700");
        img2.ImageUrl = "~/img/cadastro-startup/avancado-branco.png";

    }

    protected void btnNext2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        img2.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
        img2.ImageUrl = "~/img/cadastro-startup/avancado.png";
        img3.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF6700");
        img3.ImageUrl = "~/img/cadastro-startup/contato-branco.png";
    }

    protected void btnNext3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        img1.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
        img1.ImageUrl = "~/img/cadastro-startup/identificacao.png";
        img3.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
        img3.ImageUrl = "~/img/cadastro-startup/contato.png";
        img4.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF6700");
        img4.ImageUrl = "~/img/cadastro-startup/concluido-branco.png";

        txtNomeConcluir.Text = txtNomeStartup.Text;
        ddlCategoriaConcluir.SelectedIndex = ddlCategoriaStartup.SelectedIndex;
        txtSloganConcluir.Text = txtSloganStartup.Text;
        ddlAnoConcluir.SelectedIndex = ddlAnoStartup.SelectedIndex;
        txtDescricaoConcluir.Text = txtDescricaoStartup.Text;
        txtUFConcluir.Text = txtUFStartup.Text;
        txtCidadeConcluir.Text = txtCidadeStartup.Text;

        rblEstagioConcluir.SelectedIndex = rblEstagioStartup.SelectedIndex;
        txtCNPJConcluir.Text = txtCNPJStartup.Text;
        ddlNumSociosConcluir.SelectedIndex = ddlNumSociosStartup.SelectedIndex;
        ddlInvestimentoConcluir.SelectedIndex = ddlInvestimentoStartup.SelectedIndex;
        rblFaturamentoConcluir.SelectedIndex = rblFaturamentoStartup.SelectedIndex;

        txtEmailConcluir.Text = txtEmailStartup.Text;
        txtSiteConcluir.Text = txtSiteStartup.Text;
        txtVideoConcluir.Text = txtVideoStartup.Text;
        txtFacebookConcluir.Text = txtFacebookStartup.Text;
        txtTwitterConcluir.Text = txtTwitterStartup.Text;
        txtYoutubeConcluir.Text = txtYoutubeStartup.Text;
    }

    protected void btnNext4_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);
        try
        {
            if (ckbConfirmar.Checked == false)
            {
                ckbConfirmar.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FF0000");
                ckbConfirmar.Font.Bold = true;
                MultiView1.ActiveViewIndex = 3;
            }
            else
            {
                /*fileImagem = fulImgStartup.FileName.ToString();

                if (fulLogoConcluir.FileName != null || fulLogoConcluir.FileName != "")
                {
                    fileImagem = fulLogoConcluir.FileName;
                }
                else
                {
                    fileImagem = fulImgStartup.FileName;
                }

                if (fileImagem == "" || fileImagem == null)
                {
                    con.Open();
                    string strPesquisaCategoria = "select logoCategoria from tbCategoriaMU where idCategoria = " + ddlCategoriaConcluir.SelectedIndex;
                    SqlCommand cmd = new SqlCommand(strPesquisaCategoria, con);
                    fileImagem = cmd.ExecuteScalar().ToString();
                    con.Close();
                 }
                else
                {
                    fileImagem = "";
                }*/

                fileImagem = "~/infos-site/img-startup/MindUp.png";

                /*if (fulArquivoConcluir.FileName != null || fulArquivoConcluir.FileName != "")
                {
                    fileArq = fulArquivoConcluir.FileName;
                }*/

                string strAddStartup = "Insert into tbStartupMU(upsStartup, idUsuario, nomeStartup, logoStartup, anoFundStartup, cidadeStartup, UFStartup, estagioStartup, CNPJStartup, videoStartup, siteStartup, facebookStartup, twitterStartup, youtubeStartup, emailStartup, numSociosStartup, descricaoStartup, idCategoria, sloganStartup, investimentoStartup,  faturamentoStartup) values(@upsStartup, @idUsuario, @nomeStartup, @logoStartup, @anoFundStartup, @cidadeStartup, @UFStartup,  @estagioStartup, @CNPJStartup, @videoStartup, @siteStartup, @facebookStartup, @twitterStartup, @youtubeStartup, @emailStartup,  @numSociosStartup, @descricaoStartup, @idCategoria, @sloganStartup, @investimentoStartup,  @faturamentoStartup)";

                string anoSelecionado = ddlAnoConcluir.SelectedValue.ToString() == "Selecione" ? "" : ddlAnoConcluir.SelectedValue.ToString();

                SqlCommand cmdAdicionar = new SqlCommand(strAddStartup, con);

                cmdAdicionar.Parameters.AddWithValue("@upsStartup", 0);
                cmdAdicionar.Parameters.AddWithValue("@idUsuario", lblIdUser.Text);
                cmdAdicionar.Parameters.AddWithValue("@nomeStartup", txtNomeConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@logoStartup", fileImagem);
                cmdAdicionar.Parameters.AddWithValue("@anoFundStartup", anoSelecionado);
                cmdAdicionar.Parameters.AddWithValue("@cidadeStartup", txtCidadeConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@UFStartup", txtUFConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@estagioStartup", rblEstagioConcluir.SelectedValue.ToString());
                cmdAdicionar.Parameters.AddWithValue("@CNPJStartup", txtCNPJConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@videoStartup", txtVideoConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@siteStartup", txtSiteConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@facebookStartup", txtFacebookConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@twitterStartup", txtTwitterConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@youtubeStartup", txtYoutubeConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@emailStartup", txtEmailConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@numSociosStartup", ddlNumSociosConcluir.SelectedValue.ToString());
                cmdAdicionar.Parameters.AddWithValue("@descricaoStartup", txtDescricaoConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@idCategoria", ddlCategoriaConcluir.SelectedIndex);
                cmdAdicionar.Parameters.AddWithValue("@sloganStartup", txtSloganConcluir.Text);
                cmdAdicionar.Parameters.AddWithValue("@investimentoStartup", ddlInvestimentoConcluir.SelectedValue.ToString());
                cmdAdicionar.Parameters.AddWithValue("@faturamentoStartup", rblFaturamentoConcluir.SelectedValue.ToString());

                con.Open();

                int resultado;

                resultado = cmdAdicionar.ExecuteNonQuery();

                if (resultado == 1)
                {

                    txtNomeConcluir.Text = "";
                    txtDescricaoConcluir.Text = "";
                    txtSloganConcluir.Text = "";
                    ddlCategoriaConcluir.SelectedIndex = 0;
                    txtCidadeConcluir.Text = "";
                    txtUFConcluir.Text = "";
                    rblEstagioConcluir.SelectedIndex = 0;
                    txtCNPJConcluir.Text = "";
                    ddlNumSociosConcluir.SelectedIndex = 0;
                    ddlInvestimentoConcluir.SelectedIndex = 0;
                    rblFaturamentoConcluir.SelectedIndex = 0;
                    txtVideoConcluir.Text = "";
                    txtSiteConcluir.Text = "";
                    txtFacebookConcluir.Text = "";
                    txtTwitterConcluir.Text = "";
                    txtYoutubeConcluir.Text = "";
                    txtEmailConcluir.Text = "";

                    txtNomeStartup.Text = "";
                    txtDescricaoStartup.Text = "";
                    txtSloganStartup.Text = "";
                    ddlCategoriaStartup.SelectedIndex = 0;
                    txtCidadeStartup.Text = "";
                    txtUFStartup.Text = "";
                    rblEstagioStartup.SelectedIndex = 0;
                    txtCNPJStartup.Text = "";
                    ddlNumSociosStartup.SelectedIndex = 0;
                    ddlInvestimentoStartup.SelectedIndex = 0;
                    rblFaturamentoStartup.SelectedIndex = 0;
                    txtVideoStartup.Text = "";
                    txtSiteStartup.Text = "";
                    txtFacebookStartup.Text = "";
                    txtTwitterStartup.Text = "";
                    txtYoutubeStartup.Text = "";
                    txtEmailStartup.Text = "";

                    Response.Redirect("feed.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Erro não salvou')</script>");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Erro ao cadastrar StartUp: " + ex.Message + "')</script>");
        }
        finally
        {
            con.Close();
        }
    }


    protected void btnPrev2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        img2.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
        img2.ImageUrl = "~/img/cadastro-startup/avancado.png";
        img1.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF6700");
        img1.ImageUrl = "~/img/cadastro-startup/identificacao-branco.png";
    }

    protected void btnPrev3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        img3.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
        img3.ImageUrl = "~/img/cadastro-startup/contato.png";
        img2.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF6700");
        img2.ImageUrl = "~/img/cadastro-startup/avancado-branco.png";
    }

    protected void btnPrev4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        img4.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
        img4.ImageUrl = "~/img/cadastro-startup/concluido.png";
        img3.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF6700");
        img3.ImageUrl = "~/img/cadastro-startup/contato-branco.png";
    }

    protected void btnMenuSair_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("index.aspx");
    }

    protected void img1_Click(object sender, ImageClickEventArgs e)
    {
        lblNomeStartup.CssClass = "label1 active";
        txtNomeStartup.Text = "MindUp";

        ddlCategoriaStartup.SelectedIndex = 4;

        lblSloganStartup.CssClass = "label1 active";
        txtSloganStartup.Text = "Empreendedores e Investidores em um só lugar";

        ddlAnoStartup.SelectedIndex = 27;

        lblDescricaoStartup.CssClass = "label1 active";
        txtDescricaoStartup.Text = "A MindUp é uma startup que intermedia o empreendedor e o investidor, visando que pequenas empresas que possuem ideias inovadoras acreditem em seu potencial e possam receber investimentos de diferentes patamares. Além disso, também é proporcionado à startup visibilidade e feedback de  diversos usuários – através de up’s, que impulsionam o projeto. Para o investidor, a MindUp traz oportunidades de bons lucros a partir da gama de startups disponiveis para serem exploradas.";

        lblUFStartup.CssClass = "label1 active";
        txtUFStartup.Text = "SP";

        lblCidadeStartup.CssClass = "label1 active";
        txtCidadeStartup.Text = "São Paulo";

    }

    protected void img2_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        rblEstagioStartup.SelectedIndex = 1;
        ddlNumSociosStartup.SelectedIndex = 2;
        ddlInvestimentoStartup.SelectedIndex = 1;
        rblFaturamentoStartup.SelectedIndex = 0;

    }

    protected void img3_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        lblEmailStartup.CssClass = "label1 active";
        txtEmailStartup.Text = "startmindup@gmail.com";

        lblSiteStartup.CssClass = "label1 active";
        txtSiteStartup.Text = "https://www.startmindup.com";

        lblVideoStartup.CssClass = "label1 active";
        txtVideoStartup.Text = "https://www.youtube.com/";

        lblYoutubeStartup.CssClass = "label1 active";
        txtYoutubeStartup.Text = "https://www.youtube.com/";

        lblFacebookStartup.CssClass = "label1 active";
        txtFacebookStartup.Text = "https://www.facebook.com/startmindup/";

        lblTwitterStartup.CssClass = "label1 active";
        txtTwitterStartup.Text = "https://twitter.com/";
    }
}