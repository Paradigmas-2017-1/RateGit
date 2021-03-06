<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'rating.label', default: 'Rating')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-rating" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create btn btn-lg btn-warning" action="create" style="margin-left: 20px"><g:message code="Nova Avaliação" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-rating" class="content scaffold-list table" role="main">
            <h1><g:message code="Lista de Avaliações" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${ratingList}" />

            <div class="pagination">
                <g:paginate total="${ratingCount ?: 0}" />
            </div>
        </div>
    </body>
</html>