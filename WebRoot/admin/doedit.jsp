<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<<<<<<< HEAD
=======

>>>>>>> 4a3d6a56f4ec35fd9be283334d594ae00938fc66
<% 
  request.setCharacterEncoding("gb2312");
  String id = request.getParameter("id");   
  String re = request.getParameter("re");
  String tpage = request.getParameter("page");
  String sql = null;

%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //����Statement���� 
  sql = "update vlyb set re='"+re+"' where id="+id;
  sta.executeUpdate(sql);
  
  sta.close();
  conn.close();
  response.sendRedirect("lyb.jsp?page="+tpage);  
%>