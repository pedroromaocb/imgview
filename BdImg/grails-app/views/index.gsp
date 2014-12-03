<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>BD Web Imagens</h1>
                        <ul>
                            Armazene as suas fotos com segurança e organização nos servidores OnLine ... </br>
                        </ul>    
			<h1>UFRN - Telecom/C&T</h1>
			<ul>
                            <li><p>Projeto de Banco de Dados e Engenharia de Software realizado em 2014.2</br></p> </li>
                            <li><p><b>Professor:</b> Hertz Linz</br></p></li>
                            <li><p><h2>Participantes:</h2></br></p></li>
                            <li><p><b>Banco de Dados:</b></br>
                            Pedro Romão</br>
                            Heitor Diogenes</p></br></li>
                            <li><p><b>Engenharia de Software:</b></br>
                            Pedro Romão</br>
                            Eliedson da Silva</br>
                            George Maxwell</p></li>
                            
			</ul>
		</div>
		<div id="page-body" role="main">
			<h1>Bem vindo à página</h1>
			<h2>Abaixo se encontram os links de cadastro:</h2>
                        <p>** DICA: É necessário um autor para realização do cadastro da foto</p>
                        

			<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
                                    <li><g:link controller="imagem" action="index">Controle de Imagens</g:link></li>
                                    <li><g:link controller="autor" action="index">Controle de Autores</g:link></li>
                                    <li><p>Em breve: Localização</p></li>
				</ul>
			</div>
		</div>
	</body>
</html>
