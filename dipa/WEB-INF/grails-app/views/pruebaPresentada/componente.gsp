<html>
<head>
<meta name="layout" content="main" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Wallpoet">
<r:require modules="imageloader" />

<r:script>
	(function($){
		
		var total=${session.componenteActual.segundos};
		var page = 0;
		var imagesPreguntas = ['../${session.componenteActual.imagenes.source.sort().join('\',\'../ ').replaceAll("\\s","")}']
		
		$(document).ready(function(){
			var elem = $("#pruebaVisor")[0];
			showCurrentPage();
			$("#prev").click(prev);
			$("#next").click(next);
			$("#zoomIn").click(zoomIn);
			$("#zoomOut").click(zoomOut);
		});
		
		
		function showCurrentPage(){
			showSpinner();
			var marginWidthFix = 250;
			var marginHeightFix = marginWidthFix * 1.4;
			var canvas =  $("#pruebaVisor");
			var width = canvas.width() + marginWidthFix;
			var height = canvas.height() + marginHeightFix;
			
			canvas.clearCanvas();
			canvas.drawImage({
				  source: imagesPreguntas[page],
				  x: 0, y: 0,
				  width: width,
				  height: height,
				  fromCenter: false,
				  load: hideSpinner
			});
			
		}
		
		function showSpinner(){
			$("#spinner").show();
		}
		
		function hideSpinner(){
			$("#spinner").hide();
		}
		
		function next(evt){
			evt.preventDefault();
			var nextPage = page + 1;
			if(nextPage < imagesPreguntas.length){
				page = nextPage;
			}else{
				page = 0;
			}
			showCurrentPage();
		}
		
		function prev(evt){
			evt.preventDefault();
			var prevPage = page - 1;
			if(prevPage >= 0){
				page = prevPage;
			}else{
				page = imagesPreguntas.length - 1;
			}
			showCurrentPage();
		}
		
		function zoomIn(evt){
			evt.preventDefault();
			var width = $("canvas").width();
			var height = $("canvas").height();
			$("canvas").width(width * 1.1);
			$("canvas").height(height * 1.1);
			showCurrentPage();
		}
		
		function zoomOut(evt){
			evt.preventDefault();
			var width = $("canvas").width();
			var height = $("canvas").height();
			$("canvas").width(width * 0.9);
			$("canvas").height(height * 0.9);
			showCurrentPage();
		}

		function activeSession(){
			$.ajax({
				url:"${request.contextPath}/PruebaPresentadaController/isActive",
				dataType: 'script',
				type:'GET',
				data: {},
				success: function(data) {},
				error: function(request, status, error) {},
				complete: function() {}
			});
		}

		function crono() {
			var cronom = $("#cronometro");
			var horas = parseInt(total / 3600);
			var minutos = parseInt((total % 3600) / 60);
			var segundos = parseInt((total % 3600) % 60);
			
			if (segundos < 10) {
				segundos = "0" + segundos;
			}
			
			if (minutos < 10) {
				minutos = "0" + minutos;
			}
			
			cronom.text("0" + horas + ":"	+ minutos + ":" + segundos);
			total--;
			if (horas == 0 && minutos == 5 && segundos == 0){
				alert("Te quedan 5 minutos para terminar la prueba");
			}
			if (total < 0) {
				$("#respuestasForm").submit();
			}
		}

		setInterval(function(){
				crono();
				}, 1000);
		
		setInterval(function(){
				activeSession();
				}, 300000);
	
	})(jQuery);
