

<%@page import="data.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>result Page</title>
    </head>
    <body>
        <jsp:useBean type="Customer" id="cus"  scope="session"/>
        name<jsp:getProperty name="cus" property="name"/><br>
        mobile<jsp:getProperty name="cus" property="mobile"/>
        
        
        
    </body>
</html>
