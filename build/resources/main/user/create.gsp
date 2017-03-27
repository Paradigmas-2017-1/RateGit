<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
        <asset:stylesheet src="user.css" />
        <style scooped>
            .input-group{
                width: 100%;
            }
        </style>
    </head>
    <body>
        <a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
        </div>
        <center>
            <div id="create-user" class="content scaffold-create" role="main">
                <h1><g:message code="default.create.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.user}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.user}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
                </g:hasErrors>
                <g:form action="save">
                    <fieldset class="form">
                        <f:all bean="user"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </fieldset>
                </g:form>
            </div>
        </center>
        <!--<div class="container">
			<div class="row col-md-offset-4" style="max-width: 350px;">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">Cadastro de Usuário</h1>
	               		<hr />
	               	</div>
	            </div> 
            <div class="main-login main-center">

            <g:form action="save">            
                <form class="form-horizontal">
                    <div class="form-group">
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <input type="text" class="form-control" name="email" id="login"  placeholder="Login"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group ">
                        <button type="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
                    </div>
                    <center>
                        <div class="login-register">
                            <a href="index.php">Login</a>
                        </div>
                    </center>
                </form>
            </g:form>
            </div>
        </div>-->
    </body>
</html>
