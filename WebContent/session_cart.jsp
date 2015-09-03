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
        <h1>catch the cart data</h1>

        <%
            // try to get session "d1" if exist then add p_id to arrayList
            Integer p = Integer.valueOf(request.getParameter("p_id"));
            String gId = session.getId();
            TreeSet s1 = (TreeSet) session.getAttribute(gId);
            s1.add(p);

            /* Debug code
            Iterator iterator = s1.iterator();
            while (iterator.hasNext()) {
                out.print(iterator.next() + " ");
            }
            int qty=s1.size();
            out.print(qty);
            */
                    
                    
                    
            response.sendRedirect("ProductList_all.jsp");
            

        %>

    </body>
</html>
