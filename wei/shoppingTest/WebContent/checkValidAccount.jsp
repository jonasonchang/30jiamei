<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*"%><%
    String a = request.getParameter("Account");
    Membership acc = null;
    if (a != null)
    {
        try
        {           
            MembershipDAO dao = new MembershipDAOimpl();
            acc = dao.searchbyAccount(a);
            
            if (acc == null)
            {
                out.print("0"); // 0 代表沒有重複可以新增
            }
            else
            {
                out.print("1"); // 1 代表有重複不可以新增
            }
            
        }
        catch(Exception e)
        {
            out.print("1");
        }
            
    }
    else
    {
        out.print("1");
    } 
        
%>
