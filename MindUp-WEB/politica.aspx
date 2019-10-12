<%@ Page Language="C#" AutoEventWireup="true" CodeFile="politica.aspx.cs" Inherits="politica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MindUp | Política de Privacidade</title>

    <link href="css/style.css" rel="stylesheet" />
    <link href="css/termos.css" rel="stylesheet" />
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
    <form id="form1" runat="server">
        <!-- MENU -->
        <div>
            <nav class="navbar navbar-fixed-top nav-transparent">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand invisivel" href="index.aspx">
                            <img src="img/logo/mindup_laranja.png" class="logo" />
                        </a>
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

                        <asp:Panel ID="pnlBusca" runat="server" Visible="true">
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
                            </ul>
                        </asp:Panel>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:3EMIAConnectionString %>" SelectCommand="SELECT * FROM [tbUsuarioMU]"></asp:SqlDataSource>
                </div>
            </nav>
        </div>
        <!-- FIM MENU -->
        <!-- HEADER -->
        <header>
            <div class="container">
                <div class="content">
                    <div class="hgroup-politica">
                        <h1 class="titulo-termos">Política de Privacidade</h1>
                        <div class="linha-titulo"></div>
                    </div>
                </div>
            </div>
        </header>
        <!-- FIM HEADER -->

        <section class="bg-cinza">
            <div class="termos">
                <p>
                    Essa é a política de privacidade do site www.startmindup.com.br ("Site" ou "MindUp"), estabelecendo as condições em que coletamos e utilizamos as informações dos usuários do Site ("Política").
                </p>
                <p>
                    Esta Política de Privacidade foi publicada em novembro de 2017 e pode ser alterada de tempos em tempos. Por isso, sugerimos que você revise a Política de Privacidade ocasionalmente. O uso contínuo do Site após a publicação de uma nova versão da Política de Privacidade significará que o usuário aceitou essa nova versão. Além disso, a utilização do Site estará sujeita à versão mais recente da sua Política de Privacidade. 
                </p>
                <p>
                    Ao utilizar a MindUp, você concorda com esta Política. Caso você não concorde com esta Política, não utilize o Site nem forneça suas informações pessoais.
                </p>
                <article class="topicos-termos">
                    <h3 class="subtitulos-politica">1.&nbsp;&nbsp;&nbsp;&nbsp;Informações dos Usuários</h3>
                    <p>
                        Ao fornecer suas informações ao Site, você concorda com a coleta, utilização e transmissão dessas informações nas condições descritas nesta Política.
                    </p>

                    <h6 class="sub-negrito">Cadastro</h6>
                    <p>
                        Para utilizar ou contratar os serviços do Site, você precisa se cadastrar no Site, diretamente. As informações fornecidas em seu cadastro serão armazenadas em um banco de dados seguro e utilizadas de acordo com os termos desta Política.
                    </p>
                    <p>
                        O seu cadastro no Site é pessoal e protegido por uma senha criada por você. É de sua responsabilidade criar uma senha segura e manter essa senha confidencial para evitar qualquer acesso indevido às suas informações pessoais. Você também será responsável por todas as atividades realizadas com o uso da sua senha. 
                    </p>

                    <h6 class="sub-negrito">Coleta</h6>
                    <p>
                        Nós coletamos informações que são voluntariamente fornecidas pelos nossos usuários, seja por meio do cadastro e da contratação de serviços, ou aquelas que recebemos através de comunicações enviadas pelos usuários, incluindo seu endereço de e-mail.
                    </p>
                    <p>
                        Ao fornecer informações ao Site, você reconhece que suas informações são verdadeiras, corretas e completas e não violam a legislação aplicável nem direitos de terceiros. Essas informações também não devem ser obscenas ou abusivas, nem conter vírus, cavalos de troia ou outras rotinas de programação que possam interferir, danificar ou interceptar qualquer sistema ou dados.
                    </p>

                    <h6 class="sub-negrito">Utilização e Transmissão a Terceiros</h6>
                    <p>
                        Suas informações pessoais serão utilizadas para a execução dos serviços contratados por você. Essas informações dos usuários não serão transmitidas a terceiros, exceto se essa transmissão for necessária para a prestação dos serviços contratados ou para a verificação de sua identidade para fins de segurança.
                    </p>
                    <p>
                        Ainda, dados anônimos podem ser utilizados por nós em pesquisas ou avaliações estatísticas e comerciais sobre o Site. Essas informações também poderão ser transmitidas a terceiros sem, no entanto, revelar os dados pessoais de nossos usuários.
                    </p>
                    <p>
                        Suas informações também poderão ser fornecidas mediante a solicitação de uma autoridade competente.
                    </p>

                    <h6 class="sub-negrito">Atualização, Alteração e Exclusão</h6>
                    <p>
                        Os usuários comprometem-se a fornecer informações pessoais sempre completas e atualizadas para o Site. Você poderá alterar suas informações pessoais ou excluir seu cadastro no Site na seção configurações de sua conta.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-politica">2.&nbsp;&nbsp;&nbsp;&nbsp;Segurança das Informações</h3>
                    <p>
                        O Site emprega medidas para garantir a segurança e proteger as informações armazenadas em nossos bancos de dados e servidores. No entanto, não é possível garantir a completa segurança desses bancos de dados e servidores, nem que os dados fornecidos pelos nossos usuários não serão interceptados durante a transmissão.
                    </p>
                    <p>
                        Além disso, informações financeiras e dados para pagamento dos serviços contratados são processados por servidores seguros.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-politica">3.&nbsp;&nbsp;&nbsp;&nbsp;Envio de E-mails</h3>
                    <p>
                        O Site não envia e-mails solicitando a confirmação de suas informações pessoais nem de sua senha de cadastro.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-politica">4.&nbsp;&nbsp;&nbsp;&nbsp;Cookies</h3>
                    <p>
                        O site não utiliza cookies para armazenar informações e facilitar identificação do IP. 
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-politica">5.&nbsp;&nbsp;&nbsp;&nbsp;Links</h3>
                    <p>
                        O Site pode conter links para sites externos, que estabelecem políticas de privacidade diversas desta Política. Qualquer informação fornecida a outros sites estará sujeita às políticas desses sites.
                    </p>
                    <p>
                        Além disso, o Site não é responsável pelo conteúdo dos links exibidos no Site.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-politica">6.&nbsp;&nbsp;&nbsp;&nbsp;Idade Mínima</h3>
                    <p>
                        O cadastro no Site e a contratação dos serviços serão permitidos para maiores de 18 anos de idade O cadastro ou a contratação de qualquer serviço por menores de 18 anos de idade dependerá de representação ou assistência de seus pais ou responsáveis.
                    </p>
                    <p>
                        Caso um menor de idade tenha enviado informações pessoais ao Site, seu pai ou responsável poderá solicitar a exclusão desses dados de nossa base de dados enviando um e-mail para <a href="mailto:startmindup@gmail.com" class="negrito">startmindup@gmail.com.</a>
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-politica">7.&nbsp;&nbsp;&nbsp;&nbsp;Sobrevivência das Disposições</h3>
                    <p>
                        As cláusulas desta Política que deverão sobreviver a seu término, por qualquer motivo, continuarão a produzir efeitos.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-politica">8.&nbsp;&nbsp;&nbsp;&nbsp;Contato</h3>
                    <p>
                        Caso você tenha dúvidas, reclamações ou comentários sobre a Política de Privacidade da MindUp, envie um e-mail para <a href="mailto:startmindup@gmail.com" class="negrito">startmindup@gmail.com.</a>
                    </p>
                </article>
            </div>
        </section>

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
    <script src="js/login.js"></script>
    <script>
        $('#menu-toggle-wrapper').click(function () {
            $(this).toggleClass('active');

        });
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
