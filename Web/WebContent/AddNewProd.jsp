<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*"%>

<%

Product p = new Product(0,request.getParameter("barcode"),
    						(int)(Integer.parseInt(request.getParameter("cid"))),
							request.getParameter("name"),
							request.getParameter("unit"),
							request.getParameter("capacity"),
							(float)(Integer.parseInt(request.getParameter("price"))),
							(byte)(Integer.parseInt(request.getParameter("discon"))),
							request.getParameter("descri")
							);

ProductDAO pd = new ProductDAOimpl();
int id = pd.add(p);

%>