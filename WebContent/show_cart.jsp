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
            Product selected_pd;

            //get session data
            //TreeSet cart_prod_id_data = null;
            int qty;
            //String cart_id = "";
            //session = request.getSession(false);//判斷curresnt session 的存在與否
            //out.print(session);

            //if (session != null) {
            //cart_prod_id_data = (TreeSet) session.getAttribute("cart_id");
            TreeMap<Integer,Integer> s1 = (TreeMap) session.getAttribute("cart_map");
            //qty = cart_prod_id_data.size();
            //}
            
            //int qty=cart_prod_id_data.size();
            //out.print(qty);
            // iterator 是用來 display card_id 中的 TreeSet 用
            //Iterator iterator = cart_prod_id_data.iterator();
            int total = 0;

        %>
    </head>
    


    <body>

        <div id="wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-8">
                        <table class="table table-bordered textcolor text-center">
                            <th class="text-center" >產品編號</th> 
                            <th class="text-center">產品名稱</th> 
                            <th class="text-center col-sm-3">數量</th> 
                            <th class="text-center">單價</th> 
                            <th class="text-center"></th> 
                            </tr>
                            <tbody>
                                <tr id="get_item" > 
                                    <%     
                                            for(Map.Entry<Integer,Integer> entry : s1.entrySet()) {
                                            Integer key = entry.getKey();
                                            Integer value = entry.getValue();
                                            selected_pd = pd.searchbyID(key);
                                            qty =(int)s1.get(key);
                                            total = (int) Math.ceil(selected_pd.getUnitPrice())*qty + total;
                                           //while (iterator.hasNext()) {
                                           // Integer current_id = (Integer) iterator.next();
                                            //selected_pd = pd.searchbyID(current_id);
                                            //qty =(int)s1.get(current_id);
                                            //out.print(qty);
                                            //total = (int) Math.ceil(selected_pd.getUnitPrice())*qty + total;
                                            //out.print(iterator.next() + " "); 
                                    %>                                  

                                    <td ><%=key%></td> 
                                    <td><%=selected_pd.getProductName()%></td> 
                                    <td><div class="input-group input-group-xs ">
                                            <span class="input-group-btn">
                                               <!-- <button class="btn btn-success" id="add1">
                                                    <i class="glyphicon glyphicon-plus"></i>
                                                </button> -->
                                                <form action="session_update_cart.jsp" method="post">
                                                    <input type="hidden" name="check_addcart" value="add" />
                                                    <input type="hidden" name="p_id" value="<%=key%>" />
                                                    <button class="btn btn-success" name="add1" value="1"><i class="glyphicon glyphicon-plus"></i></button>
                                                </form>

                                            </span>

                                            <input type="text" class="form-control" id="qty" value="<%=qty%>"/>
                                            
                                            <span class="input-group-btn">
                                                <!-- <button class="btn btn-danger" id="minus1">
                                                    <i class="glyphicon glyphicon-minus"></i>
                                                </button>-->
                                                <form action="session_update_cart.jsp" method="post">
                                                    <input type="hidden" name="check_addcart" value="minus" />
                                                    <input type="hidden" name="p_id" value="<%=key%>" />
                                                    <button class="btn btn-danger" name="minus1" value="1"><i class="glyphicon glyphicon-minus"></i></button>
                                                </form>
                                            </span>
                                        </div></td>  
                                    <td><%=(int) Math.ceil(selected_pd.getUnitPrice())%>元</td> 
                                    <td>    
                                        <!--<button class="btn btn-danger" id="dele-item"> <i class="glyphicon glyphicon-minus"></i>
                                        </button> -->
                                        <form name="delect-one-item" action="session_update_cart.jsp" method="post">
                                            <input type="hidden" name="check_addcart" value="delete_one" />
                                            <input type="hidden" name="p_id" value="<%=key%>" />    
                                            <input type="submit" name="dele-item" value="刪除" class="btn btn-danger" onclick="" >
                                        </form> 
                                    </td> 
                                </tr>
                                <% }%> 
                                <% if(s1.isEmpty()){%>
                                <tr id="empty_item" > 
                                    <td ></td>
                                    <td ></td>
                                    <td >No items!</td>
                                    <td ></td>
                                    <td ></td>
                                </tr> 
                              <%}%>             
                            </tbody>
                            <tr> 
                                <td></td> 
                                <td></td> 
                                <td>總價</td> 
                                <td><%=total%>元</td> 
                                <td></td>
                            </tr> 
                        </table>
                    </div>
                    <div class="col-xs-6 col-sm-4">
                        <!--Bottom Area-->
                        <div class="cart-btn1" >
                            <a class="btn btn-lg btn-info" href="ProductList_all.jsp">回產品一覽</a>
                        </div>
                        <div class="cart-btn2" > 
                            <!-- <button type="button" class="btn btn-lg btn-primary" onClick="" id="remove_all" >清空購物車</button> -->
                            <a class="btn btn-lg btn-primary" href="session_empty_cart.jsp">清空購物車</a>
                        </div>
                        <div >  <a href="# 訂單.jsp" class="btn btn-primary btn-lg " role="button">下訂單</a> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>