</r:script>
</head>
<body>
	<h1 class="center">
		<g:if test="${session.componenteActual.componente.equals("Matematicas")}">
			<g:set var="grupo" value="Matemáticas" />
		</g:if>
		<g:if test="${session.componenteActual.componente.equals("Sociales")}">
			<g:set var="grupo" value="Ciencias Sociales" />
		</g:if>
		<g:if test="${session.componenteActual.componente.equals("Ciencias")}">
			<g:set var="grupo" value="Ciencias Naturales" />
		</g:if>
		<g:if test="${session.componenteActual.componente.equals("Comun")}">
			<g:set var="grupo" value="Temática Común" />
		</g:if>
		<g:if test="${session.componenteActual.componente.equals("Imagen")}">
			<g:set var="grupo" value="Análisis de la Imagen" />
		</g:if>
		${grupo}
	</h1>

	<table id="componenteWrapper">
		<tr>
			<td>
			A continuaci&oacute;n encontrar&aacute;s las preguntas que hacen parte del grupo ${grupo} de la prueba de 				admisi&oacute;n. 
			En la parte superior del visor encontrar&aacute;s una barra de herramientas que te permitir&aacute; 
			cambiar de p&aacute;gina o mejorar la calidad de las imagenes haciendo zoom.
			</td>
		</tr>
		<tr>
			<td class="center">
				<div id="examen">
					<div style="height: 20px; text-align: center;">
						<img src="${resource(dir: 'images', file: 'ajax-spinner.gif')}"
							id="spinner" />
					</div>
					<a href="#" id="prev"><img src="../data/iface/back.png"></a>
					<a href="#" id="zoomIn"> <img src="../data/iface/zoomIn.png"> </a> 
					<a href="#" id="zoomOut"> <img src="../data/iface/zoomOut.png"> </a>
					<a href="#" id="next"> <img src="../data/iface/next.png"> </a>
					<div id="canvas-wrapper" class="canvas-wrapper center">
						<canvas id="pruebaVisor" width="880" height="1260"></canvas>
					</div>
				</div>
			</td>
		</tr>			
		
		<tr>
			<td class="respuestas left">
				<% Object[] a= new Object[session.componenteActual.cadenaRespuestas.length()] %>
				<% for(int i=0;i<a.size();i++){ a[i]=(i+1)+""; } %> <g:form
					action="comprobar" name="respuestasForm">
					
					<div id="mensajeCierre">
						Por favor, antes de cerrar este componente, responda todas las preguntas y presione Terminar Componente. En
						caso de que cierre esta ventana sin presionar ese botón, ser&aacute; necesario volver a iniciar sesi&oacute;n 
						y presentar nuevamente toda la prueba.
					</div>
					
					<br>
					
					<g:set scope="request" var="total" value="5" />
					<div id="tiempo">
						<div id="tituloCronometro">Tiempo Restante</div>
						<div id="cronometro">
							<br />
						</div>
					</div>
					
					<div class="opciones-respuesta">
						<g:set var="preguntasColumna" value="${a.length / 6 + 1 as Integer}" />
						<table>
							<tr>
								<g:each in="${a}" var="obj" status="i">
									<g:if test="${i % preguntasColumna == 0}">
										<td>
											<table>
												<tr>
													<th></th>
													<th>A</th>
													<th>B</th>
													<th>C</th>
													<th>D</th>
												</tr>
									</g:if>
												<tr>
													<td><input type="radio" name="cb${obj}" value="0"
														checked="checked" style="display: none" /> ${obj}.</td>
													<td><input type="radio" name="cb${obj}" value="1" /></td>
													<td><input type="radio" name="cb${obj}" value="2" /></td>
													<td><input type="radio" name="cb${obj}" value="3" /></td>
													<td><input type="radio" name="cb${obj}" value="4" /></td>												
												</tr>
									<g:if test="${i == a.length -1}">
										<tr class="buttons"><td colspan="5">
										<g:submitButton name="enviar" class="comprobar"
											value="Terminar Componente" />
										</td>
										</tr>
									</g:if>
									<g:if test="${(i+1) % preguntasColumna == 0 || i == a.length - 1}">
											</table>
										</td>
									</g:if>
								</g:each>
							</tr>
						</table>
					</div> 
					<td><input type="hidden" name="idComponenteActual" value="${session.idComponenteActual}" } /></td>
					<td><input type="hidden" name="tiempoInicial" value="${session.tiempoInicial}" } /></td>
					<td><input type="hidden" name="numeroPreguntas" value="${session.componenteActual.cadenaRespuestas.toCharArray().size()}" } /></td>
				</g:form>
			</td>
		</tr>
	</table>
</body>
</html>
