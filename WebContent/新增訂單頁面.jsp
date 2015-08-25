<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>新增訂單</h1>

    <form action="新增訂單程式.jsp" method="post">
		<p />
		客戶編號：<input type="text" name="cid" id="cid" />
		<p />
		訂購日期：<input type="text" name="odate" id="odate" /> 
		<p />
		出貨日期：<input type="text" name="sdate" id="sdate" />
		<p />
		折扣代碼：<input type="text" name="discount" id="discount" />
		<p />
		取消訂貨：<input type="text" name="cancel" id="cancel" />
		<p />
		<!-- -------------------------------------------------- -->
		
		產品編號：<input type="text" name="pid" id="pid" />
		<p />
		禮盒編號：<input type="text" name="gid" id="gid" />
		<p />
		訂購價格：<input type="text" name="sprice" id="sprice" />
		<p />
		訂購數量：<input type="text" name="quan" id="quan" />
		<p />
		<input type="submit" value="確認新增" />
	</form>

</body>
</html>