<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<% 
  request.setCharacterEncoding("gb2312");
  String id = request.getParameter("id"); 
  String classify = request.getParameter("classify");
  //String content="src";
%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //创建Statement对象    
  String sql = "select content from file where id="+id;
  //ResultSet result = sta.executeQuery(sql);
  //result.absolute(1);
  String sql2 = "delete from "+classify+" where id="+id;

  sta.executeUpdate(sql2);
  sta.close();
  conn.close();
  response.sendRedirect("display.jsp?classify="+classify);   
%>