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
	<div id="header">
		<jsp:include page="header.jsp" />
	</div>
	<div id="content">
	  <table width="963" height="65" border="1">
          <%
			for (Product p : list) {
		%>    
        <tr>
	      <td width="312" ><div class="textcolor">照片1</div></td>
	      <td width="62" class="textcolor" ><%=p.getProductName()%></td>
	      <td width="567" class="textcolor"><%=p.getDescription()%></td>
        </tr>
	    <tr>
	      <td><div class="textcolor">照片2</div></td>
	      <td class="textcolor">ProductID:<%=p.getProductID()%></td>
	      <td> <p class="textcolor">容量 :<%=p.getCapacity()%> 單價:<%=p.getUnitPrice()%> 單位:<%=p.getProductUnit()%> </p></td>
        </tr>
        <%
			}
		%>
        
      </table>
	
	</div>
</div>
</body>
</html>