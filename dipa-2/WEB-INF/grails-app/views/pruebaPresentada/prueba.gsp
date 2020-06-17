<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
	<h1 class="center">Ejercicio</h1>
	
	<g:set var="presentoTodo" value="${session.presentoComponentes[1] && session.presentoComponentes[2] && session.presentoComponentes[3] &&
									   session.presentoComponentes[4] && session.presentoComponentes[5]}" />

	<g:if test="${!presentoTodo}">
		<p class="center">Hola ${session.user.nombre}, a continuaci&oacute;n encontrar&aacute;s los 
		ejemplos de las preguntas que conforman los componentes de la prueba de ingreso.
		</p>
		
		<p class="center">Para comenzar, haz clic sobre uno de los grupos de preguntas que conforman la prueba. Para 
		responder cada grupo se ha asignado un tiempo limite de respuesta, que ser&aacute; 
		controlado con ayuda de un reloj. El tiempo total para responder todos los grupos es de 210 minutos.</p>
		
	</g:if>
	<div>
		<div class="componentes">
			<g:if test="${presentoTodo}">
			
				<h2 class="center">Fin del ejercicio</h2>
				
				<p>Los puntajes que obtuviste para cada uno de los componentes aparecen en las 
				cajas de la parte derecha. Estos puntajes están dados con una media de 10 y una 
				desviaci&oacute;n est&aacute;ndar de 1. El puntaje est&aacute;ndar total est&aacute; dado con una media en 
				500 y una desviaci&oacute;n est&aacute;ndar de 100.</p>
				
				<p>Ahora puedes comparar el puntaje est&aacute;ndar total que obtuviste con el de la cohorte de admitidos 					a la Universidad en semestres anteriores.</p>
				
				<a href="http://admisiones.unal.edu.co/home/pregrado/estadisticas" target="_blank">
					Consultar estad&iacute;sticas de los aspirantes de los semestres anteriores
				</a>
				
				<p>Si lo deseas, despu&eacute;s de cerrar sesi&oacute;n (en el enlace que aparece en la parte 
				superior derecha), puedes ingresar de nuevo con el documento que registraste y 
				responder otros ejemplos.</p>
				<br/>
				
				<table border="0px" cellpadding="0px" cellspacing="0px" >
					<tr height="50">
						<td width="335" style="background-image:url('../images/totEstandar.png')">
				
						</td>
						<td width="125" align="center" style="background-image:url('../images/totPunt.png')">
							${session.puntajeTotal}
						</td>
					</tr>
				</table>
			</g:if>
			<g:else>
				<h2>Grupos</h2>
				<g:if test="${!session.presentoComponentes[1]}">
					<div class="componente">
					<g:link action="componente" params="[componenteId:1]">
						<img src="../images/compComun.png" />
					</g:link>
					</div>
				</g:if>

				<g:if test="${!session.presentoComponentes[2]}">
					<div class="componente">
					<g:link action="componente" params="[componenteId:2]">
						<img src="../images/compMatematicas.png" />
					</g:link>
					</div>
				</g:if>


				<g:if test="${!session.presentoComponentes[3]}">
					<div class="componente">		
					<g:link action="componente" params="[componenteId:3]">
						<img src="../images/compSociales.png" />
					</g:link>
					</div>
				</g:if>


				<g:if test="${!session.presentoComponentes[4]}">
					<div class="componente">
					<g:link action="componente" params="[componenteId:4]">
						<img src="../images/compNaturales.png" />
					</g:link>
					</div>
				</g:if>

				<g:if test="${!session.presentoComponentes[5]}">
					<div class="componente">
					<g:link action="componente" params="[componenteId:5]">
						<img src="../images/compImagenes.png" />
					</g:link>
					</div>
				</g:if>
			</g:else>
		</div>
		
		<div class="puntajes">
			<h2 class="center">Puntaje est&aacute;ndar por componente</h2>
			<div class="resultados-componentes center">
				<div class="resultado">
					<div class="titulo">Matem&aacute;ticas</div>
					<div class="puntaje">${session.puntMate}</div>
				</div>
				<div class="resultado">
					<div class="titulo">Ciencias Naturales</div>
					<div class="puntaje">${session.puntNatu}</div>
				</div>
				<div class="resultado">
					<div class="titulo">Ciencias Sociales</div>
					<div class="puntaje">${session.puntSoci}</div>
				</div>
				<div class="resultado">
					<div class="titulo">An&aacute;lisis de Imagen</div>
					<div class="puntaje">${session.puntImag}</div>
				</div>
				<div class="resultado">
					<div class="titulo">Comprensi&oacute;n de Textos</div>
					<div class="puntaje">${session.puntText}</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		
		<div class="clear">
		</div>
	</div>
	
	
</body>
</html>

