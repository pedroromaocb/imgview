<%@ page import="bdimg.Imagem" %>



<div class="fieldcontain ${hasErrors(bean: imagemInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="imagem.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${imagemInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imagemInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="imagem.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" required="" value="${imagemInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imagemInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="imagem.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="data" required="" value="${imagemInstance?.data}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imagemInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="imagem.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nota" required="" value="${imagemInstance?.nota}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imagemInstance, field: 'fileNome', 'error')} ">
	<label for="fileNome">
		<g:message code="imagem.fileNome.label" default="File Nome" />
		
	</label>
	<g:textField name="fileNome" value="${imagemInstance?.fileNome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imagemInstance, field: 'fileFormato', 'error')} ">
	<label for="fileFormato">
		<g:message code="imagem.fileFormato.label" default="File Formato" />
		
	</label>
	<g:textField name="fileFormato" value="${imagemInstance?.fileFormato}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imagemInstance, field: 'fileImg', 'error')} ">
	<label for="fileImg">
		<g:message code="imagem.fileImg.label" default="File Img" />
		
	</label>
	<input type="file" id="fileImg" name="fileImg" />

</div>

<div class="fieldcontain ${hasErrors(bean: imagemInstance, field: 'autor', 'error')} required">
	<label for="autor">
		<g:message code="imagem.autor.label" default="Autor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autor" name="autor.id" from="${bdimg.Autor.list()}" optionKey="id" required="" value="${imagemInstance?.autor?.id}" class="many-to-one"/>

</div>

