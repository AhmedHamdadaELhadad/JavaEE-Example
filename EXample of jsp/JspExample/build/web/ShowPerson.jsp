

<%@page import="Class.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP show Page</title>
    </head>
    <body>
        
       <jsp:useBean id="per"   scope="request"  class="Person"  />
       <b> Welcom </b>  <jsp:getProperty  name="per" property="name" /> 

        
       
        <%-- 
        <b> Welcom </b><%= p.getName()  %> <br>
        <b> Has ID IS  </b><%= p.getId() %> <br>
        <b> Password is  </b><%= p.getPassword() %> <br>
        --%>
        
        
    </body>
</html>
