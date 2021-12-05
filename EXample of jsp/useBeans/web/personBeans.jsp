

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="per" class="Person" scope="request" />
        <jsp:setProperty name="per" property="*" />
        
        
        <%-- 
        <jsp:setProperty name="per" property="name" value="${param.name}"  />

            
        --%>
      
      
        <jsp:forward page="showPerson.jsp" />


    </body>
</html>
