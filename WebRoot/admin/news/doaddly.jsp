<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date" %>

<% 
  request.setCharacterEncoding("gb2312");
  String title = request.getParameter("title"); 
  String content = request.getParameter("content");
  String classify=request.getParameter("classify");
  //String classify="tzgg";
  String newsfrom=request.getParameter("newsfrom");
  //System.out.println(title+' '+content);
  SimpleDateFormat timeFormatter = new SimpleDateFormat("yyyyMMddHHmmss");
  Date dNow=new Date();
  String publishtime=timeFormatter.format(dNow);
%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //����Statement����    
  String sql="insert into "+classify+"(title,content,newsfrom,publishtime) values('"+title+"','"+content+"','"+newsfrom+"','"+publishtime+"')";
  System.out.println(sql);
  sta.executeUpdate(sql);
  sta.close();
  conn.close();
  response.sendRedirect("display.jsp?classify="+classify);   
%>