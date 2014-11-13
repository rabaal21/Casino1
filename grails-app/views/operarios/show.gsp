
<%@ page import="casino1.Operarios" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'operarios.label', default: 'Operarios')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-operarios" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-operarios" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list operarios">
			
				<g:if test="${operariosInstance?.idRol}">
				<li class="fieldcontain">
					<span id="idRol-label" class="property-label"><g:message code="operarios.idRol.label" default="Id Rol" /></span>
					
						<span class="property-value" aria-labelledby="idRol-label"><g:fieldValue bean="${operariosInstance}" field="idRol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operariosInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="operarios.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${operariosInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operariosInstance?.idEmpleado}">
				<li class="fieldcontain">
					<span id="idEmpleado-label" class="property-label"><g:message code="operarios.idEmpleado.label" default="Id Empleado" /></span>
					
						<span class="property-value" aria-labelledby="idEmpleado-label"><g:fieldValue bean="${operariosInstance}" field="idEmpleado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operariosInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="operarios.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${operariosInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operariosInstance?.empleados}">
				<li class="fieldcontain">
					<span id="empleados-label" class="property-label"><g:message code="operarios.empleados.label" default="Empleados" /></span>
					
						<g:each in="${operariosInstance.empleados}" var="e">
						<span class="property-value" aria-labelledby="empleados-label"><g:link controller="empleado" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:operariosInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${operariosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
