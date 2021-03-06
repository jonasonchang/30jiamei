<%@page contentType="text/html" pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update cart session page only</title>
    </head>
    <body>
        <!--<h1>Hello World!</h1> -->
        <% // Process old session on Server Site

            //session.removeAttribute(session.getId());
            // 本來因該使用 session.removeAttribute 但是會導致 netbeans 工作不正常,所有的 session 都無法使用,而且 還要重新 clean and build
            //session.removeAttribute("cart_id");
            request.setCharacterEncoding("UTF-8");
            String check_add = request.getParameter("check_addcart");
            //out.print(check_add);

            TreeMap<Integer, Integer> s1 = (TreeMap) session.getAttribute("cart_map");
            Integer p = Integer.valueOf(request.getParameter("p_id"));

            //設定從 detial 傳過來的 update_qty=0
            Integer updated_qty;
            String u = request.getParameter("updated_qty");
            if (u == null) {
                updated_qty = 0;
            } else {
                updated_qty = Integer.valueOf(request.getParameter("updated_qty"));
            };
            // 正式計算
            int counter;
            int default_qty = 1;

            if (check_add.equals("加入購物車")) {
                //out.println(check_add);
                out.println(updated_qty);
                if (updated_qty == 0) {
                    s1.remove(p);
                } else {
                    s1.put(p, updated_qty);
                }
                session.setAttribute("cart_map", s1);

                //for(Map.Entry<Integer,Integer> entry : s1.entrySet()) {
                //Integer key = entry.getKey();
                // Integer value = entry.getValue();
                //out.println(key + " => " + value);} 
                response.sendRedirect("ProductList_all.jsp");

            } else if (check_add.equals(
                    "add")) {
                //out.println(check_add);
                counter = (int) s1.get(p) + 1;
                s1.put(p, counter);
                session.setAttribute("cart_map", s1);
                response.sendRedirect("show_cart.jsp");

            } else if (check_add.equals(
                    "minus")) {
                //s1 = (TreeMap) session.getAttribute("cart_map");
                counter = (int) s1.get(p) - 1;
                if (counter <= 0) {
                    s1.put(p, 0);
                } else {
                    s1.put(p, counter);
                }
                session.setAttribute("cart_map", s1);
                response.sendRedirect("show_cart.jsp");

            } else if (check_add.equals(
                    "delete_one")) {
                //TreeSet s2 = (TreeSet) session.getAttribute("cart_id");
                //s2.remove(p);
                //s1 = (TreeMap) session.getAttribute("cart_map");
                s1.remove(p);
                //for(Map.Entry<Integer,Integer> entry : s1.entrySet()) {
                //Integer key = entry.getKey();
                //Integer value = entry.getValue();
                //out.println(key + " => " + value);} 
                session.setAttribute("cart_map", s1);
                //session.setAttribute("cart_id", s2);
                response.sendRedirect("show_cart.jsp");

            } else if (check_add.equals(
                    "addcart_detial")) {
                if (updated_qty == 0) {
                    s1.remove(p);
                } else {
                    s1.put(p, updated_qty);
                }
                session.setAttribute("cart_map", s1);
                response.sendRedirect("ProductDetial.jsp?id=" + p);

            } else if (check_add.equals(
                    "search_detial")) {
                if (updated_qty == 0) {
                    s1.remove(p);
                } else {
                    s1.put(p, updated_qty);
                }
                session.setAttribute("cart_map", s1);
                response.sendRedirect("ProductDetial.jsp?id=" + p);

            } else if (check_add.equals(
                    "changeValue")) {
                s1.put(p, updated_qty);
                session.setAttribute("cart_map", s1);
                response.sendRedirect("show_cart.jsp");
            }


        %>

    </body>
</html>
