<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*"%>
<%

Customer c = new Customer(0,request.getParameter("name"),
    						request.getParameter("pid"),
							(byte)(Integer.parseInt(request.getParameter("gender"))),
							request.getParameter("bd"),
							request.getParameter("phone"),
							request.getParameter("cellphone"),
							request.getParameter("address"),
							request.getParameter("email"),
							"norm",
							1);
Membership m = new Membership(0,request.getParameter("acc"),
								request.getParameter("pwd"),
								(byte)1);
CustomerDAO cd = new CustomerDAOimpl();
int id = cd.add(c);


MembershipDAO md = new MembershipDAOimpl();
m.setCustomerID(id);
md.add(m);

%>

