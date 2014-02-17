<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>

<% 
  request.setCharacterEncoding("gb2312");
  String title = request.getParameter("title"); 
  String content = request.getParameter("content");
  String classify=request.getParameter("classify");
  System.out.println(title+' '+content);
%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //创建Statement对象    
  String sql="insert into file(title,content,classify) values('"+title+"','"+content+"','"+classify+"')";
  sta.executeUpdate(sql);
  sta.close();
  conn.close();
  response.sendRedirect("display.jsp?classify='"+classify+"'");   
%>