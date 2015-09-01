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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

        <link rel="stylesheet" href="css/productList.css">

    </head>
    <body>
<%
        String s = request.getParameter("id");
        //s="9";
        String redirectURL = "ErrorPage.html";
        Product prod = null;
        if (s != null) {
            try {
                int product_id = Integer.valueOf(s);
                ProductDAO pdDAO = new ProductDAOimpl();
                prod = pdDAO.searchbyID(product_id);  %>
        <div id="wrapper">
            <div id="store-cart-content" align="right" class="store-cart">
                <a href="#" > <img src="images/cart_white.png" alt="cart"></a>
                <b>0</b> items, <b >NT$0.00</b> 
            </div>
            <hr />

            <div class="conten-prodlist"> 
                <div class="productlist-photo"><img src="images/M16873947_big.jpg" class="img-responsive" alt="Responsive image"></div>

                <div class="productlist-name textcolor"><%=prod.getProductName()%></div> 
                <div class="productlist-decs textcolor"><%=prod.getDescription()%></div> 
                <div class="cart-btnList"><button type="button" class="btn btn-lg btn-primary">加入購物車</button></div> 
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