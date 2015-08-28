<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product List</title>

<link rel="stylesheet" href="css/mysite.css">

</head>
<body>
    <%
        ProductDAO pd = new ProductDAOimpl();
	ArrayList<Product> list = pd.showAll(); %>
<div id="wrapper">
	<div id="content">
	  <table width="963" height="65" border="0">
          <%
			for (Product p : list) {
		%>    
        <tr>
	      <td width="312" ><div class="textcolor"><img src="images/M16873947_big.jpg" width="314" height="270" alt="產品名"></div></td>
	      <td width="62" align="center" valign="middle" class="textcolor" ><%=p.getProductName()%></td>
	      <td width="567" align="left" valign="middle" class="textcolor"><p><%=p.getDescription()%></p>
          <p>&nbsp;</p></td>
        </tr>
	    <tr>
	      <td align="right" class="textcolor">&nbsp;</td>
	      <td align="center" class="textcolor">&nbsp;</td>
	      <td> <p class="textcolor">產品編號:<%=p.getProductID()%></p>
          <p class="textcolor">容量:<%=p.getCapacity()%>克 單價:<%=p.getUnitPrice()%>元 單位:<%=p.getProductUnit()%></p></td>
        </tr>
        <%
			}
		%>
        
      </table>
	
	</div>
</div>
</body>
</html>