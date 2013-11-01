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
    <span class="STYLE1">如果您没有注册请注册一个新用户</span></p>
  <p>&nbsp;  </p>
<form name="usrlog" action="uselogin.jsp">
<table border="1" width="250" bordercolor="green" height="85">
	<tr width="">
		<td>
		<font color="red">用户名</font> 
		 </td >
		<td><input type="text" name="username" size="15"/> 
		<input type="hidden" name="action2" value="ulogin" />
		</td>
	</tr>
	<tr width="40%">
		<td><font color="red">密码</font></td>
		<td><input type="password" name="pwd" size="15"/> <input type="hidden" name="userlogin"></td>
	</tr>
	<tr align="left" width="40%">
		<td><input type="button" value="登陆" onclick="Check()"></td>
		<td>
		<input type="button" name="button1" value="新用户注册" onclick="linkto()"/>
		</td>
	
	</tr>
	
</table>
</form>

</div>
</body>
</html>
