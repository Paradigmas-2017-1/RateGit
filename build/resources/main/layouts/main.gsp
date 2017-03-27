<!doctype html>
<html lang="en" class="no-js">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>
        <g:layoutTitle default="Grails" />
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <asset:stylesheet src="application.css" />
    <g:layoutHead/>
</head>

<body>
    <nav class="navbar  navbar-inverse  navbar-fixed-top">
        <div class="container">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only"> Toggle navigation</span>
            <span class="icon-bar"> </span>
            <span class="icon-bar"> </span>
            <span class="icon-bar"> </span>
        </button>
            <a class="navbar-brand" href="/" style="text-decoration: none;"> Rate Git</a>
            <g:if test="${session.user}">
                <a class="navbar-brand" href="/" style="text-decoration: none;"> Rate Git</a>
            </g:if>
            <a class="navbar-brand" href="/" style="text-decoration: none;"> Rate Git</a>
        </div>
    </nav>
    <div style="padding-bottom: 100px;">
    </div>
    <g:layoutBody/>
    <div class="navbar  navbar-inverse navbar-fixed-bottom" style="position: relative; bottom: 0;">
        <div class="container">
            <div class="navbar-text pull=left">
                <p> © Universidade de Brasília / Paradigmas 2017.</p>
            </div>
        </div>
        <div id="spinner" class="spinner" style="display:none;">
            <g:message code="spinner.alt" default="Loading&hellip;" />
        </div>
    </div>
    <asset:javascript src="application.js" />

</body>

</html>