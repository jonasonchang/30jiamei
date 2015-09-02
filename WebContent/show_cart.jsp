<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>show_cart</title>
        <!-- jQuery, Angular -->
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/cart.css">
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
       <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-8">
                <table class="table table-striped"> 
                    <tr> 
                        <th>產品編號</th> 
                        <th>產品名稱</th> 
                        <th>數量</th> 
                        <th>價錢</th> 
                        <th>刪除</th> 
                    </tr> 
                    <tr> 
                        <td>1</td> 
                        <td>西瓜</td> 
                        <td>5斤</td> 
                        <td>100元</td> 
                        <td>嘉義</td> 
                    </tr> 
                    
                    <tr> 
                        <td>Total</td> 
                        <td></td> 
                        <td></td> 
                        <td>總價</td> 
                        <td></td> 
                    </tr> 
                </table>
            </div>
                <div class="col-xs-6 col-sm-4">
                    <!--Bottom Area-->
                    <div class="cart-btn1"> <button type="button" class="btn btn-lg btn-primary" onClick="" id="back_to_store" >回產品一覽</button> </div>
                    <div class="cart-btn2"> <button type="button" class="btn btn-lg btn-primary" onClick="" id="remove_all" >清空購物車</button> </div>
                    <div>  <a href="# 訂單.jsp" class="btn btn-primary btn-lg " role="button">下訂單</a> </div>
                </div>
            </div>
        </div>
</div>
</div>

</body>
</html>