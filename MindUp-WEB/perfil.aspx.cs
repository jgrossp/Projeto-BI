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

public partial class perfil : System.Web.UI.Page
{
    protected SqlCommand cmd;
    protected SqlConnection con;
    protected SqlDataReader DR;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            mlvConteudo.ActiveViewIndex = 0;
            btnMeuPerfil.CssClass = "btn btn-perfil btn-meu-perfil active";
            btnMeusCoins.CssClass = "btn btn-perfil btn-meu-perfil";
            btnMinhaStartup.CssClass = "btn btn-perfil btn-minha-startup";

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);

            string strSQLPesquisar = "Select * from tbUsuarioMU where emailUsuario='" + Session["New"] + "'";

            SqlCommand cmd = new SqlCommand(strSQLPesquisar, con);
            cmd.CommandType = CommandType.Text;
            SqlDataReader DR;

            try
            {
                con.Open();
                DR = cmd.ExecuteReader();
                if (DR.Read())
                {
                    lblCoin.Text = DR[14].ToString();
                    lblCoinCompra.Text = DR[14].ToString();

                    Session["idUsuario"] = DR[0].ToString();

                    lblIdPerfil.Text = "#" + DR[0].ToString();
                    lblNomePerfil.Text = DR[2].ToString();
                    lblNome.CssClass = "label1 active";

                    txtNome.Text = DR[2].ToString();
                    lblEmail.CssClass = "label1 active";
                    txtEmail.Text = DR[3].ToString();
                    txtEstado.Text = DR[5].ToString();
                    txtBiografia.Text = DR[9].ToString();
                    txtFacebook.Text = DR[10].ToString();
                    txtTwitter.Text = DR[11].ToString();
                    txtInstagram.Text = DR[12].ToString();
                    txtGitHub.Text = DR[13].ToString();
                    string tipoUsuario = DR[4].ToString();
                    switch (tipoUsuario)
                    {
                        case "Básico":
                            ddlTipoUsuario.SelectedIndex = 0;
                            break;

                        case "Empreendedor":
                            ddlTipoUsuario.SelectedIndex = 1;
                            break;

                        case "Investidor":
                            ddlTipoUsuario.SelectedIndex = 2;
                            break;
                    }

                    string sexo = DR[5].ToString();
                    if (sexo == "Feminino")
                    {
                        rblSexo.SelectedIndex = 0;
                    }
                    else if (sexo == "Masculino")
                    {
                        rblSexo.SelectedIndex = 1;
                    }

                    string urlImgPerfil = DR[6].ToString();
                    if (urlImgPerfil == "")
                    {
                        imgPerfil.ImageUrl = "~/img/perfil/perfil.png";
                    }
                    else
                    {
                        imgPerfil.ImageUrl = urlImgPerfil;
                    }

                    txtEstado.Text = DR[7].ToString();
                    if (txtEstado.Text != "")
                    {
                        lblEstado.CssClass = "label1 active";
                    }

                    txtBiografia.Text = DR[9].ToString();
                    if (txtBiografia.Text != "")
                    {
                        lblBiografia.CssClass = "label1 active";
                    }

                    txtFacebook.Text = DR[10].ToString();
                    if (txtFacebook.Text != "")
                    {
                        lblFacebook.CssClass = "label1 active";
                    }

                    txtTwitter.Text = DR[11].ToString();
                    if (txtTwitter.Text != "")
                    {
                        lblTwitter.CssClass = "label1 active";
                    }

                    txtInstagram.Text = DR[12].ToString();
                    if (txtInstagram.Text != "")
                    {
                        lblInstagram.CssClass = "label1 active";
                    }

                    txtGitHub.Text = DR[13].ToString();
                    if (txtGitHub.Text != "")
                    {
                        lblGitHub.CssClass = "label1 active";
                    }

                }
                else
                {
                    Response.Write("Nenhum registro encontrado com o Id informado!");

                }
            }



            catch (Exception ex)
            {
                Response.Write("Erro ao cadastrar usuário: " + ex.Message);
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


    protected void btnMeuPerfil_Click(object sender, EventArgs e)
    {
        mlvConteudo.ActiveViewIndex = 0;
        btnMeuPerfil.CssClass = "btn btn-perfil btn-meu-perfil active";
        btnMeusCoins.CssClass = "btn btn-perfil btn-meu-perfil";
        btnMinhaStartup.CssClass = "btn btn-perfil btn-minha-startup";
    }

    protected void btnMeusCoins_Click(object sender, EventArgs e)
    {
        mlvConteudo.ActiveViewIndex = 1;
        btnMeuPerfil.CssClass = "btn btn-perfil btn-meu-perfil";
        btnMeusCoins.CssClass = "btn btn-perfil btn-meu-perfil active";
        btnMinhaStartup.CssClass = "btn btn-perfil btn-minha-startup";
    }

    protected void btnMinhaStartup_Click(object sender, EventArgs e)
    {
        mlvConteudo.ActiveViewIndex = 2;
        btnMeuPerfil.CssClass = "btn btn-perfil btn-meu-perfil";
        btnMeusCoins.CssClass = "btn btn-perfil btn-meu-perfil";
        btnMinhaStartup.CssClass = "btn btn-perfil btn-minha-startup active";

    }

    protected void btnSalvarPerfil_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);
        try
        {
            // Verificar se o email já tem algum email desse cadastrado ou se é igual ao que está logado
            con.Open();

            // se não for um email cadastrado ou for o da sessão, verifica se o usuário está cadastrando senha
            if ((txtAntigaSenha.Text != "") || (txtNovaSenha.Text != ""))
            {
                string strSQLPesquisarSenha = "select * from tbUsuarioMU where emailUsuario ='" + Session["New"] + "' and senhaUsuario='" + txtAntigaSenha.Text + "'";
                SqlCommand cmdSenha = new SqlCommand(strSQLPesquisarSenha, con);
                SqlDataReader DR;
                DR = cmdSenha.ExecuteReader();
                // verifica se a senha antiga é igual a senha salva no banco
                if (DR.Read())
                {
                    // finalmente salva no banco com a senha nova
                    string strSQLAlterar = "UPDATE tbUsuarioMU SET nomeUsuario=@nomeusuario, senhausuario=@senhausuario, tipoUsuario=@tipoUsuario, sexoUsuario=@sexoUsuario, estadoUsuario=@estadoUsuario, paisUsuario=@paisUsuario, bioUsuario=@bioUsuario, faceUsuario=@faceUsuario, twitterUsuario=@twitterUsuario, instagramUsuario=@instagramUsuario, githubUsuario=@githubUsuario  WHERE emailUsuario=@emailSessao";

                    SqlCommand cmd = new SqlCommand(strSQLAlterar, con);

                    cmd.Parameters.AddWithValue("@nomeusuario", txtNome.Text);
                    cmd.Parameters.AddWithValue("@senhausuario", txtNovaSenha.Text);
                    cmd.Parameters.AddWithValue("@tipoUsuario", ddlTipoUsuario.SelectedValue);
                    cmd.Parameters.AddWithValue("@sexoUsuario", rblSexo.SelectedValue);
                    cmd.Parameters.AddWithValue("@estadoUsuario", txtEstado.Text);
                    cmd.Parameters.AddWithValue("@paisUsuario", txtPais.Text);
                    cmd.Parameters.AddWithValue("@bioUsuario", txtBiografia.Text);
                    cmd.Parameters.AddWithValue("@faceUsuario", txtFacebook.Text);
                    cmd.Parameters.AddWithValue("@twitterUsuario", txtTwitter.Text);
                    cmd.Parameters.AddWithValue("@instagramUsuario", txtInstagram.Text);
                    cmd.Parameters.AddWithValue("@githubUsuario", txtGitHub.Text);
                    cmd.Parameters.AddWithValue("@emailSessao", Session["New"]);

                    int i = cmd.ExecuteNonQuery();

                    if (i > 0)
                    {
                        Response.Redirect("https://www.facebook.com/");
                    }

                }
                else
                {
                    txtAntigaSenha.Text = "";
                    txtNovaSenha.Text = "";
                    Response.Write("<script>alert('Senha antiga errada!')</script>");
                }
            }
            else
            {
                // salva sem a senha, caso o usuario não mude a senha
                string strSQLAlterar = "UPDATE tbUsuarioMU SET nomeUsuario=@nomeusuario, tipoUsuario=@tipoUsuario, sexoUsuario=@sexoUsuario, estadoUsuario=@estadoUsuario, paisUsuario=@paisUsuario, bioUsuario=@bioUsuario, faceUsuario=@faceUsuario, twitterUsuario=@twitterUsuario, instagramUsuario=@instagramUsuario, githubUsuario=@githubUsuario  WHERE emailUsuario=@emailSessao";

                SqlCommand cmd = new SqlCommand(strSQLAlterar, con);

                cmd.Parameters.AddWithValue("@nomeusuario", txtNome.Text);
                cmd.Parameters.AddWithValue("@tipoUsuario", ddlTipoUsuario.SelectedValue);
                cmd.Parameters.AddWithValue("@sexoUsuario", rblSexo.SelectedValue);
                cmd.Parameters.AddWithValue("@estadoUsuario", txtEstado.Text);
                cmd.Parameters.AddWithValue("@paisUsuario", txtPais.Text);
                cmd.Parameters.AddWithValue("@bioUsuario", txtBiografia.Text);
                cmd.Parameters.AddWithValue("@faceUsuario", txtFacebook.Text);
                cmd.Parameters.AddWithValue("@twitterUsuario", txtTwitter.Text);
                cmd.Parameters.AddWithValue("@instagramUsuario", txtInstagram.Text);
                cmd.Parameters.AddWithValue("@githubUsuario", txtGitHub.Text);
                cmd.Parameters.AddWithValue("@emailSessao", Session["New"]);

                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Response.Redirect("https://www.facebook.com/");
                }

                else
                {
                    Response.Write("<script>alert('Erro ao atualizar usuário!')</script>");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("Erro: " + ex.ToString());
        }
        finally
        {
            con.Close();
        }

    }

    protected void btnCoinOutro_Click(object sender, EventArgs e)
    {
        mlvConteudo.ActiveViewIndex = 3;
    }


    protected void btnComprar_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);

        int coins = Convert.ToInt16(txtCoinCompra.Text) + Convert.ToInt16(lblCoinCompra.Text);
        string strSQLPesquisarCartao = "update tbUsuarioMU set coinsUsuario=" + coins + " where idUsuario = " + Session["idUsuario"];
        con.Open();
        SqlCommand cmd = new SqlCommand(strSQLPesquisarCartao, con);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        
    }

    protected void btnComprar15_Click(object sender, EventArgs e)
    {
        mlvConteudo.ActiveViewIndex = 3;
        txtCoinCompra.Text = "15";
        txtReaisCompra.Text = "6";

    }

    protected void btnCoins45_Click(object sender, EventArgs e)
    {
        mlvConteudo.ActiveViewIndex = 3;
        txtCoinCompra.Text = "45";
        txtReaisCompra.Text = "18";
    }

    protected void btnCoins75_Click(object sender, EventArgs e)
    {
        mlvConteudo.ActiveViewIndex = 3;
        txtCoinCompra.Text = "75";
        txtReaisCompra.Text = "30";
    }
}