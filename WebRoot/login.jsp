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
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
	<link href="css/diy.css" rel="stylesheet" media="screen" />
  <!-- <script src="https://code.jquery.com/jquery.js"></script>-->
  <script src="js/jquery.js"></script>
  <link rel="stylesheet" href="css/flexslider.css" type="text/css">
<script src="js/jquery.flexslider.js"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js"></script>
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
<body topmargin="0" style="background:url(images/back.PNG) repeat;">
<div id="head" style="margin:0 auto;width:1000px;height:150px;border:1px solid #CCC;background:url(images/china-style3.8.jpg);">	<!--这是模版真正要使用的顶部，也就是每个页面都需要用到的-->
      <div id="head-right" style="float:right;width:25%;align:center;margin-top:28px;">
      	<div style="margin-right:25px;float:right;">
          <p><div class="fl" style="width:40px;"><a class="head-text" href="#">中文</a></div><div class="fl" style="width:60px;"><a class="head-text" href="#">English</a></div></p>
          <div class="row" style="float:right;margin-top:15px;">
  					<div class="col-md-12">
    					<div class="input-group">
      					<input type="text" class="form-control">
      					<span class="input-group-btn">
        					<button class="btn btn-default" type="button">搜索</button>
      					</span>
    					</div><!-- /input-group -->
  					</div><!-- /.col-lg-6 -->
					</div><!-- /.row -->
       	</div>
      </div>
    </div>
<div align="center">
  <p><br>
    <br>
    <br>
    <span class="STYLE1">论坛管理员登陆</span></p>
  <p>&nbsp;  </p>
  <form action="login.jsp" method="post" name="adminlog">
  <table class="round-border gray-border"  cellpadding=5>
    <input type="hidden" name="action" value="log"/>
    <tr height=30>
      <td> 用户名：</td>
      <td><input type="text" name="username" value="" size=20 class="form-control"/></td>
    </tr>
    <tr height=30>
      <td>密码： </td>
       <td><input type="password" name="pwd" size=20 class="form-control"/></td>
    </tr>
    <tr>
      <td><button type="reset" value="重设" class="btn btn-primary">重设</button></td>
      <td><button type="submit" value="登陆" class="btn btn-primary" style="width:180px;">登陆</button></td>
      
    </tr>
  </form>
</table>
</div>
</body>
</html>
