<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'repository.label', default: 'Repository')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-repository" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create btn btn-lg btn-warning" action="create" style="margin-left: 20px"><g:message code="Novo Repositório" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-repository" class="content scaffold-list table" role="main">
            <h1><g:message code="Lista de Repositórios" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${repositoryList}" />
            <div class="pagination">
                <g:paginate total="${repositoryCount ?: 0}" />
            </div>
        </div>
    </body>
</html>