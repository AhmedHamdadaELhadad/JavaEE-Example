<%-- 
    Document   : Counter Class
    Created on : Aug 29, 2021, 2:08:22 AM
    Author     : SAMA
--%>



<%@page import="jspPage.CounterClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Visitor Num </h1>
    
        <%= CounterClass.getCount()%>
       
    </body>
</html>
