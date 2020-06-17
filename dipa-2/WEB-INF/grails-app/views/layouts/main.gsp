<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="layout" content="main"/>
<link href="${resource(dir: 'css', file: 'allCSS.css')}" rel="stylesheet" type="text/css" />
<!--[if lt IE 9]>
<link href="${resource(dir: 'css', file: 'ie.css')}" rel="stylesheet" type="text/css" />		
<![endif]-->
<link rel="icon" href="${resource(dir: 'images', file: 'favicon.png')}" type="image/png" />
<script src="http://www.unal.edu.co/tjs/menusUN.js" type="text/javascript" language="javascript"></script>
<title>Universidad Nacional de Colombia</title>
<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<div id="contenedor_info">
		<div id="headerUN">
			<div class="lunal">
				<div class="escudon">
					<a href="http://www.unal.edu.co"><img
						src="${resource(dir: 'images', file: 'Escudo_UN.png')}" alt="escudo" width="177" height="75" /></a>
				</div>
				<div class="escudorep">
					<img src="${resource(dir: 'images', file: 'escudorep.jpg')}" alt="escudo colombia" width="70"
						height="82" />
				</div>
				<div style="float: left">
					<div class="depen">Direcci&oacute;n Nacional de Admisiones</div>
					<div class="tipage">Demostraci&oacute;n Interactiva  de la Prueba de Admisi&oacute;n</div>
				</div>
			</div>
			<div class="bar">
				<div class="in">
					<g:link uri="/">
						<img src="${resource(dir: 'images', file: 'inicio.jpg')}" alt="inicio" width="84" height="18" />
					</g:link>
				</div>
				<div class="bard">
					<div class="sed" id="sedes_un">
						<img src="${resource(dir: 'images', file: 'sedes_un.jpg')}" alt="sedes" width="59"
							height="18" />
						<div class="menuSedes"></div>
					</div>
					<div class="cor" id="correo_un">
						<img src="${resource(dir: 'images', file: 'correo.png')}" alt="correo" width="67" height="18" />
						<div class="menuCorreo"></div>
					</div>
					<div id="buscador_un">
						<form action="http://www.bogota.unal.edu.co/buscar.html"
							target="_parent">
							<input value="015779202118420744272:qk5u5rpebla" type="hidden"
								name="cx" /> <input value="FORID:11" type="hidden" name="cof" />
							<input class="field" size="15" name="q" /> 
							<input name="submit"
								type="image" value="Buscar" src="${resource(dir: 'images', file: 'buscargo.gif')}"
								alt="go" align="top" />
						</form>
					</div>
				</div>
				<div class="pd">
					<img src="${resource(dir: 'images', file: 'pd.png')}" alt="pd" width="23" height="18" />
				</div>
			</div>
			<div class="date">
				<g:if test="${session.user!=null}">
					<div class="cerrar-sesion">
						<g:link controller="usuario" action="logout">Cerrar Sesi&oacute;n</g:link>
					</div>
				</g:if>
				<div style="float: right;">
					<iframe src="http://www.plantillasweb.unal.edu.co/fecha.php"
						name="visor" marginwidth="0" marginheight="0" id="visor"
						width="156" frameborder="0" height="18" scrolling="auto"></iframe>
				</div>

			</div>

		</div>
		<div id="Contenido_UN">
			<g:hasErrors>
				<ul class="errors" role="alert">
					<g:eachError bean="${usuarioInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
						<g:message error="${error}" />
						</li>
					</g:eachError>
				</ul>
			</g:hasErrors> 
			<g:if test="${flash.message!=null}">
				<div class="message">
					${flash.message}
				</div>
			</g:if> 
			<div id="body">
				<g:layoutBody/>
			</div>

		</div>
		<div id="piedepagina">
				<div id="piedireccion">
					<b>Universidad Nacional de Colombia</b><br /> Carrera 45 No 26-85
					- Edificio Uriel Guti&eacute;rrez<br /> Bogot&aacute; D.C. -
					Colombia
				</div>
				<div id="piescudo">
					<a href="http://www.gobiernoenlinea.gov.co/"> <img
						src="${resource(dir: 'images', file: 'gobierno.gif')}" alt="Gobierno en Lí­nea" border="0"
						width="58" height="48" />
					</a> <a href="http://www.agenciadenoticias.unal.edu.co/"> <img
						src="${resource(dir: 'images', file: 'agencia.gif')}" alt="Agencia de Noticias UN"
						border="0" width="84" height="48" />
					</a> <a href="http://www.contaduria.gov.co"> <img
						src="${resource(dir: 'images', file: 'contad.png')}" border="0" width="51" height="48"
						alt="Contadur&iacute;a General de la Naci&oacute;n" />
					</a>
				</div>
				<div id="pietelefono">
					<span class="avisolegal"><a
						href="http://www.unal.edu.co/legal.pdf">Aviso Legal</a> </span>
				</div>
		</div>
	</div>
	<r:layoutResources />
</body>
</html>
