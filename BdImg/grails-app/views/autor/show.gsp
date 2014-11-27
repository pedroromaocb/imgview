
<%@ page import="bdimg.Autor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'autor.label', default: 'Autor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-autor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-autor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list autor">
			
				<g:if test="${autorInstance?.nomeAutor}">
				<li class="fieldcontain">
					<span id="nomeAutor-label" class="property-label"><g:message code="autor.nomeAutor.label" default="Nome Autor" /></span>
					
						<span class="property-value" aria-labelledby="nomeAutor-label"><g:fieldValue bean="${autorInstance}" field="nomeAutor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorInstance?.emailAutor}">
				<li class="fieldcontain">
					<span id="emailAutor-label" class="property-label"><g:message code="autor.emailAutor.label" default="Email Autor" /></span>
					
						<span class="property-value" aria-labelledby="emailAutor-label"><g:fieldValue bean="${autorInstance}" field="emailAutor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorInstance?.imagens}">
				<li class="fieldcontain">
					<span id="imagens-label" class="property-label"><g:message code="autor.imagens.label" default="Imagens" /></span>
					
						<g:each in="${autorInstance.imagens}" var="i">
						<span class="property-value" aria-labelledby="imagens-label"><g:link controller="imagem" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:autorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${autorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
