<%-- 
    Document   : sessionTT
    Created on : 2015/9/2, 上午 11:57:24
    Author     : Administrator
--%>
<%@page import="java.util.Map.*"%>
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
            //out.print(p);
            // 取出目前 存在 session 中 card_id 之值
            //TreeSet s1 = (TreeSet) session.getAttribute("cart_id");
            //將 p 加入 card_id
            //s1.add(p);
            
            //存回 session 的 cart_id
             

            //同時 存 treeMap
            int default_qty=1;
            TreeMap<Integer,Integer> s2 = (TreeMap) session.getAttribute("cart_map");
                      
            //if (s2.get(p) == null) {
            //    s2.put(p, 0);
            //} else {
           
             s2.put(p,default_qty);
            //}
            
            //debug use
            for(Map.Entry<Integer,Integer> entry : s2.entrySet()) {
                Integer key = entry.getKey();
                Integer value = entry.getValue();
                  out.println(key + " => " + value);}  
                       
            
            session.setAttribute("cart_map", s2);

            // Debug code
            //Iterator iterator = s1.iterator();
            //while (iterator.hasNext()) {
            //    out.print(iterator.next() + " ");
            //}
            //int qty=s1.size();
            //out.print(qty);
            response.sendRedirect("ProductList_all.jsp");

        %>

    </body>
</html>
