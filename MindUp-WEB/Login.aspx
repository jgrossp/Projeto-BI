<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | MindUp</title>
        
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/searchbar.css" rel="stylesheet" />
    <link href="css/login-cadastrar.css" rel="stylesheet" />
</head>
<body class="background-login-cadastrar">
    <form id="form1" runat="server">
        <div class="background-blur">
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
            <div class="box-login">
                <div class="row">
                    <div class="col-md-5 background-orange">
                        <a href="index.aspx">
                            <img src="img/logo/Logo_Branco.png" class="logo_modal" />
                        </a>
                        <div class="heading">
                            <h3>Não tem uma conta?</h3>
                            <h5>Cadastre-se agora para conseguir visibilidade em seu negócio ou investir em grandes ideias.</h5>
                            <div class="box-button-login-cadastrar">
                                <a href="cadastrar.aspx" class="btn btnOrangeLoginCadastrar">Cadastrar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="conteudo-login">
                            <h3 class="titulo-login-cadastrar">Entrar</h3>
                            <div class="form-group">
                                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="label1" for="txtLoginEmail"></asp:Label>
                                <asp:TextBox ID="txtLoginEmail" runat="server" CssClass="textbox" TextMode="Email"></asp:TextBox>
                                <div class="error">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Campo Obrigatório" ControlToValidate="txtLoginEmail"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblSenha" runat="server" Text="Senha" CssClass="label1" for="txtSenhaLogin"></asp:Label>
                                <asp:TextBox ID="txtSenhaLogin" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
                                <div class="error">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Campo Obrigatório" ControlToValidate="txtSenhaLogin"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <asp:Panel ID="pnlAlert" runat="server" Visible="false">
                                <div class="alert alert-danger alert-dismissable alerta">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <p>Email ou senha incorretos!</p>
                                </div>
                            </asp:Panel>

                            <div class="box-button-login-cadastrar">
                                <asp:Button ID="btnEntrar" runat="server" Text="Entrar" Type="submit" class="btn btnLoginCadastro" OnClick="btnEntrar_Click1" />
                            </div>
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
