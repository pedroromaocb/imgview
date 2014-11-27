
<%@ page import="bdimg.Imagem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imagem.label', default: 'Imagem')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-imagem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-imagem" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'imagem.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'imagem.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'imagem.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="nota" title="${message(code: 'imagem.nota.label', default: 'Nota')}" />
					
						<g:sortableColumn property="fileNome" title="${message(code: 'imagem.fileNome.label', default: 'File Nome')}" />
					
						<g:sortableColumn property="fileFormato" title="${message(code: 'imagem.fileFormato.label', default: 'File Formato')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${imagemInstanceList}" status="i" var="imagemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${imagemInstance.id}">${fieldValue(bean: imagemInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: imagemInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: imagemInstance, field: "data")}</td>
					
						<td>${fieldValue(bean: imagemInstance, field: "nota")}</td>
					
						<td>${fieldValue(bean: imagemInstance, field: "fileNome")}</td>
					
						<td>${fieldValue(bean: imagemInstance, field: "fileFormato")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${imagemInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
