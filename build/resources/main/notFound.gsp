<!doctype html>
<html>
    <head>
        <title>Page Not Found</title>
        <meta name="layout" content="main">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
    <body>
        <div class="container">
            <div class="row" style="padding-top: 100px;">
                <ul class="errors">
                    <li>Error: Page Not Found (404)</li>
                    <li>Path: ${request.forwardURI}</li>
                </ul>
            </div>
        </div>
    </body>
</html>
