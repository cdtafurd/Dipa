<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
<div class="registro">
<h1>Registro</h1>
<p>
	Por favor ingresa tus datos antes de continuar
</p>
<g:form action="save">
	<fieldset>
	<table>
		<tr>
			<td>
				<div class="right fieldcontain ${hasErrors(bean: usuarioInstance, field: 'documento', 'error')} ">
					<label for="documento">
						<g:message code="usuario.documento.label" default="Documento" />
						<span class="required-indicator">*</span>
					</label>
				</div>
			</td>
			<td>
				<div class="left fieldcontain ${hasErrors(bean: usuarioInstance, field: 'documento', 'error')} ">
					<g:textField name="documento" value="${documento}" required="required"/>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="right fieldcontain ${hasErrors(bean: usuarioInstance, field: 'tipoDocumento', 'error')} ">
					<label for="tipoDocumento">
						<g:message code="usuario.tipoDocumento.label" default="Tipo Documento" />
						<span class="required-indicator">*</span>
					</label>
				</div>
			</td>
			<td>
				<div class="left fieldcontain ${hasErrors(bean: usuarioInstance, field: 'tipoDocumento', 'error')} ">
					<g:select name="tipoDocumento" from="${simulador.Usuario.constraints.tipoDocumento.inList}"  value="${usuarioInstance?.tipoDocumento}" valueMessagePrefix="usuario.tipoDocumento"/>
				</div>
			</td>
		</tr>
		<tr>
			<td><div class="right fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} ">
					<label for="nombre">
						<g:message code="usuario.nombre.label" default="Nombre" />
						<span class="required-indicator">*</span>
					</label>

				</div></td>
			<td>
				<div class="left fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} ">
					<g:textField name="nombre" value="${usuarioInstance?.nombre}" required="required"/>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="right fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} ">
					<label for="email" > <g:message
							code="usuario.email.label" default="Email" /> <span
						class="required-indicator">*</span>
					</label>
				</div>
			</td>
			<td><div class="left fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} ">
					<g:field type="email" name="email" value="${usuarioInstance?.email}" required="required"/>
				</div></td>
		</tr>
		<%--sexo--%>
		<tr>
			<td>
				<div class="right fieldcontain ${hasErrors(bean: usuarioInstance, field: 'sexo', 'error')} ">
					<label for="sexo" > <g:message
							code="usuario.sexo.label" default="Sexo" /> <span
						class="required-indicator">*</span>
					</label>
				</div>
			</td>
			<td>
				<div class="left fieldcontain ${hasErrors(bean: usuarioInstance, field: 'sexo', 'error')} ">
					<g:select name="sexo" from="${simulador.Usuario.constraints.sexo.inList}"  value="${usuarioInstance?.sexo}" valueMessagePrefix="usuario.sexo"/>
				</div>
			</td>
		</tr>
		<%--fecha de nacimiento--%>
		<tr>
			<td>
				<div class="right fieldcontain ${hasErrors(bean: usuarioInstance, field: 'fechaNacimiento', 'error')} ">
					<label for="fechaNacimiento" > 
						<g:message code="usuario.sexo.label" default="Fecha de nacimiento" /> 
						<span class="required-indicator">*</span>
					</label>
				</div>
			</td>
			<td>
				<g:datePicker name="fechaNacimiento" value="${usuarioInstance?.fechaNacimiento}"
              	precision="day" years="${1970..2015}"/>
			</td>
		</tr>

		<tr><td colspan="2"><div class="buttons center"><g:submitButton name="enviar" class="continue" value="Continuar" /></div></td></tr>
	</table>
	</fieldset>

</g:form>
</div>
</body>
</html>