<html>
  <head>
    <meta name="layout" content="main" />
    <!-- <link rel="stylesheet" href="${resource(dir: 'assets/javascripts/user', file: 'login.css')}" type="text/css"> -->
    <title>Login</title>
    <style scooped>
      .login-form {
        padding: 90px;
        text-align: center;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="row login-form">
      	<div class="col-md-4 col-md-offset-4">
      		<div class="panel panel-default">
  			  	<div class="panel-heading">
  			    	<h3 class="panel-title">Login</h3>
              <g:if test="${flash.message}">
                <div class="message">${flash.message}</div>
              </g:if>
  			 	  </div>
  			  	<div class="panel-body">
              <g:form action="authenticate" method="post" >
  			    	<form accept-charset="UTF-8" role="form">
                <fieldset>
  			    	  	<div class="form-group">
  			    		    <input class="form-control" id="login" placeholder="username" name="login" type="text">
                    <!-- <input type="text" id="login" name="login"/> -->
  			    		  </div>
    			    		<div class="form-group">
    			    		  <input class="form-control" id="password" placeholder="password" name="password" type="password" value="">
    			    		</div>
                  <input class="btn btn-sm btn-success btn-block" type="submit" value="Login">
                  <a href="/user/create" class="btn btn-sm btn-primary btn-block" style="text-decoration: none;">Register</a>
  			    	  </fieldset>
  			      </form>
              </g:form>
  			    </div>
    			</div>
    		</div>
    	</div>
    </div>
  </body>
</html>
