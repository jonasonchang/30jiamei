<%@page contentType="text/html" pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Init cart session page only</title>
        <script src="js/session.js" type="text/javascript"></script>
        <script src="js/json-serialization.js" type="text/javascript"></script>
    </head>
    <body>
        <script language="javascript">
            //var prod_reduce_dup_array=null;
            //var qty = 0;

            //Session.set("prods", prod_reduce_dup_array);
            //Session.set("total_qty", qty);
            //Session.clear();
           // var cart = Session.get("cart") || {
           //     total_qty: 0,
           //     prods: []
           //};
            
            //cart.prods = [];
            //cart.total_qty = 1;
            //Session.set("cart");
          //  alert(cart.total_qty);
            //Session.set("prods", prod_reduce_dup_array);
            //Session.set("total_qty", qty);


           // alert(Session.dump());

        </script>  

        <!--<h1>Hello World!</h1> -->
        <% // Process new session on Server Site
            //TreeSet collect_data = new TreeSet (); 
            //String s_id = session.getId();
            //session.setAttribute(s_id, collect_data);
            //out.print("current_id"+s_id);

            
            // Integer counter = (Integer)session.getAttribute("counter");
              
             TreeSet cart_prod_id_data = new TreeSet();
             
             TreeMap<Integer, Integer> cart_treeMap = new TreeMap<Integer,Integer>();
             int qty = 0;
             
             session.setAttribute("cart_id", cart_prod_id_data);
             session.setAttribute("cart_qty", qty);
             session.setAttribute("cart_map", cart_treeMap);
             out.print(session);
             
            
             //response.sendRedirect("show_cart.jsp");
%>

    </body>
</html>
