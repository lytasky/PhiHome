<%@ page pageEncoding="gb2312"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>
<%@ page import="userbean.User"%>
<%@ page import="dbmgr.UserMgr"%>


<%
	request.setCharacterEncoding("GBK");
	String action = request.getParameter("action2");
	String username;
	
	String pwd;
	if (action != null && action.trim().equals("ulogin")) {
		username = request.getParameter("username");
		pwd = request.getParameter("pwd");
		
		try {
                //创建一个用户表数据库读写类  
    			
    			 UserMgr userdb=new UserMgr();
	             User user1=userdb.get(username);

    			if (user1 == null) {
    				// 如果记录集为空，表明没有相匹配的用户名，注册失败：
    				//out.println("用户名不存在");
  
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
    					session.setAttribute("uLogined", "true");
				        session.setAttribute("name", username);
    					response.sendRedirect("articleFlat.jsp");
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
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
	<link href="css/diy.css" rel="stylesheet" media="screen" />
  <script src="https://code.jquery.com/jquery.js"></script>
  <link rel="stylesheet" href="css/flexslider.css" type="text/css">
<script src="js/jquery.flexslider.js"></script>
<head>
<script language="javascript">
function linkto(){
document.usrlog.action="register.jsp";
document.usrlog.submit();
}
</script>
<script language="javascript">
		    function Check()
		    {	
		    	reName =/^\w{3,12}$/;
		    	rePwd =/^\w{6,12}$/;
				if(document.usrlog.username.value=="")
				{
					window.alert("请填写你的登录名！");
					window.usrlog.username.focus();
					return false;
				}
					if(!reName.test(document.usrlog.username.value))
				{
					window.alert("用户名只能是5-12单字字符！");
					window.usrlog.username.focus();
					return false;
				}
				if(document.usrlog.pwd.value=="")
				{
					window.alert("请填写密码！");
					window.usrlog.pwd.focus();
					return false;
				}
				if(!rePwd.test(document.usrlog.pwd.value))
				{
					window.alert("密码只能是6-12位单字字符！");
					window.usrlog.pwd.focus();
					return false;
				}
				document.usrlog.submit();
			}
		</script>
<title>论坛登录</title>
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
<!--
<table>
  <tr>
    <td><img src="images/huang1.jpg"> </td>
  </tr>
</table>
-->
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
<div align="center" style="border:1px solid #ccc;width:500px;margin:0 auto;" class="round-border">
  <p>
    <br>
    <br>
    <span class="STYLE1">如果您没有注册请注册一个新用户</span></p>
  <p>&nbsp;  </p>
<form name="usrlog" action="uselogin.jsp">
<table border="0" width="250" bordercolor="#CCC" height="85" cellpadding="5">
	<tr width="" style="margin-top:20px;">
		<td>
		<font>用户名:</font> 
		 </td >
		<td><input type="text" name="username" size="15" class="form-control"/> 
		<input type="hidden" name="action2" value="ulogin" />
		</td>
	</tr>
	<tr width="40%">
		<td><font>密码:</font></td>
		<td><input type="password" name="pwd" size="15" class="form-control"/> <input type="hidden" name="userlogin"></td>
	</tr>
	<tr align="center" width="40%">
		<td>
		<button type="button" name="button1" value="新用户注册" onClick="linkto()" class="btn btn-primary">注册</button>
		</td>
		<td><button type="button" value="登陆" onClick="Check()" class="btn btn-primary" style="width:170px;">登陆</button></td>
	</tr>
	
</table>
</form>

</div>
</body>
</html>
