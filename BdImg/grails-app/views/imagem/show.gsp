
<%@ page import="bdimg.Imagem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imagem.label', default: 'Imagem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-imagem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-imagem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list imagem">
			
				<g:if test="${imagemInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="imagem.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${imagemInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imagemInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="imagem.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${imagemInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imagemInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="imagem.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:fieldValue bean="${imagemInstance}" field="data"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imagemInstance?.nota}">
				<li class="fieldcontain">
					<span id="nota-label" class="property-label"><g:message code="imagem.nota.label" default="Nota" /></span>
					
						<span class="property-value" aria-labelledby="nota-label"><g:fieldValue bean="${imagemInstance}" field="nota"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imagemInstance?.fileNome}">
				<li class="fieldcontain">
					<span id="fileNome-label" class="property-label"><g:message code="imagem.fileNome.label" default="File Nome" /></span>
					
						<span class="property-value" aria-labelledby="fileNome-label"><g:fieldValue bean="${imagemInstance}" field="fileNome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imagemInstance?.fileFormato}">
				<li class="fieldcontain">
					<span id="fileFormato-label" class="property-label"><g:message code="imagem.fileFormato.label" default="File Formato" /></span>
					
						<span class="property-value" aria-labelledby="fileFormato-label"><g:fieldValue bean="${imagemInstance}" field="fileFormato"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imagemInstance?.fileImg}">
				<li class="fieldcontain">
					<span id="fileImg-label" class="property-label"><g:message code="imagem.fileImg.label" default="File Img" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imagemInstance?.autor}">
				<li class="fieldcontain">
					<span id="autor-label" class="property-label"><g:message code="imagem.autor.label" default="Autor" /></span>
					
						<span class="property-value" aria-labelledby="autor-label"><g:link controller="autor" action="show" id="${imagemInstance?.autor?.id}">${imagemInstance?.autor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:imagemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${imagemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
