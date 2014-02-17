<%@ page pageEncoding="gbk"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>
<%@ page import="userbean.Teacher"%>
<%@ page import="userbean.Student"%>
<%@ page import="dbmgr.UserMgr"%>
<% request.setCharacterEncoding("GBK");
	String action = request.getParameter("action");
	String username;
	if (action != null && action.trim().equals("login")){ 
	        username = request.getParameter("username");
	        String identity = request.getParameter("identity");  
	        String ID = request.getParameter("ID");
    		String pwd = request.getParameter("pwd");		
    		String confpwd = request.getParameter("confpwd");
    		String email = request.getParameter("email");    		
    		String sex = request.getParameter("sex");
    		String major =request.getParameter("major");
    		String year =request.getParameter("year");
    		String degree = request.getParameter("degree");
    		
    		System.out.println(""+username);
    		try {
                //����һ���û������ݿ��д��  
    			UserMgr userdb=new UserMgr();
    			
    			if(identity.equals("0"))      //ѧ��ע��
    			{
    				Student student = userdb.getByStudentId(ID);
    				if (student != null) {
    				// �����¼��Ϊ�ǿգ���������ƥ����û�����ע��ʧ�ܣ�
	    				try {
	    					//ת����ע�����ҳ�� 
	    					response.sendRedirect("reg_failure.jsp");
	    				} 
	    				catch (Throwable t) {
	                        //д�쳣��־
	    					getServletContext().log(t.getMessage());
	    				}
    				} 
	    			else 
	    			{
	    				student=new Student();
	    				student.setName(username);
	    				student.setStudentID(ID);
	    				student.setPassword(pwd);
	    				student.setEmail(email);
	    				student.setSex(sex);				
	    				student.setDiscipline(major);
	    				student.setEntryTime(year);
	    				student.setDegree(degree);
	    				//д�����ݿ�
	    				int i=userdb.addStudent(student);  
	    				 // ע��ɹ�
	    				request.setAttribute("user", student);
	    				try {
	    				
	    					//ת������¼�ɹ�ҳ�� 
	    					session.setAttribute("userLogined","true");
	    					session.setAttribute("name",student.getName());
	    					response.sendRedirect("uselogin.jsp");
	    				}catch (Throwable t) {
	    					//д�쳣��־
	    					getServletContext().log(t.getMessage());
	    				}
	    			}
    			}
    			else if(identity.equals("1"))        //��ʦע��
    			{
    				Teacher teacher = userdb.getByTeacherId(ID);
    				if (teacher != null) {
    				// �����¼��Ϊ�ǿգ���������ƥ����û�����ע��ʧ�ܣ�
    				
	    				try {
	    					//ת����ע�����ҳ�� 
	    					response.sendRedirect("reg_failure.jsp");
	    				} 
	    				catch (Throwable t) {
	                        //д�쳣��־
	    					getServletContext().log(t.getMessage());
	    				}
	    			}
	    			else 
	    			{
	    				teacher=new Teacher();
	    				teacher.setName(username);
		    			teacher.setTeacherID(ID);
		    			teacher.setPassword(pwd);
		    			teacher.setEmail(email);
		    			teacher.setSex(sex);				
		    			teacher.setDiscipline(major);
		    			teacher.setEntryTime(year);
		    			teacher.setDegree(degree);		
	    				              
	    				//д�����ݿ�
	    				int i=userdb.addTeacher(teacher);  
	    				  // ע��ɹ�
	    				request.setAttribute("user", teacher);
	    				try {
	    				
	    					 //ת������¼�ɹ�ҳ�� 
	    					session.setAttribute("userLogined","true");
	    					session.setAttribute("name",teacher.getName());
	    					response.sendRedirect("uselogin.jsp");
	    				} 
	    				catch (Throwable t) {
	    					//д�쳣��־
	    					getServletContext().log(t.getMessage());
	    				}
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
  <!-- <script src="https://code.jquery.com/jquery.js"></script>-->
  <script src="js/jquery.js"></script>
  <link rel="stylesheet" href="css/flexslider.css" type="text/css">
<script src="js/jquery.flexslider.js"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js"></script>
	<head>
		<script language="javascript">
		    function Check()
		    {	
		    	rePwd =/^\w{6,12}$/;
		    	reEmail=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
				if(document.register.username.value=="")
				{
					window.alert("����д��ĵ�¼����");
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
		<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	</head>
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
		<div align="center" class="gray-border" >
			<p>
				<br>
				<span class="STYLE1">���û�ע��<br> </span>
			</p>

			<form name="register" action="register.jsp" method="post">
				<table border="0" width="440px"  height="85" cellpadding=5>
					<tr>
						<td>
							<font >���</font>
						</td>
						<td>
							<font >��ʦ</font>
							<input type="radio" name="identity" size="15" value="1" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font >ѧ��</font>
							<input type="radio" name="identity" size="15" value="0" />
						</td>
					</tr>
					<tr>
						<td>
							<font >�û���</font>
						</td>
						<td>
							<input type="text" name="username" size="15" class="form-control" style="width:210px;"/>
						</td>
						<td>
							<font color="red">*</font><font> �������дʵ��</font>
							<input type="hidden" name="action" value="login" />
						</td>
					</tr>
					<tr>
						<td>
							<font >ѧ��/����</font>
						</td>
						<td>
							<input type="text" name="ID" size="15" class="form-control" style="width:210px;"/>
						</td>
						<td>
							<font color="red">*</font>&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<font >����</font>
						</td>
						<td>
							<input type="password" name="pwd" size="15" class="form-control" style="width:210px;"/>
						</td>
						<td>
							<font color="red">*</font>&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<font >ȷ������</font>
						</td>
						<td>
							<input type="password" name="confpwd" size="15" class="form-control" style="width:210px;"/>
						</td>
						<td>
							<font color="red">*</font>&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<font >�Ա�</font>
						</td>
						<td>
							<font >��</font>
							<input type="radio" name="sex" size="15" value="1" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font >Ů</font>
							<input type="radio" name="sex" size="15" value="0" />
						</td>
					</tr>
					<tr>
						<td>
							<font >����</font>
						</td>
						<td>
							<input type="text" name="email" size="15" class="form-control" style="width:210px;"/>
						</td>
						<td>
							<font color="red">*</font>
						</td>
					</tr>
					<tr>
						<td>
							<font >רҵ</font>
						</td>
						<td>
							<input type="text" name="major" size="15" class="form-control" style="width:210px;"/>
						</td>
						<td>
							<font color="red">*</font>
						</td>
					</tr>
					<tr>
						<td>
							<font >��ѧ���</font>
						</td>
						<td>
							<input type="text" name="year" size="15" class="form-control" style="width:210px;"/>
						</td>
						<td>
							<font color="red">*</font>
						</td>
					</tr>
					<tr>
						<td>
							<font >ѧλ</font>
						</td>
						<td>
							<font >����</font>
							<input type="radio" name="degree" size="15" value="1" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<font >˶ʿ</font>
							<input type="radio" name="degree" size="15" value="2" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<font >��ʿ</font>
							<input type="radio" name="degree" size="15" value="3" />
						</td>
					</tr>
					<tr align="left">
						<td align="rignt">
							<input type="button" name="button" value="����" class="btn btn-primary"/>
						</td>
						<td>
							<input type="button" value="�ύ" onclick="Check()" class="btn btn-primary" style="width:210px;">
						</td>
						

					</tr>

				</table>
			</form>
			</table>
		</div>
	</body>
</html>
			