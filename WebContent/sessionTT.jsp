<%-- 
    Document   : sessionTT
    Created on : 2015/9/2, 上午 11:57:24
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import="shopping.DAO.*,shopping.Class.*, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% Discount d = (Discount)session.getAttribute("d1");
           out.print(d); %>
    </body>
</html>
