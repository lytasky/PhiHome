<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<<<<<<< HEAD
=======

>>>>>>> 4a3d6a56f4ec35fd9be283334d594ae00938fc66
<% 
  request.setCharacterEncoding("gb2312");
  String id = request.getParameter("id"); 
  String apage = request.getParameter("page");  
%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //创建Statement对象    
  String sql = "update vlyb set pb='ok' where id="+id;
  sta.executeUpdate(sql);
  sta.close();
  conn.close();
  response.sendRedirect("lyb.jsp?page="+apage);  
%>