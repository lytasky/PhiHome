<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<% 
  request.setCharacterEncoding("gb2312");
  String id = request.getParameter("id"); 
  String apage = request.getParameter("page");  
%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //创建Statement对象    
  String sql = "delete from vlyb where id="+id;
  sta.executeUpdate(sql);
  sta.close();
  conn.close();
  response.sendRedirect("lyb.jsp?page="+apage);   
%>