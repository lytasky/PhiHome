<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date" %>

<% 
  request.setCharacterEncoding("gb2312");
  String title = request.getParameter("title"); 
  String content = request.getParameter("content");
  System.out.println(content);
  String classify=request.getParameter("classify");
  String id=request.getParameter("id");
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
  /*String sql0 = "delete from "+classify+" where id="+id;
  sta.executeUpdate(sql0);
  String sql="insert into "+classify+"(title,content,newsfrom,publishtime) values('"+title+"','"+content+"','"+newsfrom+"','"+publishtime+"')";
  */
  String sql="update "+classify+" set title='"+title+"',content='"+content+"',newsfrom='"+newsfrom+"',publishtime='"+publishtime+"' where id="+id;
  sta.executeUpdate(sql);
  sta.close();
  conn.close();
  response.sendRedirect("display.jsp?classify="+classify);   
%>