<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="shopping.DAO.*,shopping.Class.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品列表</title>
</head>
<body>

	<%
                String Page = request.getParameter("p");
		int pg;
		if (Page == null) {
			pg = 1;
		} else {
			try {
				pg = Integer.valueOf(Page);
			} catch (Exception e) {
				pg = 1;
			}

		}

		final int PAGE_SIZE = 3;
		int start_loc = (pg - 1) * PAGE_SIZE + 1;
		ProductDAO pd = new ProductDAOimpl();
		ArrayList<Product> list = pd.gerRange(start_loc, PAGE_SIZE);
		int TotalRows = pd.getSize();
		int TotalPages = (int) Math.ceil((double) TotalRows / (double) PAGE_SIZE);
	%>
	<table border="1">
		<tr>
			<th>ProductID</th>
			<th>Barcode</th>
			<th>CategoryID</th>
			<th>ProductName</th>
			<th>ProductUnit</th>
			<th>Capacity</th>
			<th>UnitPrice</th>
			<th>Discontinued</th>
			<th>Description</th>
		</tr>
		<%
			for (Product p : list) {
		%>
		<tr>
			<td><%=p.getProductID()%></td>
			<td><%=p.getBarcode()%></td>
			<td><%=p.getCategoryID()%></td>
			<td><%=p.getProductName()%></td>
			<td><%=p.getProductUnit()%></td>
			<td><%=p.getCapacity()%></td>
			<td><%=p.getUnitPrice()%></td>
			<td><%=p.getDiscontinued()%></td>
			<td><%=p.getDescription()%></td>
		</tr>
		<%
			}
		%>
	</table>
	<p>
		<%
			if (pg > 1) {
		%>
		<input type="button" name="prev" value="上一頁"
			onclick="location.href='functionTest.jsp?p=<%=(pg - 1)%>'"> <a
			href="functionTest.jsp?p=<%=(pg - 1)%>">上一頁</a>
		<%
			}
		%>
		<%
			if (pg < TotalPages) {
		%>
		<input type="button" name="next" value="下一頁"
			onclick="location.href='functionTest.jsp?p=<%=(pg + 1)%>'"> <a
			href="functionTest.jsp?p=<%=(pg + 1)%>">下一頁</a>
		<%
			}
		%>
	
	<p>
	<form name="page1" action="functionTest.jsp" method="get">
		<input type="number" name="p" size="3" /> <input type="submit"
			value="GO" />
	</form>
	</p>

	<p>
	<form id="page2" name="page2" action="functionTest.jsp" method="get">
		<select name="p" onchange="page2.submit()">
			<%
				for (int i = 1; i <= TotalPages; i++) {
			%>
			<option value="<%=i%>" <%if (pg == i) {%> selected="selected"
				<%}%>>第
				<%=i%> 頁
			</option>
			<%
				}
			%>

		</select>
	</form>
	</p>

	<p>
	<table border="1">
		<tr>
			<%
				final int PAGE_RANGE = 5;
				int loc = (pg - 1) / PAGE_RANGE;
				int start_num = loc * PAGE_RANGE + 1;
				int end_num = loc * PAGE_RANGE + PAGE_RANGE;
				int uplimit = (TotalPages > end_num) ? end_num : TotalPages;
				int i;
				for (i = start_num; i <= uplimit; i++) {
			%>
			<%
				if (pg != i) {
			%>
			<td width="30px"><a href="functionTest.jsp?p=<%=i%>"><%=i%></a>
			</td>
			<%
				} else {
			%>
			<td width="30px"><%=i%></td>
			<%
				}
			%>
			<%
				}
				if (TotalPages > end_num) {
			%>
			<td><a href="functionTest.jsp?p=<%=i%>">Next <%=PAGE_RANGE%>
					Pages
			</a></td>
			<%
				} else {	
			%>
			<td><a href="functionTest.jsp?p=<%=i-PAGE_RANGE%>">Prev <%=PAGE_RANGE %> Pages</a></td>
			<% } %>

		</tr>
	</table>
	</p>

</body>
</html>