
<%@ page import="casino1.Vendedor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendedor.label', default: 'Vendedor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vendedor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vendedor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vendedor">
			
				<g:if test="${vendedorInstance?.empleados}">
				<li class="fieldcontain">
					<span id="empleados-label" class="property-label"><g:message code="vendedor.empleados.label" default="Empleados" /></span>
					
						<g:each in="${vendedorInstance.empleados}" var="e">
						<span class="property-value" aria-labelledby="empleados-label"><g:link controller="empleado" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${vendedorInstance?.newAttr}">
				<li class="fieldcontain">
					<span id="newAttr-label" class="property-label"><g:message code="vendedor.newAttr.label" default="New Attr" /></span>
					
						<span class="property-value" aria-labelledby="newAttr-label"><g:fieldValue bean="${vendedorInstance}" field="newAttr"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:vendedorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vendedorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
