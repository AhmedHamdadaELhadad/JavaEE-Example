

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:useBean id="per" class="Person" scope="request" />
        <jsp:getProperty name="per" property="name" />
        <jsp:getProperty name="per" property="email" />
        <jsp:getProperty name="per" property="Password" />
        
        ${per.name}
        ${requestScope.per.name}

    </body>
</html>
