

<%@page import="data.Customer"%>
<%@page  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> prepare data  Page</title>
    </head>
    <body>
        <jsp:useBean class="Customer" id="cus" scope="session"/>
        <jsp:setProperty  name="cus"  property="*"   />
        <jsp:forward  page="Servlet.Servlet1"/>
        
    </body>
</html>
