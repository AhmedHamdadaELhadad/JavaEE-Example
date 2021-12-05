<%-- 
    Document   : CounterMethod
    Created on : Aug 29, 2021, 2:43:18 AM
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
        <h1>visitor Num </h1>
        <%! int count = 0; 
         public int getCount() {
                return count++;
            }%>
            <%=  getCount() %>
            
            <%if(getCount()==15){ %>
            
            <b> Mabrokaa</b>
            <%}
%>            
    </body>
</html>
