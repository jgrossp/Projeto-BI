<%@ Page Language="C#" AutoEventWireup="true" CodeFile="startup.aspx.cs" Inherits="startup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Startup | MindUp</title>

    <link href="css/style.css" rel="stylesheet" />
    <link href="css/searchbar.css" rel="stylesheet" />
    <link href="css/startup.css" rel="stylesheet" />

    <style>
        body::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
            background-color: #fff;
        }

        body::-webkit-scrollbar {
            width: 12px;
            background-color: #fff;
        }

        body::-webkit-scrollbar-thumb {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
            background-color: #27282a;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- MENU -->
        <div>
            <nav class="navbar navbar-fixed-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <ul class="navbar-brand boxLogoCategoria">
                            <li><a class="a-logo" href="index.aspx">
                                <img src="img/logo/mindup_laranja.png" class="logo " />
                            </a></li>
                            <li><span class="linha-menu-startup"></span></li>
                            <li>
                                <asp:Label ID="lblCategoriaMenu" runat="server" Text="Categoria" CssClass="lblCategoria"></asp:Label>
                            </li>
                        </ul>
                    </div>

                    <div class="collapse navbar-collapse" id="menu">
                        <ul class="nav navbar-nav navbar-left">
                            <li class="dropdown">
                                <a href="javascript:void(0)" id="menu-toggle-wrapper" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <div id="menu-toggle"></div>
                                </a>
                                <ul class="dropdown-menu dpdMenu">
                                    <li class="form-inline box-busca " id="busca-menu">
                                        <div class="box-search form-group">
                                            <div class="input-group">
                                                <asp:TextBox ID="txtBusca1" runat="server" CssClass="searchbar" placeholder="Busque startups"></asp:TextBox>

                                                <div class="input-group-addon input-group-addon-btnSearch">
                                                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="btnSearch" ImageUrl="~/img/search.png" />
                                                </div>
                                            </div>
                                        </div>

                                    </li>
                                    <li><a href="feed.aspx" class="btn-menu">Startups</a></li>
                                    <li><a href="cadastroStartup.aspx" class="btn-menu">Cadastrar Startup</a></li>
                                    <li class="divider"></li>
                                    <li><a href="politica.aspx" class="btn-menu">Política de Privacidade</a></li>
                                    <li><a href="termos.aspx" class="btn-menu">Termos de Responsabilidade e Uso</a></li>
                                </ul>
                            </li>
                        </ul>

                        <asp:Panel ID="Panel1" runat="server" Visible="true">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="form-inline box-busca" id="busca-right">
                                    <div class="box-search form-group">
                                        <div class="input-group">
                                            <asp:TextBox ID="txtBusca" runat="server" CssClass="searchbar" placeholder="Busque startups"></asp:TextBox>

                                            <div class="input-group-addon input-group-addon-btnSearch">
                                                <asp:ImageButton ID="btnBuscar" runat="server" CssClass="btnSearch" ImageUrl="~/img/search.png" />
                                            </div>
                                        </div>

                                    </div>
                                </li>

                                <!-- Perfil -->
                                <li class="li-perfil">
                                    <div class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                            <asp:Image ID="Image1" runat="server" CssClass="img-circle img-responsive imgPerfil" ImageUrl="~/img/perfil-branco.png" /><span class="caret"></span></a>
                                        <ul class="dropdown-menu dpdPerfil">
                                            <li><a href="perfil.aspx" class="btn-menu">Meu Perfil</a></li>
                                            <li><a href="compracoin.aspx" class="btn-menu">Meus Coins</a></li>
                                            <li>
                                                <a href="perfilStartup.aspx" class="btn-menu">Minha Startup</a></li>
                                            <li class="divider"></li>
                                            <li>
                                                <asp:Button ID="btnMenuSair" runat="server" Text="Sair" CssClass="btn-menu" OnClick="btnMenuSair_Click" />
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <!-- Fim Perfil -->
                            </ul>
                        </asp:Panel>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:3EMIAConnectionString %>" SelectCommand="SELECT * FROM [tbUsuarioMU]"></asp:SqlDataSource>
                </div>
            </nav>
        </div>
        <!-- FIM MENU -->

        <!-- INFORMAÇÕES -->
        <asp:Panel ID="pnlInicio" runat="server" CssClass="background-branco">
            <div class="container parte1">
                <div class="row">
                    <div class="col-md-4 box-imgLogo">
                        <asp:Image ID="imgLogo" runat="server" CssClass=" img-responsive imgLogo" />
                    </div>
                    <div class="col-md-5 box-infos">
                        <p>
                            <asp:Label ID="lblNome" runat="server" Text="" CssClass="infos-nome"></asp:Label>
                        </p>
                        <p style="padding-top: 2px;">
                            <asp:Label ID="lblEstado" runat="server" Text="" CssClass="infos-ano"></asp:Label>
                            <asp:Label ID="lblPais" runat="server" Text="Brasil" CssClass="infos-ano"></asp:Label>
                            <asp:Label ID="lblAno" runat="server" Text="" CssClass="infos-ano"></asp:Label>
                        </p>
                        <br />
                        <div class="box-infos-descricao">
                            <asp:Label ID="lblDescricao" runat="server" Text="" CssClass="infos-descricao"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="box-botoes">
                            <asp:Button ID="btnUp" runat="server" Text="dar um up" CssClass="btn btn-startup btn-up" OnClick="btnUp_Click" /><br />
                            <a href="" class="btn btn-startup btn-pagar" data-toggle="modal" data-target="#confirmacompra">Contatar</a>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>
        <!-- FIM INFORMAÇÕES -->

        <!-- SLOGAN -->
        <asp:Image ID="imgSlogan" runat="server" CssClass="background-slogan img-responsive" ImageUrl="~/img/background-cadastro.jpg" />
        <section class="slogan-box">
            <div class="content">
                <hgroup>
                    <h2 class="slogan">
                        <asp:Label ID="lblSlogan" runat="server" CssClass="lblCategoria" Text=""></asp:Label>
                    </h2>
                </hgroup>
            </div>
        </section>
        <!-- FIM SLOGAN -->

        <!-- INFORMAÇÕES 2 -->
        <asp:Panel ID="pnlInfosPagas" runat="server" Visible="true">
            <div class="background-branco">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 estagio-bar">
                            <h4><span>E</span>stágio da
                        <asp:Label ID="lblEstagio" runat="server"></asp:Label>:</h4>
                            <div class="process">
                                <div class=" row process-row nav nav-tabs">
                                    <div class="process-step col-md-3">
                                        <asp:ImageButton ID="imgIdeia" runat="server" ImageUrl="~/img/cadastro-startup/concluido-branco.png" CssClass="btn btn-circle" Enabled="False" />
                                        <p>
                                            <small>Ideia</small>
                                        </p>
                                    </div>
                                    <div class="process-step col-md-3">
                                        <asp:ImageButton ID="imgDesenvolvimento" runat="server" ImageUrl="~/img/cadastro-startup/concluido-branco.png" CssClass="btn btn-circle" Enabled="False" />
                                        <p>
                                            <small>Desenvolvimento</small>
                                        </p>
                                    </div>
                                    <div class="process-step col-md-3">
                                        <asp:ImageButton ID="imgFuncionando" runat="server" ImageUrl="~/img/cadastro-startup/concluido-branco.png" CssClass="btn btn-circle" Enabled="False" />
                                        <p>
                                            <small>Funcionando</small>
                                        </p>
                                    </div>
                                    <div class="process-step col-md-3">
                                        <asp:ImageButton ID="imgLucrando" runat="server" ImageUrl="~/img/cadastro-startup/concluido-branco.png" CssClass="btn btn-circle" Enabled="False" />
                                        <p>
                                            <small>Lucrando</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <asp:Panel ID="pnlInfosPagas1" runat="server" CssClass="infos-pagas" Visible="false">
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:Panel ID="pnlSocios" runat="server" CssClass="row">
                                            <div class="col-md-4">
                                                <img src="img/perfil-startup/socios-laranja.png" />
                                            </div>
                                            <div class="col-md-8">
                                                <div class="link">
                                                    <h4><span>S</span>ócios</h4>
                                                    <asp:Label ID="lblSocios" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlFaturamento" runat="server" CssClass="row">
                                            <div class="col-md-4">
                                                <img src="img/perfil-startup/faturamento-laranja.png" />
                                            </div>
                                            <div class="col-md-8">
                                                <div class="link">
                                                    <h4><span>F</span>aturamento</h4>
                                                    <asp:Label ID="lblFaturamento" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Panel ID="pnlCNPJ" runat="server" CssClass="row">
                                            <div class="col-md-4">
                                                <img src="img/perfil-startup/cnpj-laranja.png" />
                                            </div>
                                            <div class="col-md-8">
                                                <div class="link">
                                                    <h4>CNPJ</h4>
                                                    <asp:Label ID="lblCNPJ" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlInvestimento" runat="server" CssClass="row">
                                            <div class="col-md-4">
                                                <img src="img/perfil-startup/investimento-laranja.png" />
                                            </div>
                                            <div class="col-md-8">
                                                <div class="link">
                                                    <h4><span>I</span>nvestimento</h4>
                                                    <asp:Label ID="lblInvestimento" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </div>
                            </asp:Panel>
                        </div>
                        <div class="col-md-5 redes-sociais">
                            <asp:Label ID="lblRedesSociais" runat="server" CssClass="link"><h4><span>C</span>ontato</h4></asp:Label>

                            <ul>
                                <li>
                                    <asp:HyperLink ID="hplSite" runat="server" Visible="false">
                                        <img src="img/perfil-startup/site-laranja.png" />
                                        <asp:Label ID="lblSite" runat="server" Text="" CssClass="link"></asp:Label>
                                    </asp:HyperLink>
                                </li>
                                <li>
                                    <asp:HyperLink ID="hplEmail" runat="server" Visible="false">
                                        <img src="img/perfil-startup/email-laranja.png" />
                                        <asp:Label ID="lblEmail" runat="server" Text="" CssClass="link"></asp:Label>
                                    </asp:HyperLink>
                                </li>
                                <li>
                                    <asp:HyperLink ID="hplFacebook" runat="server">
                                        <img src="img/perfil-startup/facebook-laranja.png" />
                                        <asp:Label ID="lblFacebook" runat="server" Text="" CssClass="link"></asp:Label>
                                    </asp:HyperLink>
                                </li>
                                <li>
                                    <asp:HyperLink ID="hplTwitter" runat="server">
                                        <img src="img/perfil-startup/twitter-laranja.png" />
                                        <asp:Label ID="lblTwitter" runat="server" Text="" CssClass="link"></asp:Label>
                                    </asp:HyperLink>
                                </li>
                                <li>
                                    <asp:HyperLink ID="hplYoutube" runat="server">
                                        <img src="img/perfil-startup/youtube-laranja.png" />
                                        <asp:Label ID="lblYoutube" runat="server" Text="" CssClass="link"></asp:Label>
                                    </asp:HyperLink>
                                </li>

                                <li>
                                    <asp:HyperLink ID="hplVideo" runat="server" Visible="false">
                                        <img src="img/perfil-startup/video-laranja.png" />
                                        <asp:Label ID="lblVideo" runat="server" Text="" CssClass="link"></asp:Label>
                                    </asp:HyperLink>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>
        <!-- FIM INFORMAÇÕES 2 -->

        <!-- COMPRAR INFORMAÇÕES -->

        <asp:Panel ID="pnlComprar" runat="server" CssClass="box-comprar-infos">
            <div class="comprar-infos">
                <p>
                    Para mais informações:
                <a href="" class="btn-comprar-infos" data-toggle="modal" data-target="#confirmacompra">Utilize $15 coins</a>
                </p>
            </div>
        </asp:Panel>
        <!-- FIM COMPRAR INFORMAÇÕES -->

        <!-- MODAL CONFIRMAR COMPRA -->

        <div class="modal fade" id="confirmacompra" tabindex="-1" role="dialog" aria-labelledby="confirmacompra">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4>Confirmação da compra</h4>
                        <br />
                        <br />
                        <p>Deseja finalizar a compra?</p>
                        <br />
                        <br />
                        <div style="width: 100%; text-align: right;">
                            <button type="button" class="btnSalvarPerfil" data-dismiss="modal">NÃO</button>&nbsp&nbsp&nbsp&nbsp
                                                    <asp:Button ID="Button1" runat="server" Text="SIM" CssClass="btnSalvarPerfil" OnClick="btnComprar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- FIM MODAL CONFIRMAR COMPRA -->

        <!-- FOOTER -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer-logo">
                            <img src="img/logo/Logo_Laranja.png" class="footer-logo-lamp" /><img src="img/logo/mindup_laranja.png" class="footer-logo-text" />
                        </div>
                        <p class="descricao">
                            A MindUp ajuda você a crescer seu próprio negócio conseguindo visibilidade, investimentos e feedback de diversos usuários. 
                        </p>
                        <div class="footer-redes-sociais">
                            <ul>
                                <li class="footer-siga">siga-nos</li>
                                <li class="footer-box-icon-rede-social"><a href="https://goo.gl/tMkexM"><i class="fa fa-facebook footer-icon-rede-social" aria-hidden="true"></i></a></li>
                                <li class="footer-box-icon-rede-social"><a href="mailto:startmindup@gmail.com"><i class="fa fa-envelope-o footer-icon-rede-social" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="row links">
                            <div class="col-md-3">
                                <ul>
                                    <li class="footer-titulo">Páginas</li>
                                    <li><a href="index.aspx">Home</a></li>
                                    <li><a href="feed.aspx">Startups</a></li>
                                    <li><a href="cadastroStartup.aspx">Cadastrar Startup</a></li>
                                    <li><a href="comprar-coins.aspx">Comprar Coins</a></li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <ul>
                                            <li class="footer-titulo">Categorias</li>
                                            <li>
                                                <asp:Button ID="btnFooterPopulares" runat="server" Text="Populares" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterAlimentacao" runat="server" Text="Alimentação" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterCultura" runat="server" Text="Cultura" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterEducacao" runat="server" Text="Educação" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterEmpreendedorismo" runat="server" Text="Empreendedorismo" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterEntretenimento" runat="server" Text="Entretenimento" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterEsportes" runat="server" Text="Esportes" /></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-xs-6">
                                        <ul>
                                            <li class="footer-espaco"></li>

                                            <li>
                                                <asp:Button ID="btnFooterInfantil" runat="server" Text="Infantil" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterPolitica" runat="server" Text="Política" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterSaude" runat="server" Text="Saúde" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterTecnologia" runat="server" Text="Tecnologia" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterTransporte" runat="server" Text="Transporte" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterTurismo" runat="server" Text="Turismo" /></li>
                                            <li>
                                                <asp:Button ID="btnFooterOutros" runat="server" Text="Outros" /></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <ul>
                                    <li class="footer-titulo">Legais</li>
                                    <li><a href="politica.aspx">Política de Privacidade</a></li>
                                    <li><a href="termos.aspx">Termos de Responsabilidade e Uso</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer-direitos">
                            <span class="footer-direitos-texto">MindUp 2017. Todos os direitos reservados.</span>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- FIM FOOTER -->

    </form>


    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script>
        $('#menu-toggle-wrapper').click(function () {
            $(this).toggleClass('active');
        });
    </script>
</body>
</html>
