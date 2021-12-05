
<%@page import="model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP view Page</title>
    </head>

    <body>
       
        <jsp:useBean   id="cus" class="model.Customer" scope="request" />
        <b>Welcome </b>  <jsp:getProperty name="cus" property="name"/> <br> 
        <b>your ID Is</b> <jsp:getProperty name="cus" property="id"/>  <br>
        <b>And salary </b>  <jsp:getProperty name="cus" property="salary"/>  

<!--<b>Welcome </b><%= ((Customer) request.getAttribute("cus")).getName()%>  <br>
    <b>your ID Is</b><%= ((Customer) request.getAttribute("cus")).getId()%>  <br>
    <b>And salary </b><%= ((Customer) request.getAttribute("cus")).getSalary()%>  <br>
        -->
    </body>


</html>
