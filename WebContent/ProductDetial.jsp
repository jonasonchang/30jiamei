<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProductDetial</title>
        <!-- jQuery, Angular -->
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css">

        <link rel="stylesheet" href="css/productList.css">

    </head>

    <body>
        <script>
            function goBack() {
                window.history.back();
            }
            var counter = 0;

            function add(id) {
                var getById = "updated_qty" + id;
                var receiveById = "receive_qty" + id;
                //alert(getById);
                var x = parseInt(document.getElementById(getById).value);
                //alert(x);
                counter = x + 1;
                //alert(counter);
                document.getElementById(getById).value = counter;
                //alert(document.getElementById(getById).value);
                document.getElementById(receiveById).value = counter;
                //alert(document.getElementById("receive_qty").value);
            }

            function minus(id) {
                var getById = "updated_qty" + id;
                var receiveById = "receive_qty" + id;
                var x = parseInt(document.getElementById(getById).value);
                counter = x - 1;
                if (counter <= 0) {
                    counter = 0;
                }
                document.getElementById(getById).value = counter;
                //alert(document.getElementById("updated_qty").value);
                document.getElementById(receiveById).value = counter;

            }
        </script>
        <%
            String s = request.getParameter("id");
            //s="9";
            int qty = 0;
            int page_qty = 0;
            String redirectURL = "ErrorPage.html";
            TreeMap<Integer, Integer> s1 = (TreeMap) session.getAttribute("cart_map");
            page_qty = s1.size();
            Product prod = null;
            if (s != null) {
                try {
                    int product_id = Integer.valueOf(s);
                    ProductDAO pdDAO = new ProductDAOimpl();
                    prod = pdDAO.searchbyID(product_id);

                    if (s1.containsKey(prod.getProductID())) {
                        qty = (int) s1.get(prod.getProductID());
                    } else {
                        qty = 0;
                    }
        %>
        <div id="wrapper">
            <div id="store-cart-content" align="right" class="store-cart">
                <a href="show_cart.jsp" > <img src="images/cart_white.png" alt="cart"></a>
                <b><%=page_qty%></b> items.
            </div>
            <hr />

            <div class="conten-prodlist"> 
                <div class="productlist-photo"><img src="images/B_smallpics/s_<%=prod.getProductID()%>.jpg" class="img-responsive" alt="Responsive image"></div>
                <div class="productlist-name textcolor"><%=prod.getProductName()%></div> 
                <div class="productlist-decs textcolor"><%=prod.getDescription()%></div> 
                <div class="cart-btnList">
                    <form name="addcart" action="session_update_cart.jsp" method="post">
                        <input type="hidden" name="p_id" value="<%=prod.getProductID()%>"> 
                        <input type="hidden" id="receive_qty<%=prod.getProductID()%>" name="updated_qty" value="0">
                        <input type="hidden" name="check_addcart" value="addcart_detial" >
                        <input type="submit" name="addcart" value="加入購物車" class="btn btn-lg btn-primary" onclick="">
                        <button class="btn btn-lg btn-info" onclick="goBack()">回上頁</button>

                    </form> 
                    <div class="cart-qty_add">
                        <button class="btn btn-success" name="add1" value="1" onclick="add(<%=prod.getProductID()%>)"><i class="glyphicon glyphicon-plus"></i></button>       
                    </div>
                    <div class="cart-qty_update">
                        <input type="text" class="form-control" id="updated_qty<%=prod.getProductID()%>" name="u" value="<%=qty%>">
                    </div>
                    <div class="cart-qty_minus">
                        <button class="btn btn-danger" name="minus1" value="1" onclick="minus(<%=prod.getProductID()%>)"><i class="glyphicon glyphicon-minus"></i></button>   
                    </div>
                </div> 
                <div class="productlist-unitPrice textcolor"><%=Math.round(prod.getUnitPrice())%>元</div>                 
                <div class="productlist-id textcolor"><%=prod.getProductID()%></div> 
            </div> 

            <div id="content"><img src="images/1_1.jpg" alt="Responsive image"> 
                <img src="images/1_2.jpg"  alt="Responsive image">
                <img src="images/1_3.jpg"  alt="Responsive image">
                <img src="images/1_4.jpg"  alt="Responsive image">
                <img src="images/1_5.jpg"  alt="Responsive image"> 
            </div>
        </div>               
        <%          } catch (Exception e) {
                    response.sendRedirect(redirectURL);
                }
            } else {
                response.sendRedirect(redirectURL);
            }
        %>

    </body>
</html>