<%@ page import="casino1.Vendedor" %>



<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'empleados', 'error')} ">
	<label for="empleados">
		<g:message code="vendedor.empleados.label" default="Empleados" />
		
	</label>
	<g:select name="empleados" from="${casino1.Empleado.list()}" multiple="multiple" optionKey="id" size="5" value="${vendedorInstance?.empleados*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendedorInstance, field: 'newAttr', 'error')} required">
	<label for="newAttr">
		<g:message code="vendedor.newAttr.label" default="New Attr" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="newAttr" type="number" value="${vendedorInstance.newAttr}" required=""/>

</div>

