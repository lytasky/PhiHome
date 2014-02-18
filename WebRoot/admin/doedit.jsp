<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<% 
  request.setCharacterEncoding("gb2312");
  String id = request.getParameter("id");   
  String re = request.getParameter("re");
  String tpage = request.getParameter("page");
  String sql = null;

%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //创建Statement对象 
  sql = "update vlyb set re='"+re+"' where id="+id;
  sta.executeUpdate(sql);
  
  sta.close();
  conn.close();
  response.sendRedirect("lyb.jsp?page="+tpage);  
%>