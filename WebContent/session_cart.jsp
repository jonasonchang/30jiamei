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
            // try to get same session "gId" if exist then add p_id to TreeSet
            //String gId = session.getId();
            //TreeSet s1 = (TreeSet) session.getAttribute(gId);
            // 將 name=p_id 之值 傳給 p
            Integer p = Integer.valueOf(request.getParameter("p_id"));
            // 取出目前 存在 session 中 card_id 之值
            TreeSet s1 = (TreeSet) session.getAttribute("cart_id");
            //將 p 加入 card_id
            s1.add(p);
            //存回 session 的 cart_id
            session.setAttribute("cart_id", s1);            
            
            // Debug code
            Iterator iterator = s1.iterator();
            while (iterator.hasNext()) {
                out.print(iterator.next() + " ");
            }
            int qty=s1.size();
            out.print(qty);
            
                    
                    
                    
            response.sendRedirect("ProductList_all.jsp");
            

        %>

    </body>
</html>
