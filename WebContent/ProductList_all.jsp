<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProductList_All</title>
        <!-- jQuery, Angular -->
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

        <link rel="stylesheet" href="css/mysite.css">
        <%
            ProductDAO pd = new ProductDAOimpl();
            ArrayList<Product> list = pd.showAll();
        %>
    </head>
    <body>

        <div id="wrapper">
            <div id="store-cart-content" align="right" class="store-cart">
                <a href="#" > <img src="images/cart_white.png" alt="cart"></a>
                <b>0</b> items, <b >NT$0.00</b> 
            </div>
            <div id="search-bar" >
                <form class="navbar-form navbar-right">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            </div><hr />
            <% for (Product p : list) {%>
            <div class="conten-prodlist"> 
                <div class="prodclist-photo"><img src="images/M16873947_big.jpg" class="img-responsive" alt="Responsive image"></div>

                <div class="productlist-name textcolor"><%=p.getProductName()%></div> 
                <div class="productlist-decs textcolor"><%=p.getDescription()%></div> 
                <div class="cart-btnList"><button type="button" class="btn btn-lg btn-primary">加入購物車</button>
                    <a href="#" class="btn btn-primary btn-lg " role="button">詳細資料</a></div> 
                <div class="productlist-unitPrice textcolor"><%=Math.round(p.getUnitPrice())%>元</div>                 
                <div class="productlist-id textcolor"><%=p.getProductID()%></div> 
            </div> 
            <%	}%>
            <P> </P>
            <P> </P>

        </div>
    </div>
</body>
</html>