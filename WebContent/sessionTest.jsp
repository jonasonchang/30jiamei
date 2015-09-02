<%-- 
    Document   : sesionTest
    Created on : 2015/9/2, 上午 11:51:44
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% Discount d = new Discount(1,(float)0.20);
        session.setAttribute("d1", d); 
        out.print(d);%>
    </body>
</html>