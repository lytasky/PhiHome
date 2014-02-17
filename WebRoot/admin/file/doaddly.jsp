<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date" %>

<% 
  request.setCharacterEncoding("gb2312");
  String title = request.getParameter("title"); 
  String content = request.getParameter("content");
  String classify=request.getParameter("classify");
  //System.out.println(title+' '+content);
  SimpleDateFormat timeFormatter = new SimpleDateFormat("yyyyMMdd");
  Date dNow=new Date();
  String publishtime=timeFormatter.format(dNow);
%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //创建Statement对象    
  String sql="insert into file(title,content,classify,publishtime) values('"+title+"','"+content+"','"+classify+"','"+publishtime+"')";
  sta.executeUpdate(sql);
  sta.close();
  conn.close();
  response.sendRedirect("display.jsp?classify='"+classify+"'");   
%>