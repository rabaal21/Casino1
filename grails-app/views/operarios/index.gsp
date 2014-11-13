
<%@ page import="casino1.Operarios" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'operarios.label', default: 'Operarios')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-operarios" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-operarios" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="idRol" title="${message(code: 'operarios.idRol.label', default: 'Id Rol')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'operarios.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="idEmpleado" title="${message(code: 'operarios.idEmpleado.label', default: 'Id Empleado')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'operarios.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${operariosInstanceList}" status="i" var="operariosInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${operariosInstance.id}">${fieldValue(bean: operariosInstance, field: "idRol")}</g:link></td>
					
						<td>${fieldValue(bean: operariosInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: operariosInstance, field: "idEmpleado")}</td>
					
						<td>${fieldValue(bean: operariosInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${operariosInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
