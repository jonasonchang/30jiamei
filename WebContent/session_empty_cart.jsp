<%@page contentType="text/html" pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clean cart session page only</title>
    </head>
    <body>
        <!--<h1>Hello World!</h1> -->
        <% // Process old session on Server Site
           
           //session.removeAttribute(session.getId());
           // 本來因該使用 session.removeAttribute 但是會導致 netbeans 工作不正常,所有的 session 都無法使用,而且 還要重新 clean and build
           //session.removeAttribute("cart_id");
           //session.setAttribute("cart_id", null);
           //session.setAttribute(s_id, collect_data);
           //session.removeAttribute("cart_qty");
           
           //TreeSet cart_prod_id_data = new TreeSet();
            // int qty = 0;
             
             //session.setAttribute("cart_id", cart_prod_id_data);
             //session.setAttribute("cart_qty", qty);
             //out.print(session);
             
            TreeMap s1 = (TreeMap) session.getAttribute("cart_map");
            s1.clear();
            session.setAttribute("cart_map", s1);

            response.sendRedirect("show_cart.jsp");
%>
           
           
           
           
           
           out.print(session);
           
           //create new session
           //TreeSet collect_data = new TreeSet (); 
           // String s_id = session.getId();
           // session.setAttribute(s_id, collect_data); 
            
            //response.sendRedirect(request.getParameter("from"));
            response.sendRedirect("show_cart.jsp");
        %>
        
    </body>
</html>
