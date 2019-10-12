<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadastroStartup.aspx.cs" Inherits="cadastroStartup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro Startup - MindUp</title>

    <link href="css/style.css" rel="stylesheet" />
    <link href="css/cadastroStartup.css" rel="stylesheet" />
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

        .info-img {
            width: 18px;
        }
    </style>
</head>
<body style="background-color: #fff">
    <form id="form1" runat="server">
        <!-- MENU -->
        <div>
            <nav class="navbar navbar-fixed-top">
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

        <!-- HEADER -->
        <header>
            <div class="container">
                <div class="content">
                    <div class="hgroup">
                        <h1 class="titulo-cadastro">Cadastro de Startup</h1>
                        <div class="linha-titulo"></div>
                    </div>
                </div>
            </div>
        </header>
        <!-- FIM HEADER -->
         
        <div class="container">
            <div class="row width">
                <div class="process col-md-12">
                    <div class=" row process-row nav nav-tabs">
                        <div class="process-step col-md-3">
                            <asp:ImageButton ID="img1" runat="server" ImageUrl="~/img/cadastro-startup/identificacao-branco.png" CssClass="btn btn-default btn-circle btn-circle-active" OnClick="img1_Click" />
                            <p>
                                <small>Identificação</small>
                            </p>
                        </div>
                        <div class="process-step col-md-3">
                            <asp:ImageButton ID="img2" runat="server" ImageUrl="~/img/cadastro-startup/avancado.png" CssClass="btn btn-default btn-circle" OnClick="img2_Click" />
                            <p>
                                <small>Avançado</small>
                            </p>
                        </div>
                        <div class="process-step col-md-3">
                            <asp:ImageButton ID="img3" runat="server" ImageUrl="~/img/cadastro-startup/contato.png" CssClass="btn btn-default btn-circle" OnClick="img3_Click" />
                            <p>
                                <small>Contato</small>
                            </p>
                        </div>
                        <div class="process-step col-md-3">
                            <asp:ImageButton ID="img4" runat="server" ImageUrl="~/img/cadastro-startup/concluido.png" CssClass="btn btn-default btn-circle" Style="padding: 10px;" />
                            <p>
                                <small>Concluído</small>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row width">
                <div class="col-md-12">
                    <div class="tab-content">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="vw1" runat="server">
                                <div id="menu1" class="conteudo altura">
                                    <div class="titulo-views">
                                        <h3>Informações básicas da startup</h3>
                                        <asp:Label ID="lblIdUser" runat="server" Text='' CssClass="invisible"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div>
                                                <asp:Label ID="lblNomeStartup" runat="server" CssClass="label1" for="txtNomeStartup" Text="Nome"></asp:Label>
                                                <asp:TextBox ID="txtNomeStartup" runat="server" CssClass="textbox" MaxLength="50"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="row">
                                                <div class="col-md-4 sem-padding">
                                                    <label class="label2 cmb1">Categoria: </label>
                                                </div>
                                                <div class="col-md-8 sem-padding">
                                                    <asp:DropDownList ID="ddlCategoriaStartup" runat="server" CssClass="cadastro-dropdown cmb1">
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

                                    </div>

                                    <div class="row">
                                        <div class="col-md-8">
                                            <div>
                                                <asp:Label ID="lblSloganStartup" runat="server" CssClass="label1" for="txtSloganStartup" Text="Slogan"></asp:Label>
                                                <asp:TextBox ID="txtSloganStartup" runat="server" CssClass="textbox" MaxLength="250"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="row">
                                                <div class="col-md-6 sem-padding">
                                                    <label class="label2 cmb1">Ano de Fundação: </label>
                                                </div>
                                                <div class="col-md-6 sem-padding">
                                                    <asp:DropDownList ID="ddlAnoStartup" runat="server" CssClass="cadastro-dropdown cmb1">
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
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 height-maior">
                                            <div>
                                                <asp:Label ID="lblDescricaoStartup" runat="server" CssClass="label1" for="txtDescricaoStartup" Text="Descrição"></asp:Label>
                                                <asp:TextBox ID="txtDescricaoStartup" runat="server" CssClass="textbox multiline" TextMode="MultiLine"></asp:TextBox>   
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div>
                                                <label class="label1 active" for="txtPaisStartup">País</label>
                                                <asp:TextBox ID="txtPaisStartup" runat="server" CssClass="textbox" Enabled="False" Text="Brasil"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                            <div>
                                                <asp:Label ID="lblUFStartup" runat="server" CssClass="label1" for="txtUFStartup" Text="UF"></asp:Label>
                                                <asp:TextBox ID="txtUFStartup" runat="server" CssClass="textbox" MaxLength="2"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div>
                                                <asp:Label ID="lblCidadeStartup" runat="server" CssClass="label1" for="txtCidadeStartup" Text="Cidade"></asp:Label>
                                                <asp:TextBox ID="txtCidadeStartup" runat="server" CssClass="textbox" MaxLength="25" Style="text-transform: uppercase;"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="row">
                                                <div class="col-md-3 col-xs-3 sem-padding">
                                                    <label class="label2">Logo:</label>
                                                    <div class="center icon-alerta-arquivo">
                                                        <img src="img/cadastro-startup/information.png" class="info-img">
                                                        <div class="alerta-arquivo">
                                                            <p>
                                                                .PNG, .JPG ou .JPEG - máximo 10MB.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-9 col-xs-9 sem-padding">
                                                    <label for="fulImgStartup" class="custom-file-upload">
                                                        <i class="fa fa-cloud-upload"></i>Upload
                                                    </label>
                                                    <asp:FileUpload ID="fulImgStartup" runat="server" CssClass="btnLogoStartup" type="file" />
                                                    <br />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12 box-button">
                                            <ul class="list-unstyled list-inline">
                                                <li>
                                                    <button type="button" class="prev-step btnPrevNext" style="display: none;"><i class="fa fa-chevron-left"></i>Voltar</button>
                                                </li>
                                                <li>
                                                    <asp:Button ID="btnNext1" runat="server" Text="Próximo" CssClass="btnPrevNext" OnClick="btnNext1_Click" />
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="vw2" runat="server">
                                <div id="menu2" class="conteudo altura">
                                    <div class="titulo-views">
                                        <h3>Informações avançadas da startup</h3>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 espaco-cadastro">
                                            <div>
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
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div>
                                                <asp:label ID="lblCNPJStartup" runat="server" CssClass="label1" for="txtCNPJStartup">CNPJ</asp:label>
                                                <asp:TextBox ID="txtCNPJStartup" runat="server" CssClass="textbox" TextMode="Number" MaxLength="14"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="sem-textbox">
                                                <label class="label2">Número de Sócios</label>
                                                <asp:DropDownList ID="ddlNumSociosStartup" runat="server" CssClass="cadastro-dropdown">
                                                    <asp:ListItem>Selecione</asp:ListItem>
                                                    <asp:ListItem>De 1 - 5</asp:ListItem>
                                                    <asp:ListItem>De 5 - 10</asp:ListItem>
                                                    <asp:ListItem>De 10 - 15</asp:ListItem>
                                                    <asp:ListItem>Mais de 15</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="sem-textbox">
                                                <label class="label2">Investimento médio necessário: </label>
                                                <asp:DropDownList ID="ddlInvestimentoStartup" runat="server" CssClass="cadastro-dropdown">
                                                    <asp:ListItem>Selecione</asp:ListItem>
                                                    <asp:ListItem>Menos de R$500</asp:ListItem>
                                                    <asp:ListItem>De R$500 - R$1000</asp:ListItem>
                                                    <asp:ListItem>De R$1000 - R$1500</asp:ListItem>
                                                    <asp:ListItem>De R$1500 - R$2000</asp:ListItem>
                                                    <asp:ListItem>De R$2000 - R$2500</asp:ListItem>
                                                    <asp:ListItem>De R$2500 - mais</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 espaco-cadastro">
                                            <div>
                                                <label class="label2">Faturamento médio: </label>
                                                <asp:RadioButtonList ID="rblFaturamentoStartup" runat="server" CssClass="radiobutton-part2 radio radio-inline radioButton faturamento">
                                                    <asp:ListItem>Não fatura</asp:ListItem>
                                                    <asp:ListItem>Menos de R$500</asp:ListItem>
                                                    <asp:ListItem>De R$500 - R$1000</asp:ListItem>
                                                    <asp:ListItem>De R$1000 - R$1500</asp:ListItem>
                                                    <asp:ListItem>De R$1500 - R$2000</asp:ListItem>
                                                    <asp:ListItem>De R$2000 - R$2500</asp:ListItem>
                                                    <asp:ListItem>De R$2500 - mais</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-md-12 box-button">
                                            <ul class="list-unstyled list-inline">
                                                <li>
                                                    <asp:Button ID="btnPrev2" runat="server" Text="Voltar" CssClass="btnPrevNext" OnClick="btnPrev2_Click" />
                                                </li>
                                                <li>
                                                    <asp:Button ID="btnNext2" runat="server" Text="Próximo" CssClass="btnPrevNext" OnClick="btnNext2_Click" />
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="vw3" runat="server">
                                <div id="menu3" class="conteudo altura">
                                    <div class="titulo-views">
                                        <h3>Redes sociais da startup</h3>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <asp:Label ID="lblEmailStartup" runat="server" CssClass="label1" for="txtEmailStartup" Text="Email da Startup"></asp:Label>
                                                <asp:TextBox ID="txtEmailStartup" runat="server" CssClass="textbox"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <asp:Label ID="lblSiteStartup" runat="server" CssClass="label1" for="txtSiteStartup" Text="Site da Startup"></asp:Label>
                                                <asp:TextBox ID="txtSiteStartup" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <asp:Label ID="lblVideoStartup" runat="server" CssClass="label1" for="txtVideoStartup" Text="Vídeo da Startup"></asp:Label>
                                                <asp:TextBox ID="txtVideoStartup" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <asp:Label ID="lblFacebookStartup" runat="server" CssClass="label1" for="txtFacebookStartup" Text="Facebook da Startup"></asp:Label>
                                                <asp:TextBox ID="txtFacebookStartup" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <asp:Label ID="lblTwitterStartup" runat="server" CssClass="label1" for="txtTwitterStartup" Text="Twitter da Startup"></asp:Label>
                                                <asp:TextBox ID="txtTwitterStartup" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <asp:Label ID="lblYoutubeStartup" runat="server" CssClass="label1" for="txtYoutubeStartup" Text="Youtube da Startup"></asp:Label>
                                                <asp:TextBox ID="txtYoutubeStartup" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12 box-button">
                                            <ul class="list-unstyled list-inline">
                                                <li>
                                                    <asp:Button ID="btnPrev3" runat="server" Text="Voltar" CssClass="btnPrevNext" OnClick="btnPrev3_Click" />
                                                </li>
                                                <li>
                                                    <asp:Button ID="btnNext3" runat="server" Text="Próximo" CssClass="btnPrevNext" OnClick="btnNext3_Click" />
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="vw4" runat="server">
                                <div id="menu4" class="conteudo concluir">
                                    <div class="titulo-views">
                                        <h3>Concluir cadastro da startup</h3>
                                    </div>
                                    <!-- PARTE 1 -->
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div>
                                                <label class="label1 active" for="txtNomeConcluir">Nome da Startup</label>
                                                <asp:TextBox ID="txtNomeConcluir" runat="server" CssClass="textbox" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Campo Obrigatório" CssClass="error" ControlToValidate="txtNomeConcluir"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="row">
                                                <div class="col-md-4 sem-padding">
                                                    <label class="label2 cmb1">Categoria: </label>
                                                </div>
                                                <div class="col-md-8 sem-padding">
                                                    <asp:DropDownList ID="ddlCategoriaConcluir" runat="server" CssClass="cadastro-dropdown cmb1">
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
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" InitialValue="Selecione" ErrorMessage="*Campo Obrigatório" CssClass="error" ControlToValidate="ddlCategoriaConcluir"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div>
                                                <label class="label1 active" for="txtNomeStartup">Slogan</label>
                                                <asp:TextBox ID="txtSloganConcluir" runat="server" CssClass="textbox" MaxLength="250"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="*Campo Obrigatório" CssClass="error" ControlToValidate="txtSloganConcluir"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="row">
                                                <div class="col-md-6 sem-padding">
                                                    <label class="label2 cmb1">Ano de Fundação: </label>
                                                </div>
                                                <div class="col-md-6 sem-padding">
                                                    <asp:DropDownList ID="ddlAnoConcluir" runat="server" CssClass="cadastro-dropdown cmb1">
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
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 height-maior">
                                            <div>
                                                <label class="label1 active" for="txtDescricaoStartup">Descrição</label>
                                                <asp:TextBox ID="txtDescricaoConcluir" runat="server" CssClass="textbox multiline" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*Campo Obrigatório" CssClass="error" ControlToValidate="txtDescricaoConcluir"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                            <div>
                                                <label class="label1 active" for="txtPaisStartup">País</label>
                                                <asp:TextBox ID="txtPaisConcluir" runat="server" CssClass="textbox" Enabled="False" Text="Brasil"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                            <div>
                                                <label class="label1 active" for="txtUFStartup">UF</label>
                                                <asp:TextBox ID="txtUFConcluir" runat="server" CssClass="textbox" MaxLength="2"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div>
                                                <label class="label1 active" for="txtCidadeStartup">Cidade</label>
                                                <asp:TextBox ID="txtCidadeConcluir" runat="server" CssClass="textbox" MaxLength="25" Style="text-transform: uppercase;"></asp:TextBox>
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
                                                    <label for="fulLogoConcluir" class="custom-file-upload">
                                                        <i class="fa fa-cloud-upload"></i>Upload
                                                    </label>
                                                    <asp:FileUpload ID="fulLogoConcluir" runat="server" Text="Upload" CssClass="btnLogoStartup" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- PARTE 2 -->
                                    <div class="row">
                                        <div class="col-md-12 espaco-cadastro">
                                            <div>
                                                <label class="label2">Estágio da Startup</label>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*Campo Obrigatório" CssClass="error error-diferente" ControlToValidate="rblEstagioConcluir"></asp:RequiredFieldValidator><br />
                                                <asp:RadioButtonList ID="rblEstagioConcluir" runat="server" CssClass="radiobutton-part2 radio radio-inline radioButton">
                                                    <asp:ListItem>Ideia</asp:ListItem>
                                                    <asp:ListItem>Desenvolvimento</asp:ListItem>
                                                    <asp:ListItem>Funcionando</asp:ListItem>
                                                    <asp:ListItem>Lucrando (Já entrou o primeiro real)</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div>
                                                <label class="label1 active" for="txtCNPJStartup">CNPJ</label>
                                                <asp:TextBox ID="txtCNPJConcluir" runat="server" CssClass="textbox" TextMode="Number" MaxLength="14"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="sem-textbox">
                                                <label class="label2">Número de Sócios</label>
                                                <asp:DropDownList ID="ddlNumSociosConcluir" runat="server" CssClass="cadastro-dropdown">
                                                    <asp:ListItem>selecione</asp:ListItem>
                                                    <asp:ListItem>De 1 - 5</asp:ListItem>
                                                    <asp:ListItem>De 5 - 10</asp:ListItem>
                                                    <asp:ListItem>De 10 - 15</asp:ListItem>
                                                    <asp:ListItem>Mais de 15</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" InitialValue="Selecione" ErrorMessage="*Campo Obrigatório" CssClass="error outros-error" ControlToValidate="ddlNumSociosConcluir"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="sem-textbox">
                                                <label class="label2">Investimento médio necessário: </label>
                                                <asp:DropDownList ID="ddlInvestimentoConcluir" runat="server" CssClass="cadastro-dropdown">
                                                    <asp:ListItem>selecione</asp:ListItem>
                                                    <asp:ListItem>De R$500 - R$1000</asp:ListItem>
                                                    <asp:ListItem>De R$1000 - R$1500</asp:ListItem>
                                                    <asp:ListItem>De R$1500 - R$2000</asp:ListItem>
                                                    <asp:ListItem>De R$2000 - R$2500</asp:ListItem>
                                                    <asp:ListItem>De R$2500 - mais</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" InitialValue="Selecione" ErrorMessage="*Campo Obrigatório" CssClass="error outros-error" ControlToValidate="ddlInvestimentoConcluir"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 espaco-cadastro">
                                            <div>
                                                <label class="label2">Faturamento médio: </label>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*Campo Obrigatório" CssClass="error error-diferente" ControlToValidate="rblFaturamentoConcluir"></asp:RequiredFieldValidator><br />
                                                <asp:RadioButtonList ID="rblFaturamentoConcluir" runat="server" CssClass="radiobutton-part2 radio radio-inline radioButton faturamento">
                                                    <asp:ListItem>De R$500 - R$1000</asp:ListItem>
                                                    <asp:ListItem>De R$1000 - R$1500</asp:ListItem>
                                                    <asp:ListItem>De R$1500 - R$2000</asp:ListItem>
                                                    <asp:ListItem>De R$2000 - R$2500</asp:ListItem>
                                                    <asp:ListItem>De R$2500 - mais</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                    </div>
                                 

                                    <!-- PARTE 3 -->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtEmailConcluir">Email da Startup</label>
                                                <asp:TextBox ID="txtEmailConcluir" runat="server" CssClass="textbox" TextMode="Email"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*Campo Obrigatório" CssClass="error" ControlToValidate="txtEmailConcluir"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtSiteStartup">Site da Startup</label>
                                                <asp:TextBox ID="txtSiteConcluir" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtVideoStartup">Vídeo da Startup</label>
                                                <asp:TextBox ID="txtVideoConcluir" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtFacebookStartup">Facebook da Startup</label>
                                                <asp:TextBox ID="txtFacebookConcluir" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtTwitterStartup">Twitter da Startup</label>
                                                <asp:TextBox ID="txtTwitterConcluir" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div>
                                                <label class="label1 active" for="txtYoutubeStartup">Youtube da Startup</label>
                                                <asp:TextBox ID="txtYoutubeConcluir" runat="server" CssClass="textbox" TextMode="Url"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <!--Confirmação que concorda com os termos de uso-->
                                    <div class="row">
                                        <div class="col-md-12 ckbConfirmar">
                                            <asp:CheckBox ID="ckbConfirmar" runat="server" CssClass="checkbox " Text="Eu li e concordo com os Termos de Uso e Responsabilidade da MindUp." />
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12 box-button">
                                            <ul class="list-unstyled list-inline">
                                                <li>
                                                    <asp:Button ID="btnPrev4" runat="server" Text="Voltar" CssClass="btnPrevNext" OnClick="btnPrev4_Click" />
                                                </li>
                                                <li>
                                                    <asp:Button ID="btnNext4" runat="server" Text="Concluir" CssClass="btnPrevNext" OnClick="btnNext4_Click" />
                                                </li>
                                            </ul>
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
                                                <asp:Button ID="Button1" runat="server" Text="Esportes" /></li>
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
