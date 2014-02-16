<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<% 
  request.setCharacterEncoding("gb2312");
  String id = request.getParameter("id"); 
  
  //String content="src";
%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //创建Statement对象    
  String sql = "select content from pyfa where id="+id;
  ResultSet result = sta.executeQuery(sql);
  result.absolute(1);
  String content= result.getString("content");
  String sql2 = "delete from pyfa where id="+id;
  String[] name=content.split("\"");
  
  	
  
  String path=name[3].substring(8);
  //path="/UserFiles/Image/201402/20140216204541914.doc";	//这是相对路径
  System.out.println(path);
  String currentDirPath = getServletContext().getRealPath(path);	//得到绝对路径
  File file=new File(currentDirPath);
  if (file.exists())
  {
	  System.out.println(path+" exists");
      file.delete();
  }
  else{
	  System.out.println("not exits");
  }
  sta.executeUpdate(sql2);
  sta.close();
  conn.close();
  response.sendRedirect("display.jsp");   
%>