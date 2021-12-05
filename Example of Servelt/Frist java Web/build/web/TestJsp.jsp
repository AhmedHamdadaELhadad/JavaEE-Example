<%-- 
    Document   : TestJsp
    Created on : Jul 24, 2021, 11:36:51 AM
    Author     : Ahmed
--%>

<%@page contentType="text/html" import="java.util.Date" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
  
    
    
    <body>
       
        <h1> WelcomeUser </h1>
        
        <br>
        <%=  request.getParameter("uname")
      %>
         

    </body>
</html>
