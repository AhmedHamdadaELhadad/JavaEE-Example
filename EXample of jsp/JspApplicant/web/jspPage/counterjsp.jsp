<%-- 
    Document   : counterjsp
    Created on : Aug 29, 2021, 2:00:07 AM
    Author     : SAMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Wellcome you are visitor num</h1>
        <%--  delecration--%>
        <%! int count =0 ;  %>
         <%--  script lat--%>
        <%  ++count ;%>
         <%--  Expression --%>
        <%= count  %>
        


    </body>
</html>
