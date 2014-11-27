<%@ page import="bdimg.Autor" %>



<div class="fieldcontain ${hasErrors(bean: autorInstance, field: 'nomeAutor', 'error')} required">
	<label for="nomeAutor">
		<g:message code="autor.nomeAutor.label" default="Nome Autor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeAutor" required="" value="${autorInstance?.nomeAutor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorInstance, field: 'emailAutor', 'error')} required">
	<label for="emailAutor">
		<g:message code="autor.emailAutor.label" default="Email Autor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailAutor" required="" value="${autorInstance?.emailAutor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorInstance, field: 'imagens', 'error')} ">
	<label for="imagens">
		<g:message code="autor.imagens.label" default="Imagens" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${autorInstance?.imagens?}" var="i">
    <li><g:link controller="imagem" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="imagem" action="create" params="['autor.id': autorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'imagem.label', default: 'Imagem')])}</g:link>
</li>
</ul>


</div>

