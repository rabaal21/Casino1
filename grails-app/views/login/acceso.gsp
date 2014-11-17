<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main1">
		<g:set var="entityName" value="${message(code: 'parametro.label', default: 'Parametro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>         
             <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
     
        </body>
</html>