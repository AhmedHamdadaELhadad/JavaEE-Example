<%-- 
    Document   : Welcomejsp
    Created on : Aug 29, 2021, 1:34:14 PM
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
        <b>Welcome </b> 
        <%
            String n = request.getParameter("name");
            String age = request.getParameter("age");

            if (Integer.parseInt(age) >= 18) {
                response.sendRedirect("show.html");
        %>
        
       
        <%} else     %>          
       <%= n %> <b>Not Allowed</b>



    </body>
</html>
