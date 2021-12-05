<%-- 
    Document   : paramshow
    Created on : Aug 30, 2021, 3:04:38 PM
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
      
        <h3>Your Email is </h3> ${param.email} <br>
        <h3>Your Password is </h3> ${param.psw} <br>
        ${param.salary*2}<br>
        
        
        ${header["user-agent"]}<br>
        
        ${header["Accept"]}
        
       
        
        
        
        
    </body>
</html>
