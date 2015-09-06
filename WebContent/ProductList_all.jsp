<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProductList_All</title>
        <!-- jQuery, Angular -->
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <!--<script src="js/session.js" type="text/javascript"></script>-->
        <!--<script src="js/json-serialization.js" type="text/javascript"></script>-->
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

        <link rel="stylesheet" href="css/productList.css">
        <%/* 本程式開始 要注意引用 session 物件到購物車,訪客未登入 也會碰到一樣問題
            
             */
            // 來本網頁之前 應該先執行 session_init.jsp
            //TreeSet cart_prod_id_data=null;
            int qty=0;
            //String cart_id = "";
            // cart_prod_id_data = (TreeSet) session.getAttribute("cart_id");
                //qty = (int) session.getAttribute("cart_qty");
            //    qty = cart_prod_id_data.size();                
         
            //get session date update 'qty' show on webpage
            
            TreeMap<Integer,Integer> s1 = (TreeMap) session.getAttribute("cart_map");    
            qty = s1.size();    
            ProductDAO pd = new ProductDAOimpl();
            ArrayList<Product> list = pd.showAll();
%>
    </head>
    <script language="javascript">

    
        function addqty(prod_id)// JavaScriot 專用addqty
        {
            //qty = counter++;
            prod_array.push(prod_id);
            prod_reduce_dup_array = prod_array.filter(function(item, pos, self)
            {
                return self.indexOf(item) === pos;
            });
            //cart.total_qty = prod_reduce_dup_array.length;
            //cart.prods=prod_reduce_dup_array;
            //Session.set("cart");
            
            //Session.set("prods", prod_reduce_dup_array);
            //Session.set("total_qty", qty);
            
            //Session.get("prods");
            //counter =Session.get("total_qty");
            //alert(counter);
            //alert(Session.dump());
            //document.getElementById("count").innerHTML = counter;
            //document.getElementById("count").firstChild.nodeValue=cart.total_qty;
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
                <a href="show_cart.jsp" > <img src="images/cart_white.png" alt="cart"></a>
                <span id="count"><%=qty%></span> items.
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
                    
                    <!--<button type="button" class="btn btn-lg btn-primary" onClick="addqty(<%=prod.getProductID()%>)" id="addcart" value="<%=prod.getProductID()%>" >加入購物車</button> 
                        
                        <a href="ProductDetial.jsp?id=<%=prod.getProductID()%>" class="btn btn-primary btn-lg " role="button">詳細資料</a> -->
                    
                    <form name="addcart" action="session_update_cart.jsp" method="post">
                        <input type="hidden" name="p_id" value="<%=prod.getProductID()%>" />    
                        <input type="submit" name="check_addcart" value="加入購物車" class="btn btn-lg btn-primary" onclick="">
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