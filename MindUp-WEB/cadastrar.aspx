<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadastrar.aspx.cs" Inherits="cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastrar | MindUp</title>

    <link href="css/style.css" rel="stylesheet" />
    <link href="css/searchbar.css" rel="stylesheet" />
    <link href="css/login-cadastrar.css" rel="stylesheet" />

    <style>
        .txt{
            margin-bottom: 22px;
        }
    </style>
</head>
<body class="background-login-cadastrar">
    <form id="form1" runat="server" class="background-blur">
        <!-- MENU -->
        <div>
            <nav class="navbar navbar-fixed-top" style="background-color: transparent;">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand logo" href="index.aspx">
                            <img src="img/logo/mindup_laranja.png" class="logo" style="height: 43px;" />
                        </a>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:3EMIAConnectionString %>" SelectCommand="SELECT * FROM [tbUsuarioMU]"></asp:SqlDataSource>
                </div>
            </nav>
        </div>
        <!-- FIM MENU -->
        <div class="box-cadastrar">
            <div class="row">
                <div class="col-md-5 background-orange">
                    <a href="index.aspx">
                        <asp:ImageButton ID="imgLogo" runat="server" CssClass="logo_modal" ImageUrl="~/img/logo/Logo_Branco.png" OnClick="imgLogo_Click" />
                    </a>
                    <div class="heading">
                        <h3>Já tem uma conta?</h3>
                        <h5>Entre agora para manter-se conectado a maior rede de startups do Brasil</h5>
                        <div class="box-button-login-cadastrar">
                            <a href="Login.aspx" class="btn btnOrangeLoginCadastrar">Entrar</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="conteudo-cadastrar">
                        <h3 class="titulo-login-cadastrar">Cadastro</h3>
                        <div class="form-group">
                            <asp:Label ID="lblNome" runat="server" Text="Nome Completo" CssClass="label1" for="txtNomeCadastro"></asp:Label>
                            <asp:TextBox ID="txtNomeCadastro" runat="server" CssClass="textbox txt" MaxLength="50"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="label1" for="txtEmailCadastro"></asp:Label>
                            <asp:TextBox ID="txtEmailCadastro" runat="server" CssClass="textbox txt" TextMode="Email" MaxLength="50"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblSenha" runat="server" Text="Senha" CssClass="label1" for="txtSenhaCadastro"></asp:Label>
                            <asp:TextBox ID="txtSenhaCadastro" runat="server" CssClass="textbox txt" TextMode="Password" MaxLength="20"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblSenhaConfirme" runat="server" Text="Confirme sua senha" CssClass="label1" for="txtSenhaConfirmeCadastro"></asp:Label>
                            <asp:TextBox ID="txtSenhaConfirmeCadastro" runat="server" CssClass="textbox txt" TextMode="Password" MaxLength="20"></asp:TextBox>
                        </div>

                        <div class=" form-group radioGroup">
                            <label id="lblRadioButton" class="label2">selecione o seu tipo de usuário:</label>
                            <asp:RadioButtonList ID="rdbTipoUserCadastro" runat="server" RepeatDirection="Horizontal" CssClass="radiobutton-part2 radio radio-inline radioButton">
                                <asp:ListItem>Básico</asp:ListItem>
                                <asp:ListItem>Empreendedor</asp:ListItem>
                                <asp:ListItem>Investidor</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>

                        <div class="form-group ckbConfirmar">
                            <asp:CheckBox ID="ckbConfirmar" runat="server" CssClass="checkbox " Text="Eu li e concordo com os Termos de Uso e Responsabilidade da MindUp." />
                        </div>

                        <div class="box-button-login-cadastrar">
                            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" Type="submit" class="btn btnLoginCadastro" OnClick="btnCadastrar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/login.js"></script>
    <script>
        $(function () {
            $(window).on("scroll", function () {
                if ($(window).scrollTop() < 100) {
                    $(".navbar").addClass("nav-transparent");
                } else {
                    $(".navbar").removeClass("nav-transparent");
                }
            });
        });
    </script>
</body>
</html>
