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

public partial class cadastrar : System.Web.UI.Page
{
    protected SqlCommand cmd;
    protected SqlConnection con;
    protected SqlDataReader DR;

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {

        if (ckbConfirmar.Checked == false)
        {
            ckbConfirmar.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FF0000");
            ckbConfirmar.Font.Bold = true;

            lblNome.CssClass = "label1 active";
            lblEmail.CssClass = "label1 active";

        }
        else
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);
            con.Open();

            string strSQLPesquisar = "Select count(*) from tbUsuarioMU where emailUsuario='" + txtEmailCadastro.Text + "'";
            SqlCommand TotalUsuario = new SqlCommand(strSQLPesquisar, con);
            int total = Convert.ToInt16(TotalUsuario.ExecuteScalar());
            con.Close();

            if (total == 1)
            {
                txtEmailCadastro.BorderColor = System.Drawing.ColorTranslator.FromHtml("#FF0000");
               
                lblNome.CssClass = "label1 active";
                lblEmail.CssClass = "label1 active";
            }

            else
            {
                try
                {
                    int coins = 15;
                    con.Open();

                    string strAdd = ("Insert into tbUsuarioMU(nomeUsuario, emailUsuario, senhaUsuario, tipoUsuario, coinsUsuario) values(@nomeUsuario, @emailUsuario, @senhaUsuario, @tipoUsuario, @coinsUsuario)");
                    SqlCommand cmd = new SqlCommand(strAdd, con);

                    cmd.Parameters.AddWithValue("@nomeUsuario", txtNomeCadastro.Text);
                    cmd.Parameters.AddWithValue("@emailUsuario", txtEmailCadastro.Text);
                    cmd.Parameters.AddWithValue("@senhaUsuario", txtSenhaCadastro.Text);
                    cmd.Parameters.AddWithValue("@tipoUsuario", rdbTipoUserCadastro.Text);
                    cmd.Parameters.AddWithValue("@coinsUsuario", coins);

                    int resultado;

                    resultado = cmd.ExecuteNonQuery();

                    if (resultado == 1)
                    {
                        Response.Redirect("login.aspx");
                        txtNomeCadastro.Text = "";
                        txtEmailCadastro.Text = "";
                        txtSenhaCadastro.Text = "";
                        txtSenhaConfirmeCadastro.Text = "";
                        rdbTipoUserCadastro.SelectedIndex = 0;
                    }

                    cmd.ExecuteNonQuery();
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
        }
    }

    protected void imgLogo_Click(object sender, ImageClickEventArgs e)
    {
        lblNome.CssClass = "label1 active";
        txtNomeCadastro.Text = "Empreendedor";
        lblEmail.CssClass = "label1 active";
        txtEmailCadastro.Text = "empreendedor@gmail.com";
        lblSenha.CssClass=  "label1 active";
        txtSenhaCadastro.Text = "123";
        txtSenhaConfirmeCadastro.Text = "123";
        lblSenhaConfirme.CssClass = "label1 active";
        rdbTipoUserCadastro.SelectedIndex = 1;
        ckbConfirmar.Checked = true;
    }
}