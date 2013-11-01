<%@ page pageEncoding="gb2312"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>
<%@ page import="userbean.User"%>
<%@ page import="dbmgr.UserMgr"%>
<% request.setCharacterEncoding("gb2312");
	String action = request.getParameter("action");
	String username;
	if (action != null && action.trim().equals("login")){ 
	        username = request.getParameter("username");
    		String pwd = request.getParameter("pwd");		
    		String confpwd = request.getParameter("confpwd");
    		String email = request.getParameter("email");    		
    		String sex = request.getParameter("sex");
    		try {
                //创建一个用户表数据库读写类  
    			UserMgr userdb=new UserMgr();
    			User user=userdb.get(username);

    			if (user != null) {
    				// 如果记录集为非空，表明有相匹配的用户名，注册失败：
    				
    				try {
    					//转发至注册错误页面 
    					response.sendRedirect("reg_failure.jsp");
    				} 
    				catch (Throwable t) {
                        //写异常日志
    					getServletContext().log(t.getMessage());
    				}
    			} else {
    				user=new User();
    				user.setUsername(username);
    				user.setPassword(pwd);
    				user.setEmail(email);
    				user.setsex(sex);				
    				              
    				//写入数据库
    				int i=userdb.add(user);  
    				// 注册成功
    				request.setAttribute("user", user);
    				try {
    				
    					//转发至注册成功页面 
    					String name = user.getUsername();
    					session.setAttribute("userLogined","true");
    					session.setAttribute("name",username);
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
		    function Check()
		    {	
		    	reName =/^\w{3,12}$/;
		    	rePwd =/^\w{6,12}$/;
		    	reEmail=/^\w+@\w+\.\w+$/;
				if(document.register.username.value=="")
				{
					window.alert("请填写你的登录名！");
					window.register.username.focus();
					return false;
				}
					if(!reName.test(document.register.username.value))
				{
					window.alert("用户名只能是3-12单字字符！");
					window.register.username.focus();
					return false;
				}
				if(document.register.pwd.value=="")
				{
					window.alert("请填写密码！");
					window.register.pwd.focus();
					return false;
				}
				if(!rePwd.test(document.register.pwd.value))
				{
					window.alert("密码只能是6-12位单字字符！");
					window.register.pwd.focus();
					return false;
				}
				if(document.register.pwd.value!=document.register.confpwd.value)
				{
					window.alert("请验证密码！");
					window.register.confpwd.focus();
					return false;
				}
				if(document.register.email.value=="")
				{
					window.alert("请填写你的E_mail！");
					window.register.email.focus();
					return false;
				}
				if(!reEmail.test(document.register.email.value))
				{
					window.alert("E_mail格式不对！");
					window.register.email.focus();
					return false;
				}
				
				document.register.submit();
			}
			</script>
		<title>用户注册</title>
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
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</head>
	<body topmargin="0">
		<table>
			<tr>
				<td>
					<img src="images/huang1.jpg">
				</td>
			</tr>
		</table>
		<div align="center">
			<p>
				<br>

				<span class="STYLE1">新用户注册<br> </span>
			</p>

			<form name="register" action="register.jsp" method="post">
				<table border="1" width="50%" bgcolor="green" height="85">
					<tr>
						<td>
							<font color="white">用户名</font>
						</td>
						<td>
							<input type="text" name="username" size="15" />
							<font color="red">*</font>
							<input type="hidden" name="action" value="login" />
						</td>
					</tr>
					<tr>
						<td>
							<font color="white">密码</font>
						</td>
						<td>
							<input type="password" name="pwd" size="15" />
							<font color="red">*</font>&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<font color="white">确认密码</font>
						</td>
						<td>
							<input type="password" name="confpwd" size="15" />
							<font color="red">*</font>&nbsp;
						</td>
					</tr>
					<tr>

						<td colspan="2">
							<font color="white">男</font>
							<input type="radio" name="sex" size="15" value="1" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font color="white">女</font>
							<input type="radio" name="sex" size="15" value="0" />
						</td>
					</tr>
					<tr>
						<td>
							<font color="white">邮箱</font>
						</td>
						<td>
							<input type="text" name="email" size="15" />
							<font color="red">*</font>
						</td>
					</tr>
					<tr align="left">
						<td>
							<input type="button" value="提交" onclick="Check()">
						</td>
						<td align="rignt">
							<input type="button" name="button" value="重置" />
						</td>

					</tr>

				</table>
			</form>
			</table>
		</div>
	</body>
</html>
			