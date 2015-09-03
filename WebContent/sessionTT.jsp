<%@page contentType="text/html" pageEncoding="UTF-8"  import="shopping.DAO.*,shopping.Class.*, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart_session</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <% Discount d = (Discount)session.getAttribute("d1");
           out.print(d); %>
    </body>
</html>
