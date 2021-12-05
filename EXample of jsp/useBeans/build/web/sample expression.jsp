

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
        
         <%

            HashMap m = new HashMap();
            m.put("id", 50);
            m.put("Name", "Ahmed");
            m.put("Nationalty", "Egypt");
            request.setAttribute("information", m);
            ArrayList a = new ArrayList();
            a.add("1010.200.15");
            a.add("Ahmed Hamda Elhadad");
            request.setAttribute("personal", a);

        %>
        
        <jsp:forward page="showexpression.jsp" />
        
        
    </body>
</html>
