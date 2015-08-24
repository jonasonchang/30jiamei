<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增商品</title>
</head>
<body>

<h1>新增商品</h1>

    <form action="AddNewProd.jsp" method="post">
		<p />
		國碼：<input type="text" name="barcode" id="barcode" />
		<p />
		類別編號：<input type="text" name="cid" id="cid" /> 
		<p />
		產品名稱：<input type="text" name="name" id="name" />
		<p />
		單位：<input type="text" name="unit" id="unit" />
		<p />
		容量：<input type="text" name="capacity" id="capacity" />
		<p />
		單價：<input type="text" name="price" id="price" />
		<p />
		產品下架：<input type="text" name="discon" id="discon" />
		<p />
		產品敘述：<input type="text" name="descri" id="descri" />
		<p />
		<input type="submit" value="確認新增" />

	</form>

</body>
</html>