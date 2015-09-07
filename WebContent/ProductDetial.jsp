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
        </script>
        <%
            String s = request.getParameter("id");
            //s="9";
            int qty = 0;
            String redirectURL = "ErrorPage.html";
            TreeMap<Integer, Integer> s1 = (TreeMap) session.getAttribute("cart_map");
            qty = s1.size();
            Product prod = null;
            if (s != null) {
                try {
                    int product_id = Integer.valueOf(s);
                    ProductDAO pdDAO = new ProductDAOimpl();
            prod = pdDAO.searchbyID(product_id);%>
        <div id="wrapper">
            <div id="store-cart-content" align="right" class="store-cart">
                <a href="show_cart.jsp" > <img src="images/cart_white.png" alt="cart"></a>
                <b><%=qty%></b> items.
            </div>
            <hr />

            <div class="conten-prodlist"> 
                <div class="productlist-photo"><img src="images/B_smallpics/s_<%=prod.getProductID()%>.jpg" class="img-responsive" alt="Responsive image"></div>
                <div class="productlist-name textcolor"><%=prod.getProductName()%></div> 
                <div class="productlist-decs textcolor"><%=prod.getDescription()%></div> 
                <div class="cart-btnList">
                    <form name="addcart" action="session_update_cart.jsp" method="post">
                        <input type="hidden" name="p_id" value="<%=prod.getProductID()%>" > 
                        <input type="hidden" name="check_addcart" value="addcart_detial" >
                        <input type="submit" name="addcart" value="加入購物車" class="btn btn-lg btn-primary" onclick="">
                        <button class="btn btn-lg btn-info" onclick="goBack()">回上頁</button>
                        <!--<a href="#" class="btn btn-lg btn-info" role="button" onclick="goBack()">回上頁</a>-->
                    </form> 

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