<html>
<head>
	<meta name="layout" content="main" />
	<script>
		if (${session.user!=null}){
			alert("Tienes otra sesión abierta en este momento. Si entras de nuevo perderas los adelantos que hayas realizado.");
		}
	</script>
</head>
<body>
	<div id="spacer">
	
	<h1 class="center">Bienvenido a la Demostraci&oacute;n Interactiva  de la Prueba de Admisi&oacute;n</h1>
	<script>
	
	</script>
	<div>
		<p>Este espacio fue desarrollado para que conozcas las
			caracter&iacute;sticas generales de la prueba de ingreso a la Universidad
			Nacional de Colombia.</p>

		<p>Puedes interactuar respondiendo a las preguntas que se han
			dispuesto como ejemplo; al terminar cada componente obtendr&aacute;s un
			puntaje que te permitir&aacute; hacerte a una idea sobre tu desempe&ntilde;o. Si
			respondes los cinco componentes el sistema calcular&aacute; un puntaje est&aacute;ndar
			total, con el cual podr&aacute;s ubicar tu desempeño con referencia a una cohorte de
			admitidos a la Universidad.</p>

		<p>Esta es una herramienta para que te familiarices con el tipo de
			preguntas y no forma parte del proceso de admisi&oacute;n, ni de los
			resultados que obtengas cuando presentes la prueba de ingreso.</p>

		<p>Para ingresar digita tu n&uacute;mero de identificaci&oacute;n.</p>
	</div>
	
	<g:form action="login" class="login-form">
		<fieldset>
		<legend>Inicio</legend>
		<table>
			<tr>
				<td><div class="fieldcontain required right"><label>Documento de Identidad <span class="required-indicator">*</span></label></div></td>
				<td><div class="fieldcontain required left"><input type="text" name="documento" /></div></td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="buttons center">
						<input type="submit" value="Entrar" class="continue"/>
					</div>
				</td>
			</tr>
		</table>

		</fieldset>
	</g:form>
	
	<p>Esta aplicación funciona correctamente en los siguientes navegadores de 
		Internet:
		<ul>
			<li>Firefox 3.6.X o superior bajo Windows y Linux.</li>
			<li>Internet Explorer 9 o superior bajo Windows.</li>
			<li>Google Chrome 10.X o superior bajo Windows y Linux.</li>
		</ul>
	</p>
		
	<p id="mensaje-menor-ie9" class="error">
		Hemos detectado que tu navegador de Internet es una versi&oacute;n anterior a Internet Explorer 9.
		Para una mejor interacci&oacute;n te recomendamos actualizar tu navegador a una versi&oacute;n m&aacute;s reciente.
	</p>
		
	
	</div>

</body>
</html>
