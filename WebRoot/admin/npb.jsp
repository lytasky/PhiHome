<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ include file="sessoncheck.jspf" %>
<% 
  request.setCharacterEncoding("gb2312");
  String id = request.getParameter("id");  
  String apage = request.getParameter("page"); 
%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //����Statement����    
  String sql = "update vlyb set pb='no' where id="+id;
  sta.executeUpdate(sql);
  sta.close();
  conn.close();
  response.sendRedirect("lyb.jsp?page="+apage);  
%>