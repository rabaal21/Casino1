<%@ page import="casino1.Operarios" %>



<div class="fieldcontain ${hasErrors(bean: operariosInstance, field: 'idRol', 'error')} ">
	<label for="idRol">
		<g:message code="operarios.idRol.label" default="Id Rol" />
		
	</label>
	<g:field name="idRol" type="number" value="${operariosInstance.idRol}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operariosInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="operarios.password.label" default="Password" />
		
	</label>
	<g:textField name="password" maxlength="100" value="${operariosInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operariosInstance, field: 'idEmpleado', 'error')} ">
	<label for="idEmpleado">
		<g:message code="operarios.idEmpleado.label" default="Id Empleado" />
		
	</label>
	<g:field name="idEmpleado" type="number" value="${operariosInstance.idEmpleado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operariosInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="operarios.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="100" value="${operariosInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operariosInstance, field: 'empleados', 'error')} ">
	<label for="empleados">
		<g:message code="operarios.empleados.label" default="Empleados" />
		
	</label>
	<g:select name="empleados" from="${casino1.Empleado.list()}" multiple="multiple" optionKey="id" size="5" value="${operariosInstance?.empleados*.id}" class="many-to-many"/>

</div>

