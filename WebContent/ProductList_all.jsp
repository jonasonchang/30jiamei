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
        %>
    </head>
    <script language="javascript">

        var counter = 1;
        var prod_array = new Array();
        var prod_reduce_dup_array = new Array();
        function addqty(prod_id)
        {
            qty = counter++;
            prod_array.push(prod_id);
            prod_reduce_dup_array = prod_array.filter(function(item, pos, self)
            {
                return self.indexOf(item) === pos;
            });
            /* for (var x in prod_reduce_dup_array) {
             out.print(prod_reduce_dup_array[x]);
             }*/
            document.getElementById("count").innerHTML = prod_reduce_dup_array.length;
        }
        function collect_data()
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
                <span id="count">0</span> items.
            </div>
            <div id="search-bar" >
                <form class="navbar-form navbar-right" action="SearchProd.jsp" method="post" onSubmit="return collect_data()">
                    <div class="form-group">
                        <input id="search_content" name="search_content" type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default" >Submit</button>                    
                </form>
            </div><hr />
            <% for (Product prod : list) {%>
            <div class="conten-prodlist"> 
                <div class="productlist-photo"><img src="images/B_smallpics/s_<%=prod.getProductID()%>.jpg" class="img-responsive" alt="Responsive image"></div>

                <div class="productlist-name textcolor"><%=prod.getProductName()%></div> 
                <div class="productlist-decs textcolor"><%=prod.getDescription()%></div> 
                <div class="cart-btnList"> <button type="button" class="btn btn-lg btn-primary" onClick="addqty(<%=prod.getProductID()%>)" id="addcart" value="<%=prod.getProductID()%>" >加入購物車</button>
                    <a href="ProductDetial.jsp?id=<%=prod.getProductID()%>" class="btn btn-primary btn-lg " role="button">詳細資料</a>
                </div> 
                <div class="productlist-unitPrice textcolor"><%=Math.round(prod.getUnitPrice())%>元</div>                 
                <div class="productlist-id textcolor"><%=prod.getProductID()%></div> 
            </div> 
            <%	}%>
            <P> </P>
            <P> </P>

        </div>
    </div>
</body>
</html>