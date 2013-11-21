<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ include file="conn.jspf" %>
<%
	sta = conn.createStatement();  //创建Statement对象 
	request.setCharacterEncoding("gb2312");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String sql="select * from user where name='"+name+"'";
	ResultSet result = sta.executeQuery(sql);
	result.last();
	int num = result.getRow();
	if(num<=0){
		//没有该用户
		out.print("用户名不存在，<a href='index.jsp'>返回登陆界面</a>。");	
	}else{
		//有该用户并核对密码
		if(pwd.equals(result.getString("pwd"))){
			//通过
			session.setAttribute("login","passed");
			response.sendRedirect("lyb.jsp");
		}else{
			//密码错误
			out.print("密码错误，<a href='index.jsp'>返回登陆界面</a>。");
		}
	}
%>
<%
    sta.close();
    conn.close();
%>