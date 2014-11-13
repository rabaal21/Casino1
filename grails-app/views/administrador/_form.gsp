<%@ page import="casino1.Administrador" %>



<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'idRol', 'error')} ">
	<label for="idRol">
		<g:message code="administrador.idRol.label" default="Id Rol" />
		
	</label>
	<g:field name="idRol" type="number" value="${administradorInstance.idRol}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="administrador.password.label" default="Password" />
		
	</label>
	<g:textField name="password" maxlength="100" value="${administradorInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'idEmpleado', 'error')} ">
	<label for="idEmpleado">
		<g:message code="administrador.idEmpleado.label" default="Id Empleado" />
		
	</label>
	<g:field name="idEmpleado" type="number" value="${administradorInstance.idEmpleado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="administrador.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="100" value="${administradorInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'empleados', 'error')} ">
	<label for="empleados">
		<g:message code="administrador.empleados.label" default="Empleados" />
		
	</label>
	<g:select name="empleados" from="${casino1.Empleado.list()}" multiple="multiple" optionKey="id" size="5" value="${administradorInstance?.empleados*.id}" class="many-to-many"/>

</div>

