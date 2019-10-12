<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feed.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Startups | MindUp</title>

    <link href="css/feed.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/searchbar.css" rel="stylesheet" />

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
    <form id="feed" runat="server">
        <!-- MENU -->
        <div>
            <nav class="navbar navbar-fixed-top nav-transparente-feed">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand invisivel" href="index.aspx">
                            <img src="img/logo/mindup_laranja.png" class="logo" />
                        </a>
                    </div>

                    <div class="collapse navbar-collapse" id="menu">
                        <ul class="nav navbar-nav navbar-left">
                            <li class="dropdown ">
                                <a href="javascript:void(0)" id="menu-toggle-wrapper" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <div id="menu-toggle"></div>
                                </a>
                                <ul class="dropdown-menu dpdMenu">
                                    <li><a href="feed.aspx" class="btn-menu">Startups</a></li>
                                    <li><a href="cadastroStartup.aspx" class="btn-menu">Cadastrar Startup</a></li>
                                    <li class="divider"></li>
                                    <li><a href="politica.aspx" class="btn-menu">Política de Privacidade</a></li>
                                    <li><a href="termos.aspx" class="btn-menu">Termos de Responsabilidade e Uso</a></li>
                                </ul>
                            </li>
                        </ul>

                        <ul class="nav navbar-nav navbar-left box-busca invisivel">
                            <li class="form-inline">
                                <div class="box-search form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="txtSearch" runat="server" CssClass="searchbar" placeholder="Busque startups"></asp:TextBox>
                                        <div class="input-group-addon input-group-addon-btnSearch">
                                            <asp:ImageButton ID="btnSearch" runat="server" CssClass="btnSearch" ImageUrl="~/img/search.png" OnClick="btnSearch_Click" />
                                        </div>
                                    </div>

                                </div>
                            </li>
                        </ul>
                        <asp:Panel ID="pnlLoginCadastrar" runat="server" Visible="false">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="entrar li_login"><a class="a_login" href="login.aspx">Login</a></li>
                                <li class="entrar li_cadastrar  "><a class="a_cadastrar btn-menu" href="cadastrar.aspx">Cadastre-se</a></li>
                            </ul>
                        </asp:Panel>
                        <asp:Panel ID="pnlPerfil" runat="server" Visible="true">
                            <ul class="nav navbar-nav navbar-right">
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:3EMIAConnectionString %>" SelectCommand="SELECT * FROM [tbStartupMU]"></asp:SqlDataSource>
                </div>
            </nav>
        </div>
        <!-- FIM MENU -->

        <!-- HEADER -->
        <header>
            <div class="container">
                <div class="content">
                    <div class="hgroup-feed">
                        <div class="logo-header">
                            <a href="index.aspx">
                                <img src="img/logo/mindup_laranja.png" />
                            </a>
                            <h1>Empreendedores e Investidores em um só lugar</h1>

                        </div>
                        <div class="form-inline">
                            <div class="box-search-feed form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="txtBuscaFeed" runat="server" CssClass="searchbar-feed" placeholder="Pesquise startups, usuários..."></asp:TextBox>

                                    <div class="input-group-addon">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CssClass="btnSearch-feed" ImageUrl="~/img/search_laranja.png" />
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="pesquisas">
                            <ul class="list-inline">
                                <li>
                                    <asp:Button ID="btnHeaderPopulares" runat="server" Text="Populares" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderAlimentacao" runat="server" Text="Alimentação" OnClick="btnHeaderAlimentacao_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderCultura" runat="server" Text="Cultura" OnClick="btnHeaderCultura_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderEducacao" runat="server" Text="Educação" OnClick="btnHeaderEducacao_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderEmpreendedorismo" runat="server" Text="Empreendedorismo" OnClick="btnHeaderEmpreendedorismo_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderEntretenimento" runat="server" Text="Entretenimento" OnClick="btnHeaderEntretenimento_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderEsportes" runat="server" Text="Esportes" OnClick="btnHeaderEsportes_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderInfantil" runat="server" Text="Infantil" OnClick="btnHeaderInfantil_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderPolitica" runat="server" Text="Política" OnClick="btnHeaderPolitica_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderSaude" runat="server" Text="Saúde" OnClick="btnHeaderSaude_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderTecnologia" runat="server" Text="Tecnologia" OnClick="btnHeaderTecnologia_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderTransporte" runat="server" Text="Transporte" OnClick="btnHeaderTransporte_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderTurismo" runat="server" Text="Turismo" OnClick="btnHeaderTurismo_Click" /></li>
                                <li>
                                    <asp:Button ID="btnHeaderOutros" runat="server" Text="Outros" OnClick="btnHeaderOutros_Click" /></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- FIM HEADER -->

        <!-- STARTUPS -->
        <div class="container startups">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" onitemcommand="reptrStartup_ItemCommand">
                    <ItemTemplate>
                        <div class="col-md-3 col-xs-6">
                            <asp:LinkButton ID="hplStartup" runat="server">
                                <div class="box-startup">
                                    <div class="img-startup">
                                        <asp:Image ID="imgLogoStartup" runat="server" ImageUrl='<%# Eval("logoStartup").ToString() %>' CssClass="img-responsive logo-startup" />

                                    </div>
                                    <div class="descricao-startup">
                                        <asp:Label ID="lblIdStartup" runat="server" Text='<%#Eval("idStartup").ToString() %>' CssClass="invisivel"></asp:Label>
                                        <span class="titulo-startup">
                                            <asp:Label ID="lblNomeStartup" runat="server" Text='<%#Eval("nomeStartup").ToString() %>'></asp:Label></span>
                                        <p>
                                            <asp:Label ID="lblDescricao" runat="server" Text='<%#(Eval("descricaoStartup").ToString().Length >=80) ? (Eval("descricaoStartup").ToString().Substring(0,80)) : (Eval("descricaoStartup").ToString()) %>'></asp:Label></p>
                                    </div>
                                </div>
                            </asp:LinkButton>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <!-- FIM STARTUPS -->

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

        $(function () {
            $(window).on("scroll", function () {
                if ($(window).scrollTop() < 80) {
                    $(".navbar").addClass("nav-transparente-feed");
                    $(".navbar-brand").addClass("invisivel");
                    $(".box-busca").addClass("invisivel");

                } else {
                    $(".navbar").removeClass("nav-transparente-feed");
                    $(".navbar-brand").removeClass("invisivel");
                    $(".box-busca").removeClass("invisivel");
                }
            });
        });
    </script>
</body>
</html>
