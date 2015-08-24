<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*"%>
<% 
Order o = new Order(0,Integer.parseInt(request.getParameter("cid")),
    						request.getParameter("odate"),
							request.getParameter("sdate"),
							Integer.parseInt(request.getParameter("discount")),
							(byte)Integer.parseInt(request.getParameter("cancel"))
							);

OrderDAO od = new OrderDAOimpl();
int id = od.add(o);

OrderDetail odl = new OrderDetail(0,
								  id,
								  Integer.parseInt(request.getParameter("pid")),
								  Integer.parseInt(request.getParameter("gid")),
								  (float)Integer.parseInt(request.getParameter("sprice")),
								  Integer.parseInt(request.getParameter("quan")));

OrderDetailDAO odd = new OrderDetailDAOimpl();
odd.add(odl);
%>
