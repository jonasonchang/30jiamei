<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Console</title>
</head>
<body>

<h1>註冊會員</h1>

    <form action="generateCus.jsp" method="post">
		<p />
		帳號：<input type="text" name="acc" id="acc" />
		<p />
		密碼：<input type="text" name="pwd" id="pwd" /> 
		<p />
		姓名：<input type="text" name="name" id="name" />
		<p />
		身分證字號：<input type="text" name="pid" id="pid" />
		<p />
		性別：<input type="text" name="gender" id="gender" />
		<p />
		生日：<input type="text" name="bd" id="bd" />
		<p />
		住家電話：<input type="text" name="phone" id="phone" />
		<p />
		行動電話：<input type="text" name="cellphone" id="cellphone" />
		<p />
		地址：<input type="text" name="address" id="address" />
		<p />
		E-mail：<input type="text" name="email" id="email" />
		<p />
		<input type="submit" value="sign in" />

	</form>
	
</body>
</html>