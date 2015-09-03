<%@page contentType="text/html" pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Init cart session page only</title>
    </head>
    <body>
        <!--<h1>Hello World!</h1> -->
        <% // Process new session on Server Site
            TreeSet collect_data = new TreeSet (); 
            String s_id = session.getId();
            session.setAttribute(s_id, collect_data);
            out.print("current_id"+s_id);
        %>
        
    </body>
</html>
