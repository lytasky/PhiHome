<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>

<% 
  request.setCharacterEncoding("gb2312");
  String title = request.getParameter("title"); 
  String mail = request.getParameter("mail");
  String body = request.getParameter("abody");
  String ip = request.getRemoteAddr();  
%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //创建Statement对象    
  String sql="insert into vlyb(title,mail,body,ip,time,pb,re) values('"+title+"','"+mail+"','"+body+"','"+ip+"',now(),'no','')";
  sta.executeUpdate(sql);
  sta.close();
  conn.close();
  response.sendRedirect("zszx.jsp");   
%>