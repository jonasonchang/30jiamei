<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="sendmail" action="sendemailcode.jsp" method="post">
<p>To:<input type="text" name="to"/></p>
<p>From:<input type="text" name="from"/></p>
<p>Subjet:<input type="text" name="subject" /></p>
<p>Body:<input type="text" name="body" /></p>
<p><input type="submit" value="Sendmail!" />
</form>
</body>
</html>