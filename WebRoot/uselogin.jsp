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
                //����һ���û������ݿ��д��  
    			
    			 UserMgr userdb=new UserMgr();
	             User user1=userdb.get(username);

    			if (user1 == null) {
    				// �����¼��Ϊ�գ�����û����ƥ����û�����ע��ʧ�ܣ�
    				//out.println("�û���������");
  
    				try {
    					//ת����ע�����ҳ�� 
    					response.sendRedirect("log_failure.jsp");
    				} 
    				catch (Throwable t) {
                        //д�쳣��־
    					getServletContext().log(t.getMessage());
    				}
    			} else if (user1.getPassword().equals(pwd)){             
    				try {
    					//ת����ע��ɹ�ҳ�� 
    					session.setAttribute("uLogined", "true");
				        session.setAttribute("name", username);
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
					window.alert("����д��ĵ�¼����");
					window.usrlog.username.focus();
					return false;
				}
					if(!reName.test(document.usrlog.username.value))
				{
					window.alert("�û���ֻ����5-12�����ַ���");
					window.usrlog.username.focus();
					return false;
				}
				if(document.usrlog.pwd.value=="")
				{
					window.alert("����д���룡");
					window.usrlog.pwd.focus();
					return false;
				}
				if(!rePwd.test(document.usrlog.pwd.value))
				{
					window.alert("����ֻ����6-12λ�����ַ���");
					window.usrlog.pwd.focus();
					return false;
				}
				document.usrlog.submit();
			}
		</script>
<title>��̳��¼</title>
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

	<div id="head" style="margin:0 auto;width:1000px;height:150px;border:1px solid #CCC;background:url(images/china-style3.8.jpg);">	<!--����ģ������Ҫʹ�õĶ�����Ҳ����ÿ��ҳ�涼��Ҫ�õ���-->
      <div id="head-right" style="float:right;width:25%;align:center;margin-top:28px;">
      	<div style="margin-right:25px;float:right;">
          <p><div class="fl" style="width:40px;"><a class="head-text" href="#">����</a></div><div class="fl" style="width:60px;"><a class="head-text" href="#">English</a></div></p>
          <div class="row" style="float:right;margin-top:15px;">
  					<div class="col-md-12">
    					<div class="input-group">
      					<input type="text" class="form-control">
      					<span class="input-group-btn">
        					<button class="btn btn-default" type="button">����</button>
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
    <span class="STYLE1">�����û��ע����ע��һ�����û�</span></p>
  <p>&nbsp;  </p>
<form name="usrlog" action="uselogin.jsp">
<table border="0" width="250" bordercolor="#CCC" height="85" cellpadding="5">
	<tr width="" style="margin-top:20px;">
		<td>
		<font>�û���:</font> 
		 </td >
		<td><input type="text" name="username" size="15" class="form-control"/> 
		<input type="hidden" name="action2" value="ulogin" />
		</td>
	</tr>
	<tr width="40%">
		<td><font>����:</font></td>
		<td><input type="password" name="pwd" size="15" class="form-control"/> <input type="hidden" name="userlogin"></td>
	</tr>
	<tr align="center" width="40%">
		<td>
		<button type="button" name="button1" value="���û�ע��" onClick="linkto()" class="btn btn-primary">ע��</button>
		</td>
		<td><button type="button" value="��½" onClick="Check()" class="btn btn-primary" style="width:170px;">��½</button></td>
	</tr>
	
</table>
</form>

</div>
</body>
</html>
