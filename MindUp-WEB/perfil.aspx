<%@ Page Language="C#" AutoEventWireup="true" CodeFile="perfil.aspx.cs" Inherits="perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Perfil Usuário - MindUp</title>

    <link href="css/style.css" rel="stylesheet" />
    <link href="css/perfil.css" rel="stylesheet" />

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
                                                    <asp:ImageButton ID="btnPesquisar" runat="server" CssClass="btnSearch" ImageUrl="~/img/search.png" />
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
                        <asp:Panel ID="pnlPerfil" runat="server" Visible="true">
                            <ul class="nav navbar-nav navbar-right">
                                <!-- Perfil -->
                                <li class="li-perfil">
                                    <div class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                            <asp:Image ID="imgMenuPerfil" runat="server" CssClass="img-circle img-responsive imgPerfil" ImageUrl="~/img/perfil-branco.png" /><span class="caret"></span></a>
                                        <ul class="dropdown-menu dpdPerfil">
                                            <li><a href="perfil.aspx" class="btn-menu">Meu Perfil</a></li>
                                            <li><a href="compracoin.aspx" class="btn-menu">Meus Coins</a></li>
                                            <li><a href="perfilStartup.aspx" class="btn-menu">Minha Startup</a></li>
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

        <div class="container" id="perfil">
            <div class="row">
                <div class="col-md-3">
                    <div class="bg-branco">
                        <div>
                            <asp:Image ID="imgPerfil" runat="server" CssClass="img-responsive img-circle img-perfil" ImageUrl="~/img/perfil/perfil.png" />
                        </div>
                        <div class="identificacao">
                            <p>
                                <asp:Label ID="lblNomePerfil" runat="server"></asp:Label>
                            </p>
                            <p>
                                <small>
                                    <asp:Label ID="lblIdPerfil" runat="server"></asp:Label></small>
                            </p>
                        </div>
                        <div>
                            <asp:Button ID="btnMeuPerfil" runat="server" Text="Meu Perfil" CssClass="btn btn-perfil btn-meu-perfil active" OnClick="btnMeuPerfil_Click" />
                        </div>
                        <div>
                            <asp:Button ID="btnMeusCoins" runat="server" Text="Meus Coins" CssClass="btn btn-perfil btn-meu-perfil" OnClick="btnMeusCoins_Click" />
                        </div>
                        <div>
                            <asp:Button ID="btnMinhaStartup" runat="server" Text="Minha Startup" CssClass="btn btn-perfil btn-minha-startup" OnClick="btnMinhaStartup_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-md-9">
                    <div class="bg-branco">
                        <asp:MultiView ID="mlvConteudo" runat="server">
                            <asp:View ID="vwMeuPerfil" runat="server">
                                <div class="view">
                                    <h4><span>M</span>eu <span>P</span>erfil</h4>
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-6">
                                            <asp:Label ID="lblNome" runat="server" Text="Nome" for="txtNome" CssClass="label1"></asp:Label>
                                            <asp:TextBox ID="txtNome" runat="server" CssClass="textbox" MaxLength="50"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="lblEmail" runat="server" Text="Email" for="txtEmail" CssClass="label1"></asp:Label>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" MaxLength="50" Enabled="false"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-4">
                                            <label class="label1 active" for="txtPais">País</label>
                                            <asp:TextBox ID="txtPais" runat="server" CssClass="textbox" MaxLength="25" Text="Brasil" Enabled="false"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Label ID="lblEstado" runat="server" Text="Estado" for="txtEstado" CssClass="label1"></asp:Label>
                                            <asp:TextBox ID="txtEstado" runat="server" CssClass="textbox" MaxLength="25"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="box-ddl">
                                                <label class="label2">Tipo de Usuário</label><br />
                                                <asp:DropDownList ID="ddlTipoUsuario" runat="server" CssClass="cadastro-dropdown">
                                                    <asp:ListItem>Básico</asp:ListItem>
                                                    <asp:ListItem>Empreendedor</asp:ListItem>
                                                    <asp:ListItem>Investidor</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-4">
                                            <label class="label1" for="txtAntigaSenha">Senha Antiga</label>
                                            <asp:TextBox ID="txtAntigaSenha" runat="server" CssClass="textbox" MaxLength="20" TextMode="Password"></asp:TextBox>
                                            <div class="error">
                                                <asp:Label ID="lblSenhaAntiga" runat="server" Text="&nbsp &nbsp Senha incorreta" Visible="False"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="label1" for="txtNovaSenha">Senha Nova</label>
                                            <asp:TextBox ID="txtNovaSenha" runat="server" CssClass="textbox" MaxLength="20" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="box-rbl">
                                                <label class="label2">Sexo</label><br />
                                                <asp:RadioButtonList ID="rblSexo" runat="server" RepeatDirection="Horizontal" CssClass="radiobutton-part2 radio radio-inline radioButton">
                                                    <asp:ListItem>Feminino</asp:ListItem>
                                                    <asp:ListItem>Masculino</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-12">
                                            <asp:Label ID="lblBiografia" runat="server" Text="Biografia" for="txtBiografia" CssClass="label1"></asp:Label>
                                            <asp:TextBox ID="txtBiografia" runat="server" CssClass="textbox" TextMode="MultiLine" MaxLength="500"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-6">
                                            <div>
                                                <asp:Label ID="lblFacebook" runat="server" Text="Facebook" for="txtFacebook" CssClass="label1"></asp:Label>
                                                <asp:TextBox ID="txtFacebook" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <asp:Label ID="lblTwitter" runat="server" Text="Twitter" for="txtTwitter" CssClass="label1"></asp:Label>
                                                <asp:TextBox ID="txtTwitter" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-6">
                                            <div>
                                                <asp:Label ID="lblInstagram" runat="server" Text="Instagram" for="txtInstagram" CssClass="label1"></asp:Label>
                                                <asp:TextBox ID="txtInstagram" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <asp:Label ID="lblGitHub" runat="server" Text="GitHub" for="txtGitHub" CssClass="label1"></asp:Label>
                                                <asp:TextBox ID="txtGitHub" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-12 box-button-perfil">
                                            <asp:Button ID="btnSalvarPerfil" runat="server" Text="Salvar" CssClass="btnSalvarPerfil" OnClick="btnSalvarPerfil_Click" />
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="vwMeusCoins" runat="server">
                                <div class="view">
                                    <div class="row" style="position: relative;">
                                        <div class="col-md-10">
                                            <h4><span>M</span>eus<span> C</span>oins</h4>
                                        </div>
                                        <div class="col-md-2 coins-center-vertical-right">
                                            <div class="box-coin-quant">
                                                <img src="img/perfil/coins.png" class="img-coin" />
                                                <asp:Label ID="lblCoin" runat="server" CssClass="lblCoin" Text="5"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <section class="coins-pacotes">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="box-coins-pacotes-laterais left">
                                                    <div class="coins-pacotes-botao">
                                                        <asp:Button ID="btnComprar15" runat="server" CssClass="btnCoins" OnClick="btnComprar15_Click" />
                                                    </div>
                                                    <div class="coins-pacotes-center-vertical">
                                                        <div class="coins-pacotes-titulos">
                                                            <h3>Essencial</h3>
                                                        </div>
                                                        <div class="coins-pacotes-precos">
                                                            <p>R$ 6</p>
                                                            <small>por</small>
                                                            <p>
                                                                <img src="img/perfil/coins.png" class="img-coin" />
                                                                15 
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="box-coins-pacotes-laterais center">
                                                    <div class="coins-pacotes-botao">
                                                        <asp:Button ID="btnCoins45" runat="server" CssClass="btnCoins" OnClick="btnCoins45_Click" />
                                                    </div>
                                                    <div class="coins-pacotes-center-vertical">
                                                        <div class="coins-pacotes-titulos">
                                                            <h3>Básico</h3>
                                                        </div>
                                                        <div class="coins-pacotes-precos">
                                                            <p>R$ 18</p>
                                                            <small>por</small>
                                                            <p>
                                                                <img src="img/perfil/coins-cinza.png" class="img-coin" />
                                                                45 
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="box-coins-pacotes-laterais right">
                                                    <div class="coins-pacotes-botao">
                                                        <asp:Button ID="btnCoins75" runat="server" CssClass="btnCoins" OnClick="btnCoins75_Click" />
                                                    </div>
                                                    <div class="coins-pacotes-center-vertical">
                                                        <div class="coins-pacotes-titulos">
                                                            <h3>Avançado</h3>
                                                        </div>
                                                        <div class="coins-pacotes-precos">
                                                            <p>R$ 30</p>
                                                            <small>por</small>
                                                            <p>
                                                                <img src="img/perfil/coins.png" class="img-coin" />
                                                                75 
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="box-coins-pacotes-laterais center">
                                                    <div class="coins-pacotes-botao">
                                                        <asp:Button ID="btnCoinOutro" runat="server" CssClass="btnCoins" OnClick="btnCoinOutro_Click" />
                                                    </div>
                                                    <div class="coins-pacotes-center-vertical">
                                                        <div class="coins-pacotes-titulos">
                                                            <h3>Outro Valor</h3>
                                                        </div>

                                                        <div class="coins-pacotes-precos">
                                                            <img src="img/perfil/more.png" class="img-more img-more-cinza" />
                                                            <img src="img/perfil/more-laranja.png" class="img-more img-more-laranja" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                            </asp:View>
                            <asp:View ID="vwMinhaStartup" runat="server">
                                <div class="view">
                                    <h4><span>M</span>inha <span>S</span>tartup</h4>
                                    <!-- PARTE 1 -->
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-8">
                                            <div>
                                                <label class="label1 active" for="txtNomeStartup">Nome da Startup</label>
                                                <asp:TextBox ID="txtNomeStartup" runat="server" CssClass="textbox" MaxLength="50"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="box-ddl">
                                                <label class="label2">Categoria: </label>
                                                <asp:DropDownList ID="ddlCategoriaStartup" runat="server" CssClass="cadastro-dropdown">
                                                    <asp:ListItem>Selecione</asp:ListItem>
                                                    <asp:ListItem>Alimentação</asp:ListItem>
                                                    <asp:ListItem>Cultura</asp:ListItem>
                                                    <asp:ListItem>Educação</asp:ListItem>
                                                    <asp:ListItem>Empreendedorismo</asp:ListItem>
                                                    <asp:ListItem>Entretenimento</asp:ListItem>
                                                    <asp:ListItem>Esportes</asp:ListItem>
                                                    <asp:ListItem>Infantil</asp:ListItem>
                                                    <asp:ListItem>Política</asp:ListItem>
                                                    <asp:ListItem>Saúde</asp:ListItem>
                                                    <asp:ListItem>Tecnologia</asp:ListItem>
                                                    <asp:ListItem>Transporte</asp:ListItem>
                                                    <asp:ListItem>Turismo</asp:ListItem>
                                                    <asp:ListItem>Outros</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-8">
                                            <div>
                                                <label class="label1 active" for="txtNomeStartup">Slogan</label>
                                                <asp:TextBox ID="txtSloganStartup" runat="server" CssClass="textbox" MaxLength="250"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="box-ddl">
                                                <label class="label2">Ano de Fundação: </label>
                                                <asp:DropDownList ID="ddlAnoStartup" runat="server" CssClass="cadastro-dropdown">
                                                    <asp:ListItem>Selecione</asp:ListItem>
                                                    <asp:ListItem>1990</asp:ListItem>
                                                    <asp:ListItem>1991</asp:ListItem>
                                                    <asp:ListItem>1992</asp:ListItem>
                                                    <asp:ListItem>1993</asp:ListItem>
                                                    <asp:ListItem>1994</asp:ListItem>
                                                    <asp:ListItem>1995</asp:ListItem>
                                                    <asp:ListItem>1996</asp:ListItem>
                                                    <asp:ListItem>1997</asp:ListItem>
                                                    <asp:ListItem>1998</asp:ListItem>
                                                    <asp:ListItem>1999</asp:ListItem>
                                                    <asp:ListItem>2000</asp:ListItem>
                                                    <asp:ListItem>2001</asp:ListItem>
                                                    <asp:ListItem>2002</asp:ListItem>
                                                    <asp:ListItem>2003</asp:ListItem>
                                                    <asp:ListItem>2004</asp:ListItem>
                                                    <asp:ListItem>2005</asp:ListItem>
                                                    <asp:ListItem>2006</asp:ListItem>
                                                    <asp:ListItem>2007</asp:ListItem>
                                                    <asp:ListItem>2009</asp:ListItem>
                                                    <asp:ListItem>2010</asp:ListItem>
                                                    <asp:ListItem>2011</asp:ListItem>
                                                    <asp:ListItem>2012</asp:ListItem>
                                                    <asp:ListItem>2013</asp:ListItem>
                                                    <asp:ListItem>2014</asp:ListItem>
                                                    <asp:ListItem>2015</asp:ListItem>
                                                    <asp:ListItem>2016</asp:ListItem>
                                                    <asp:ListItem>2017</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-12 height-maior">
                                            <div>
                                                <label class="label1 active" for="txtDescricaoStartup">Descrição</label>
                                                <asp:TextBox ID="txtDescricaoStartup" runat="server" CssClass="textbox multiline" TextMode="MultiLine"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-3">
                                            <div>
                                                <label class="label1 active" for="txtPaisStartup">País</label>
                                                <asp:TextBox ID="txtPaisStartup" runat="server" CssClass="textbox" Enabled="False" Text="Brasil"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                            <div>
                                                <label class="label1 active" for="txtUFStartup">UF</label>
                                                <asp:TextBox ID="txtUFStartup" runat="server" CssClass="textbox" MaxLength="2"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div>
                                                <label class="label1 active" for="txtCidadeStartup">Cidade</label>
                                                <asp:TextBox ID="txtCidadeStartup" runat="server" CssClass="textbox" MaxLength="25" Style="text-transform: uppercase;"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="row">
                                                <div class="col-md-3 col-xs-3 sem-padding">
                                                    <label class="label2">Logo:</label>
                                                    <div class="center icon-alerta-arquivo">
                                                        <img src="img/cadastro-startup/information.png" class="info-img" />
                                                        <div class="alerta-arquivo">
                                                            <p>
                                                                .PNG, .JPG ou .JPEG - máximo 10MB.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-9 col-xs-9 sem-padding">
                                                    <label for="fulLogoStartup" class="custom-file-upload">
                                                        <i class="fa fa-cloud-upload"></i>Upload
                                                    </label>
                                                    <asp:FileUpload ID="fulLogoStartup" runat="server" Text="Upload" CssClass="btnLogoStartup" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- PARTE 2 -->
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-12">
                                            <div class="box-rbl">
                                                <label class="label2">Estágio da Startup</label>
                                                <asp:RadioButtonList ID="rblEstagioStartup" runat="server" CssClass="radiobutton-part2 radio radio-inline radioButton">
                                                    <asp:ListItem>Ideia</asp:ListItem>
                                                    <asp:ListItem>Desenvolvimento</asp:ListItem>
                                                    <asp:ListItem>Funcionando</asp:ListItem>
                                                    <asp:ListItem>Lucrando (Já entrou o primeiro real)</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-4">
                                            <div>
                                                <label class="label1 active" for="txtCNPJStartup">CNPJ</label>
                                                <asp:TextBox ID="txtCNPJStartup" runat="server" CssClass="textbox" TextMode="Number" MaxLength="14"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="box-ddl">
                                                <label class="label2">Número de Sócios</label>
                                                <asp:DropDownList ID="ddlNumSociosStartup" runat="server" CssClass="cadastro-dropdown">
                                                    <asp:ListItem>selecione</asp:ListItem>
                                                    <asp:ListItem>De 1 - 5</asp:ListItem>
                                                    <asp:ListItem>De 5 - 10</asp:ListItem>
                                                    <asp:ListItem>De 10 - 15</asp:ListItem>
                                                    <asp:ListItem>Mais de 15</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="box-ddl">
                                                <label class="label2">Investimento médio necessário: </label>
                                                <asp:DropDownList ID="ddlInvestimentoStartup" runat="server" CssClass="cadastro-dropdown">
                                                    <asp:ListItem>selecione</asp:ListItem>
                                                    <asp:ListItem>De R$500 - R$1000</asp:ListItem>
                                                    <asp:ListItem>De R$1000 - R$1500</asp:ListItem>
                                                    <asp:ListItem>De R$1500 - R$2000</asp:ListItem>
                                                    <asp:ListItem>De R$2000 - R$2500</asp:ListItem>
                                                    <asp:ListItem>De R$2500 - mais</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-12">
                                            <div>
                                                <label class="label2">Faturamento médio: </label>
                                                <br />
                                                <asp:RadioButtonList ID="rblFaturamentoStartup" runat="server" CssClass="radiobutton-part2 radio radio-inline radioButton faturamento">
                                                    <asp:ListItem>De R$500 - R$1000</asp:ListItem>
                                                    <asp:ListItem>De R$1000 - R$1500</asp:ListItem>
                                                    <asp:ListItem>De R$1500 - R$2000</asp:ListItem>
                                                    <asp:ListItem>De R$2000 - R$2500</asp:ListItem>
                                                    <asp:ListItem>De R$2500 - mais</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-7">
                                            <div class="row">
                                                <div class="col-md-4 col-xs-4">
                                                    <label class="label2">Arquivo:</label>
                                                    <div class="center icon-alerta-arquivo">
                                                        <img src="img/cadastro-startup/information.png" class="info-img" />
                                                        <div class="alerta-arquivo">
                                                            <p>
                                                                .PDF, Word ou ppt - máximo 10MB.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 col-xs-8 ">
                                                    <label for="fulArquivoConluir" class="custom-file-upload">
                                                        <i class="fa fa-cloud-upload"></i>Upload
                                                    </label>
                                                    <asp:FileUpload ID="fulArquivoStartup" runat="server" Text="Upload" CssClass="btnLogoStartup" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- PARTE 3 -->
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtEmailStartup">Email da Startup</label>
                                                <asp:TextBox ID="txtEmailStartup" runat="server" CssClass="textbox" TextMode="Email"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtSiteStartup">Site da Startup</label>
                                                <asp:TextBox ID="txtSiteStartup" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtVideoStartup">Vídeo da Startup</label>
                                                <asp:TextBox ID="txtVideoStartup" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtFacebookStartup">Facebook da Startup</label>
                                                <asp:TextBox ID="txtFacebookStartup" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtTwitterStartup">Twitter da Startup</label>
                                                <asp:TextBox ID="txtTwitterStartup" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtYoutubeStartup">Youtube da Startup</label>
                                                <asp:TextBox ID="txtYoutubeStartup" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-12 box-button-perfil">
                                            <asp:Button ID="btnSalvarStartup" runat="server" Text="Salvar" CssClass="btnSalvarPerfil" />
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="vwCompraCoin" runat="server">
                                <div class="view">
                                    <div class="row" style="position: relative;">
                                        <div class="col-md-10">
                                            <h4><span>C</span>ompra<span> C</span>oins</h4>
                                        </div>
                                        <div class="col-md-2 coins-center-vertical-right">
                                            <div class="box-coin-quant">
                                                <img src="img/perfil/coins.png" class="img-coin" />
                                                <asp:Label ID="lblCoinCompra" runat="server" CssClass="lblCoin" Text="5"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-5">
                                            <asp:Label ID="Label1" runat="server" Text="Coins ($)" for="txtCoinCompra" CssClass="label1 active"></asp:Label>
                                            <asp:TextBox ID="txtCoinCompra" runat="server" CssClass="textbox" TextMode="Number"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2 center">
                                            <img src="img/perfil/coins-troca-laranja.png" class="coins-troca-laranja" />
                                        </div>
                                        <div class="col-md-5">
                                            <asp:Label ID="Label2" runat="server" Text="Reais (R$)" for="txtReaisCompra" CssClass="label1 active"></asp:Label>
                                            <asp:TextBox ID="txtReaisCompra" runat="server" CssClass="textbox" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-6">
                                            <asp:Label ID="lblNomeCartao" runat="server" Text="NOme" for="txtNomeCartao" CssClass="label1 active"></asp:Label>
                                            <asp:TextBox ID="txtNomeCartao" runat="server" CssClass="textbox"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="lblNumCartao" runat="server" Text="num cartao" for="txtNumCartao" CssClass="label1 active"></asp:Label>
                                            <asp:TextBox ID="txtNumCartao" runat="server" CssClass="textbox" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-6">
                                            <asp:Label ID="lblValidadeCartao" runat="server" Text="Validade Cartao" for="txtValidadeCartao" CssClass="label1 active"></asp:Label>
                                            <asp:TextBox ID="txtValidadeCartao" runat="server" CssClass="textbox" TextMode="Date"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="lblCodigoSeguranca" runat="server" Text="Código de Segurança" for="txtCodigoSeguranca" CssClass="label1 active"></asp:Label>
                                            <asp:TextBox ID="txtCodigoSeguranca" runat="server" CssClass="textbox" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row espaco-perfil-startup">
                                        <div class="col-md-12 box-button-perfil">
                                            <button type="button" class="btnSalvarPerfil" data-toggle="modal" data-target="#myModal">
                                                Finalizar Compra
                                            </button>
                                        </div>
                                    </div>



                                    <!-- Modal -->
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                                                        <button type="button" class="btnSalvarPerfil    " data-dismiss="modal">NÃO</button>&nbsp&nbsp&nbsp&nbsp
                                                    <asp:Button ID="btnComprar" runat="server" Text="SIM" CssClass="btnSalvarPerfil" OnClick="btnComprar_Click"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </asp:View>
                        </asp:MultiView>
                    </div>
                </div>
            </div>
        </div>


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
    </script>
</body>
</html>
