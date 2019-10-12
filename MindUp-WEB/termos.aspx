<%@ Page Language="C#" AutoEventWireup="true" CodeFile="termos.aspx.cs" Inherits="termos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MindUp | Termos de Responsabilidade e Uso</title>

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
    <script type="text/javascript">
      function focus() {
            $("#txtSearch").addClass('border-orange');
        }

        function blur() {
            $("#txtSearch").removeClass('border-orange');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- MENU -->
        <div>
            <nav class="navbar navbar-fixed-top nav-transparent">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <ul class="navbar-brand boxLogoCategoria">
                            <li><a class="a-logo" href="index.aspx">
                                <img src="img/logo/mindup_laranja.png" class="logo " />
                            </a></li>
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
                    <div class="hgroup">
                        <h1 class="titulo-termos">Termos de
                            <br />
                            Responsabilidade e Uso</h1>
                        <div class="linha-titulo"></div>
                    </div>
                </div>
            </div>
        </header>
        <!-- FIM HEADER -->

        <section class="bg-cinza">
            <div class="termos">
                <p>
                    O acesso e a utilização do site www.startmindup.com.br ("Site" ou "MindUp") estão sujeitos a estes Termos de Responsabilidade e Uso ("Termos de Responsabilidade e Uso") e à Política de Privacidade ("Política").
                </p>
                <p>
                    Estes Termos de Uso foram publicados em novembro de 2017 e podem ser alterados de tempos em tempos. Por isso, sugerimos que você revise os Termos de Uso ocasionalmente. O uso contínuo do Site após a publicação de uma nova versão dos Termos de Uso significará que o usuário aceitou essa nova versão. Além disso, a utilização do Site estará sujeita à versão mais recente dos seus Termos de Uso.
                </p>
                <p>
                    Ao utilizar a MindUp, você concorda com seus Termos de Responsabilidade e Uso. Caso você não concorde com os Termos de Responsabilidade e Uso, não utilize o Site nem forneça suas informações pessoais.
                </p>
                <p>
                    Todos os direitos são reservados. Nenhuma parte deste site pode ser reproduzida ou transmitida livremente de alguma forma, sem o consentimento prévio dos seus autores.
                </p>
                <article class="topicos-termos">
                    <h3 class="subtitulos-termos">1.&nbsp;&nbsp;&nbsp;&nbsp;Acesso ao Site</h3>
                    <p>
                        <span class="negrito">Cadastro:</span> Para utilizar ou contratar os serviços do Site, você precisa se cadastrar no Site diretamente. As informações fornecidas em seu cadastro serão armazenadas em um banco de dados seguro e utilizadas de acordo com os termos da Política de Privacidade. O seu cadastro no Site é pessoal e protegido por uma senha criada por você. É de sua responsabilidade criar uma senha segura e manter essa senha confidencial para evitar qualquer acesso indevido às suas informações pessoais. Você também será responsável por todas as atividades realizadas com o uso da sua senha.
                    </p>
                    <p>
                        <span class="negrito">Fornecimento de Informações:</span> As condições relacionadas a utilização e proteção das informações de nossos usuários estão descritas na nossa Política de Privacidade, que deve ser aceita pelos usuários para utilizar o Site. Ao fornecer informações ao Site (no seu cadastro ou em qualquer comunicação com o MindUp, como e-mails), você reconhece que suas informações são verdadeiras, corretas, atualizadas e completas e não violam a legislação aplicável nem direitos de terceiros. Cada usuário será responsável pelas informações fornecidas ao Site, inclusive aquelas que podem ser divulgadas publicamente em comentários ou chats. A MindUp não garante que as informações disponibilizadas publicamente pelos usuários é correta e não viola direitos de terceiros e, por esse motivo, não é responsável por eventuais danos que tais informações venham a causar a terceiros.
                    </p>
                    <p>
                        <span class="negrito">Responsabilidade pelas Informações Fornecidas:</span> Você será responsável por todas as informações incluídas através do uso de sua conta pessoal na MindUp, tanto quanto seu projeto e/ou informações pessoais. A MindUp terá o direito de excluir tentativa de uso indevido do Site de qualquer usuário, a qualquer momento e independentemente de justificativa.
                    </p>
                    <p>
                        <span class="negrito">Acesso ao Site:</span> Cada usuário será responsável pelos serviços de telefonia, acesso à internet, outros serviços e dispositivos de hardware e softwares necessários para o acesso ao Site e a seu Conteúdo. É possível que seja necessária a aceitação de termos de licença ou termos de uso de terceiros para a utilização de softwares necessários para o acesso ao Conteúdo. A não aceitação desses termos pelos usuários pode limitar seu acesso ao Site ou ao Conteúdo. Também certifique-se que seus dispositivos são compatíveis com os requisitos necessários para acessar o Site e o Conteúdo.
                    </p>
                    <p>
                        Todos os direitos não expressamente previstos nestes Termos de Uso permanecerão reservados à MindUp. 
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-termos">2.&nbsp;&nbsp;&nbsp;&nbsp;Restrições ao uso do Site</h3>
                    <p>
                        Você pode utilizar esse site para propósitos expressamente permitidos por esse site. Você não pode utilizá-lo em qualquer outro objetivo sem o consentimento prévio expresso e escrito da nossa Empresa. Por exemplo, você não pode - e tampouco pode autorizar a terceiros - a associar a marca da nossa Empresa a nenhuma outra, fazer um frame deste site em outro ou fazer um hiperlink para este site sem a autorização expressa prévia e escrita de um representante da nossa Empresa. Para efeitos deste termo de uso desses Termos de Uso, “associar a marca da nossa Empresa” significa expor nome, logo, marca comercial ou outros meios de atribuição ou identificação em fonte de maneira que dê ao usuário a impressão de que tal fonte tem o direito de expor, publicar ou distribuir este site ou o conteúdo disponibilizado por ele. Você concorda em cooperar com a Empresa para cessar qualquer associação, frame ou hiperlink não autorizados.
                    </p>
                    <p>
                        <span class="negrito">Idade:</span> O cadastro no Site e a contratação dos serviços serão permitidos para maiores de 18 anos de idade. O cadastro ou a contratação de qualquer serviço por menores de 18 anos de idade dependerá de representação ou assistência de seus pais ou responsáveis, conforme o caso. Caso um menor de idade tenha enviado informações pessoais ao Site, seu pai ou responsável poderá solicitar a exclusão desses dados de nossa base de dados enviando um e-mail para <a href="mailto:startmindup@gmail.com" class="negrito">startmindup@gmail.com.</a>
                    </p>
                    <p>
                        <span class="negrito">Informações Fornecidas:</span> Os usuários não deverão utilizar o Site para disponibilizar ou publicar mensagens, conteúdos ou informações ilegais, obscenas ou abusivas, que violem direitos de terceiros, que contenham vírus, cavalos de troia ou outros códigos que possam interferir, danificar ou interceptar qualquer sistema ou dados.
                    </p>
                    <p>
                        <span class="negrito">Proibição de Decodificação:</span> Você não deve tentar (nem apoiar terceiros que tentem) decodificar, decompilar, praticar engenharia reversa, fraudar, driblar, alterar, modificar ou interferir, de qualquer forma, no Site ou no Conteúdo.
                    </p>
                    <p>
                        <span class="negrito">Sua Conta:</span> A MindUp permite que apenas uma conta seja criada por usuário e não é permitido criar contas em nome de terceiros. É possível criar uma conta para uma startup, necessitando ser criada por um representante com poderes para aceitar estes Termos de Responsabilidade e Uso e a Política de Privacidade em nome da empresa.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-termos">3.&nbsp;&nbsp;&nbsp;&nbsp;Conteúdo </h3>
                    <p>
                        A MindUp disponibiliza conteúdo de pequenas empresas (startups) que podem ser vistos mais a fundo com a compra de coins no Site. Você poderá acessar o conteúdo de acordo com as práticas comerciais vigentes da MindUp, as quais podem ser alteradas sem aviso prévio. 
                    </p>
                    <p>
                        Você concorda que os conteúdos serão acessados apenas por você e para seus fins pessoais e não comerciais. Você poderá acessar o Conteúdo de acordo com a compra de coins e interesse mútuo entre os envolvidos, mas não terá, de imediato, qualquer direito sobre o Conteúdo nem poderá gravá-lo ou copiá-lo (no todo ou em parte).
                    </p>
                    <p>
                        A MindUp poderá, a qualquer momento e a seu exclusivo critério, interromper, excluir ou suspender o Conteúdo, no todo ou em parte, disponibilizado no Site, incluindo os preços e as condições de pagamento aplicáveis, independentemente de prévio aviso aos usuários.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-termos">4.&nbsp;&nbsp;&nbsp;&nbsp;Direitos de Propriedade Intelectual </h3>
                    <p>
                        O Conteúdo do Site (incluindo, sem limitação, as imagens, textos e material audiovisual) é de propriedade da empresa que forneceu tais informações e protegido pela legislação aplicável sobre direitos autorais e de propriedade intelectual. O acesso dos usuários ao Conteúdo é apenas uma autorização de utilização para fins pessoais e financeiros e os usuários não adquirem, obrigatoriamente, qualquer direito sobre o Conteúdo, independentemente de terem adquirido acesso. Você não poderá utilizar o Conteúdo de maneira que não seja expressamente aprovada por estes Termos de Uso ou pela determinada empresa. Além disso, o layout do site é de propriedade da MindUp e protegido pela legislação aplicável sobre direitos autorais e de propriedade intelectual. 
                    </p>
                    <p>
                        As marcas exibidas no Site (incluindo a expressão “MindUp” e nosso logotipo) são de propriedade da MindUp. Você não poderá utilizar essas marcas e sinais distintivos encontrados no Site e no Conteúdo para qualquer finalidade, nem copiá-los ou alterá-los.
                    </p>
                    <p>
                        Você concorda em não reproduzir, distribuir, transmitir em qualquer meio, copiar, duplicar, vender, autorizar terceiros a utilizar, revender, explorar ou utilizar de qualquer maneira que não seja expressamente autorizada nestes Termos de Uso o Conteúdo e as marcas da MindUp.
                    </p>
                    <p>
                        A MindUp poderá tomar todas as medidas apropriadas para proteger seus direitos sobre o Conteúdo e suas marcas, incluindo a suspensão ou exclusão de um usuário.
                    </p>
                    <p>
                        Ao publicar mensagens, dados ou informações em qualquer ferramenta de comunicação do Site, o usuário reconhece que tem poderes para fazer tal publicação e que a publicação não viola direitos de terceiros. O Site poderá copiar, adaptar, alterar, utilizar, transmitir, representar, publicar ou distribuir essas mensagens, dados ou informações para promover a MindUp e/ou o Conteúdo.
                    </p>
                    <p>
                        Todos os direitos que não sejam expressamente concedidos pelos Termos de Uso são reservados a MindUp.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-termos">5.&nbsp;&nbsp;&nbsp;&nbsp;Exclusão de Informações e Suspensão ou Cancelamento do Acesso</h3>
                    <p>
                        <span class="negrito">Exclusão de Informações:</span> A MindUp poderá, a seu exclusivo critério e a qualquer momento, excluir quaisquer informações, dados ou outros materiais do Site, incluindo aqueles que violarem os Termos de Responsabilidade e Uso ou a Política de Privacidade. 
                    </p>
                    <p>
                        <span class="negrito">Suspensão ou Cancelamento do Acesso:</span> A MindUp poderá, a seu exclusivo critério e a qualquer momento, suspender ou impedir o acesso ao Site (no todo ou em parte) de qualquer usuário, inclusive aqueles que violarem os Termos de Responsabilidade e Uso ou a Política de Privacidade, ou que estejam inativos por um longo período.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-termos">6.&nbsp;&nbsp;&nbsp;&nbsp;Condições de Pagamento</h3>
                    <p>
                        Você concorda em pagar pela quantia de Coins que deseja contratar e que não seja disponibilizado gratuitamente pelo MindUp.
                    </p>
                    <p>
                        Quando da aquisição de uma quantia, o Site poderá solicitar informações do seu cartão de crédito ou de sua conta bancária. Você concorda que sejam cobrados, de acordo com a forma de pagamento que venha a ser escolhida por você, os preços então vigentes à quantia que venha a ser adquirido por você, incluindo os tributos e outras despesas aplicáveis. 
                    </p>
                    <p>
                        Não existem condições de reembolso em caso de compra de certa quantia de Coins por acidente do usuário. Portanto, todos os valores eventualmente pagos pelo usuário não serão reembolsados. 
                    </p>
                    <p>
                        A MindUp poderá alterar os preços para a aquisição de Coins a qualquer momento e independente de qualquer comunicação aos usuários. A MindUp também poderá criar ofertas promocionais para usuários do Site. 
                    </p>
                    <p>
                        Caso a MindUp cancele seu acesso ao Site, nenhum valor será reembolsado ou pago ao usuário em decorrência desse cancelamento.
                    </p>
                    <p>
                        Exceto se previsto nestes Termos de Uso, a MindUp não reembolsará quaisquer valores pagos pelos usuários para a utilização do Site ou acesso ao Conteúdo.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-termos">7.&nbsp;&nbsp;&nbsp;&nbsp;Limitações de Responsabilidade</h3>
                    <p>
                        Você reconhece que o Site e o Conteúdo são disponibilizados na condição em que estão e a MindUp não tem relação e não oferece nenhuma garantia sobre a qualidade das informações. O Site também não será responsável por qualquer dano aos dispositivos, softwares ou sistemas em decorrência do acesso ao Site ou ao Conteúdo.
                    </p>
                    <p>
                        Não é possível garantir que o Site e o Conteúdo estarão disponíveis ininterruptamente nem livres de erros.
                    </p>
                    <p>
                        Além disso, o Site não endossa os pontos de vista, opiniões e declarações contidos em seu Conteúdo. O Conteúdo poderá, no todo ou em parte, estar sujeito a erros, omissões, falhas, interrupções ou imprecisões e a MindUp não tem relação e não será responsável por esses eventos.
                    </p>
                    <p>
                        A MindUp não será responsável por quaisquer danos ou perdas sofridas pelos usuários em decorrência do acesso ao Site ou ao Conteúdo, incluindo danos ou perdas resultantes de perdas de dados, receitas ou tempo, ou até decorrentes da incapacidade ou impossibilidade de acessar o Site ou o Conteúdo.
                    </p>
                    <p>
                        O Site não será responsável caso o acesso ao Site ou ao Conteúdo venha a danificar seus dispositivos ou trazer vírus ou outros códigos de programação que prejudiquem seus dispositivos de hardware ou software.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-termos">8.&nbsp;&nbsp;&nbsp;&nbsp;Links de Terceiros</h3>
                    <p>
                        O Site pode conter links para sites externos, que estabelecem políticas de privacidade e termos de uso diversos dos aplicáveis a MindUp. O acesso e o fornecimento de informações a outros sites estarão sujeitos às condições previstas por esses sites. Além disso, a MindUp não é responsável pelo conteúdo dos links exibidos no Site.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-termos">9.&nbsp;&nbsp;&nbsp;&nbsp;Disposições Gerais</h3>
                    <p>
                        Você reconhece que a MindUp poderá ceder seus direitos e obrigações previstos nestes Termos de Responsabilidade e Uso e na Política de Privacidade a terceiros, independentemente da aprovação dos usuários.
                    </p>
                    <p>
                        As cláusulas destes Termos de Responsabilidade e Uso que deverão sobreviver a seu término, por qualquer motivo, continuarão a produzir efeitos.
                    </p>
                    <p>
                        Caso qualquer uma das cláusulas e condições destes Termos de Responsabilidade e Uso venha a ser declarada nula ou sem efeitos, no todo ou em parte, as demais cláusulas continuarão em pleno vigor e efeito.
                    </p>
                    <p>
                        A tolerância ou o não exercício de quaisquer direitos a previstos nestes Termos de Uso ou na legislação aplicável não será considerada novação ou renúncia a esses direitos, os quais poderão ser exercidos integralmente e a qualquer momento.
                    </p>
                    <p>
                        Conflitos, disputas ou controvérsias relacionados a estes Termos de Responsabilidade e Uso ou à Política de Privacidade serão submetidos ao Foro da Capital do Estado de São Paulo, com exclusão de qualquer outro, por mais privilegiado que seja.
                    </p>
                </article>
                <article class="topicos-termos">
                    <h3 class="subtitulos-termos">10.&nbsp;&nbsp;&nbsp;&nbsp;Contato</h3>
                    <p>
                        Caso você tenha dúvidas, reclamações ou comentários sobre os Termos de Responsabilidade e Uso da MindUp, envie um e-mail para <a href="mailto:startmindup@gmail.com" class="negrito">startmindup@gmail.com.</a>
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
