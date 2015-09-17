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
        <link rel="stylesheet" href="css/cart_1.css">
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
                    <div class="col-xs-12 col-sm-6 col-md-4">
                         <table class="table textcolor">
                            <thead><tr><th>說明</th><th>金額</th></tr></thead>
                            
                            <tbody>
                                
                                    <%     
                                            for(Map.Entry<Integer,Integer> entry : s1.entrySet()) {
                                            Integer key = entry.getKey();
                                            //Integer value = entry.getValue();
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

                                <tr><td>產品編號 : <%=key%></td> </tr>
                                <tr><td>產品名稱 : <%=selected_pd.getProductName()%></td></tr>
                                <tr><td>商品價格 : <%=(int) Math.ceil(selected_pd.getUnitPrice())%></td></tr>
                                <tr><td>訂購數量 : <%=qty%></td></tr>
                                    
                                    
                               
                                <% }%> 
                                <% if(s1.isEmpty()){%>
                                <tr id="empty_item" > 
                                    
                                    <td >No items!</td>
                                    
                                </tr> 
                              <%}%>             
                            </tbody>
                           
                              </table>
                             <tr> 
                                <td>總價</td> 
                                <td><%=total%>元</td> 
                            </tr>
                            
                      
                    </div>
                    <div class="col-xs-6 col-sm-8">
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