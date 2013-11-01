<%@ page pageEncoding="gb2312"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>
<%@ page import="userbean.User"%>
<%@ page import="dbmgr.UserMgr"%>

<%
	request.setCharacterEncoding("GBK");
	String action = request.getParameter("action");
	String username = "";
	String pwd;
	if (action != null && action.trim().equals("log")) {
		username = request.getParameter("username");
		pwd = request.getParameter("pwd");
			try {
                //创建一个用户表数据库读写类  
    			
    			 UserMgr userdb=new UserMgr();
	             User user1=userdb.getName(username);

    			if (user1 == null) {
    				// 如果记录集为空，表明没有找到匹配的用户名，登陆失败：
    				out.println("用户名或密码错误");
  
    				try {
    					//转发至注册错误页面 
    					response.sendRedirect("log_failure.jsp");
    				} 
    				catch (Throwable t) {
                        //写异常日志
    					getServletContext().log(t.getMessage());
    				}
    			} else if (user1.getPassword().equals(pwd)){             
    				try {
    					//转发至注册成功页面 
    					session.setAttribute("admLogined", "true");
				        session.setAttribute("admName", username);
    					response.sendRedirect("fram.jsp");
    				} 
    				catch (Throwable t) {
    					//写异常日志
    					getServletContext().log(t.getMessage());
    				}
    			}
    		} 
    		catch (Exception e) {
    			e.printStackTrace();
    		}
    	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>管理员登录</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
}
body {
	margin-left: 0px;
}
-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body topmargin="0">
<table>
  <tr>
    <td><img src="images/huang1.jpg"> </td>
  </tr>
</table>
<div align="center">
  <p><br>
    <br>
    <br>
    <br>
    <br>
    <span class="STYLE1">管理员登陆</span></p>
  <p>&nbsp;  </p>
  <form action="login.jsp" method="post" name="adminlog">
  <table>
  
    <input type="hidden" name="action" value="log"/>
    <tr height=30>
      <td> 用户名：</td>
      <td><input type="text" name="username" value="" size=20/></td>
    </tr>
    <tr height=30>
      <td>密码： </td>
       <td><input type="password" name="pwd" size=20/></td>
    </tr>
    <tr>
      <td><input type="submit" value="登陆" /></td>
      <td><input type="reset" value="重设" /></td>
    </tr>
  </form>
</table>
</div>
</body>
</html>
