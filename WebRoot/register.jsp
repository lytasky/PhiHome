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
                //����һ���û������ݿ��д��  
    			UserMgr userdb=new UserMgr();
    			User user=userdb.get(username);

    			if (user != null) {
    				// �����¼��Ϊ�ǿգ���������ƥ����û�����ע��ʧ�ܣ�
    				
    				try {
    					//ת����ע�����ҳ�� 
    					response.sendRedirect("reg_failure.jsp");
    				} 
    				catch (Throwable t) {
                        //д�쳣��־
    					getServletContext().log(t.getMessage());
    				}
    			} else {
    				user=new User();
    				user.setUsername(username);
    				user.setPassword(pwd);
    				user.setEmail(email);
    				user.setsex(sex);				
    				              
    				//д�����ݿ�
    				int i=userdb.add(user);  
    				// ע��ɹ�
    				request.setAttribute("user", user);
    				try {
    				
    					//ת����ע��ɹ�ҳ�� 
    					String name = user.getUsername();
    					session.setAttribute("userLogined","true");
    					session.setAttribute("name",username);
    					response.sendRedirect("articleFlat.jsp");
    				} 
    				catch (Throwable t) {
    					//д�쳣��־
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
					window.alert("����д��ĵ�¼����");
					window.register.username.focus();
					return false;
				}
					if(!reName.test(document.register.username.value))
				{
					window.alert("�û���ֻ����3-12�����ַ���");
					window.register.username.focus();
					return false;
				}
				if(document.register.pwd.value=="")
				{
					window.alert("����д���룡");
					window.register.pwd.focus();
					return false;
				}
				if(!rePwd.test(document.register.pwd.value))
				{
					window.alert("����ֻ����6-12λ�����ַ���");
					window.register.pwd.focus();
					return false;
				}
				if(document.register.pwd.value!=document.register.confpwd.value)
				{
					window.alert("����֤���룡");
					window.register.confpwd.focus();
					return false;
				}
				if(document.register.email.value=="")
				{
					window.alert("����д���E_mail��");
					window.register.email.focus();
					return false;
				}
				if(!reEmail.test(document.register.email.value))
				{
					window.alert("E_mail��ʽ���ԣ�");
					window.register.email.focus();
					return false;
				}
				
				document.register.submit();
			}
			</script>
		<title>�û�ע��</title>
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

				<span class="STYLE1">���û�ע��<br> </span>
			</p>

			<form name="register" action="register.jsp" method="post">
				<table border="1" width="50%" bgcolor="green" height="85">
					<tr>
						<td>
							<font color="white">�û���</font>
						</td>
						<td>
							<input type="text" name="username" size="15" />
							<font color="red">*</font>
							<input type="hidden" name="action" value="login" />
						</td>
					</tr>
					<tr>
						<td>
							<font color="white">����</font>
						</td>
						<td>
							<input type="password" name="pwd" size="15" />
							<font color="red">*</font>&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<font color="white">ȷ������</font>
						</td>
						<td>
							<input type="password" name="confpwd" size="15" />
							<font color="red">*</font>&nbsp;
						</td>
					</tr>
					<tr>

						<td colspan="2">
							<font color="white">��</font>
							<input type="radio" name="sex" size="15" value="1" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font color="white">Ů</font>
							<input type="radio" name="sex" size="15" value="0" />
						</td>
					</tr>
					<tr>
						<td>
							<font color="white">����</font>
						</td>
						<td>
							<input type="text" name="email" size="15" />
							<font color="red">*</font>
						</td>
					</tr>
					<tr align="left">
						<td>
							<input type="button" value="�ύ" onclick="Check()">
						</td>
						<td align="rignt">
							<input type="button" name="button" value="����" />
						</td>

					</tr>

				</table>
			</form>
			</table>
		</div>
	</body>
</html>
			