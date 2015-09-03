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

        <link rel="stylesheet" href="css/productList.css">
        <%
            ProductDAO pd = new ProductDAOimpl();
            ArrayList<Product> list = pd.showAll();
            
            //get session date update 'qty' show on webpage
            TreeSet current_data = new TreeSet (); 
            String c_id = session.getId();
            current_data = (TreeSet) session.getAttribute(c_id);
            int qty=current_data.size();
            out.print(qty);
         %>
    </head>
    <script language="javascript">

        var counter = 1;
        
        function check_current(q)
        {
          alert(<%=current_data.size()%>) ;
          document.getElementById("count").innerHTML =<%=current_data.size()%>;
            //document.getElementById("count").innerHTML = prod_reduce_dup_array.length;
        }
        
        
        
        function check_data()
        {
            var flag = true;
            var message = '';

            // ---------- Check ----------
            var t1 = document.getElementById('search_content');
            //alert(t1.value);
            if (t1.value === '')
            {
                message = message + '不能沒有可搜尋之值\n';
                flag = false;
            }
            
            if (!flag)
            {
                alert(message);
            }
            return flag;
        }
    </script>


    <body>

        <div id="wrapper">
            
            <div id="store-cart-content" align="right" class="store-cart">
                <a href="#" > <img src="images/cart_white.png" alt="cart"></a>
                <span id="count"><%=current_data.size()%></span> items.
            </div>
            <div id="search-bar" >
                <form class="navbar-form navbar-right" action="SearchProd.jsp" method="post" onSubmit="return check_data()">
                    <div class="form-group">
                        <input id="search_content" name="search_content" type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default" >Submit</button>                    
                </form>
            </div>
            <hr />
            <% for (Product prod : list) {%>
            <div class="conten-prodlist"> 
                <div class="productlist-photo"><img src="images/B_smallpics/s_<%=prod.getProductID()%>.jpg" class="img-responsive" alt="Responsive image"></div>

                <div class="productlist-name textcolor"><%=prod.getProductName()%></div> 
                <div class="productlist-decs textcolor"><%=prod.getDescription()%></div> 
                <div class="cart-btnList"> 
                    <form name="addcart" action="session_cart.jsp" method="post">
                    <input type="hidden" name="p_id" value="<%=prod.getProductID()%>" />    
                    <!-- <button type="button" class="btn btn-lg btn-primary" onClick="addqty(<%=prod.getProductID()%>)" id="addcart" value="<%=prod.getProductID()%>" >加入購物車</button> -->
                    <input type="submit" name="b1" value="加入購物車" class="btn btn-lg btn-primary" onclick="">
                    <a href="ProductDetial.jsp?id=<%=prod.getProductID()%>" class="btn btn-primary btn-lg " role="button">詳細資料</a>
                    </form>
                </div> 
                <div class="productlist-unitPrice textcolor"><%=Math.round(prod.getUnitPrice())%>元</div>                 
                <div class="productlist-id textcolor"><%=prod.getProductID()%></div> 
            </div> 
            <%	}%>
            <P> </P>
            <P> </P>

        </div>
    
</body>
</html>