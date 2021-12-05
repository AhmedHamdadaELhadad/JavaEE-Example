

<%@page import="Class.Person"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="per"   scope="request"  class=" Person "  >
            <jsp:setProperty name="per" property="password" param="psw" /> 
             <jsp:setProperty name="per" property="name" param="name" />
           

        </jsp:useBean>


        <jsp:forward  page="showPerson.jsp"/>


    </body>
</html>
