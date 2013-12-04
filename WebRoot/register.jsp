<%@ page pageEncoding="gb2312"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>
<%@ page import="userbean.Teacher"%>
<%@ page import="userbean.Student"%>
<%@ page import="dbmgr.UserMgr"%>
<% request.setCharacterEncoding("gb2312");
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
    		String year = request.getParameter("year");
    		System.out.print("year = " + year);
    		String degree = request.getParameter("degree");
    		try {
                //创建一个用户表数据库读写类  
    			UserMgr userdb=new UserMgr();
    			
    			if(identity.equals("0"))      //学生注册
    			{
    				Student student = userdb.getByStudentId(ID);
    				if (student != null) {
    				// 如果记录集为非空，表明有相匹配的用户名，注册失败：
	    				try {
	    					//转发至注册错误页面 
	    					response.sendRedirect("reg_failure.jsp");
	    				} 
	    				catch (Throwable t) {
	                        //写异常日志
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
	    				student.setDegree(Integer.parseInt(degree));
	    				//写入数据库
	    				int i=userdb.addStudent(student);  
	    				 // 注册成功
	    				request.setAttribute("user", student);
	    				try {
	    				
	    					//转发至登录成功页面 
	    					session.setAttribute("userLogined","true");
	    					session.setAttribute("name",student.getName());
	    					response.sendRedirect("articleFlat.jsp");
	    				}catch (Throwable t) {
	    					//写异常日志
	    					getServletContext().log(t.getMessage());
	    				}
	    			}
    			}
    			else if(identity.equals("1"))        //教师注册
    			{
    				Teacher teacher = userdb.getByTeacherId(ID);
    				if (teacher != null) {
    				// 如果记录集为非空，表明有相匹配的用户名，注册失败：
    				
	    				try {
	    					//转发至注册错误页面 
	    					response.sendRedirect("reg_failure.jsp");
	    				} 
	    				catch (Throwable t) {
	                        //写异常日志
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
		    			teacher.setDegree(Integer.parseInt(degree));		
	    				              
	    				//写入数据库
	    				int i=userdb.addTeacher(teacher);  
	    				  // 注册成功
	    				request.setAttribute("user", teacher);
	    				try {
	    				
	    					 //转发至登录成功页面 
	    					session.setAttribute("userLogined","true");
	    					session.setAttribute("name",teacher.getName());
	    					response.sendRedirect("articleFlat.jsp");
	    				} 
	    				catch (Throwable t) {
	    					//写异常日志
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
		<div align="center" class="gray-border" >
			<p>
				<br>
				<span class="STYLE1">新用户注册<br> </span>
			</p>

			<form name="register" action="register.jsp" method="post">
				<table border="0" width="440px"  height="85" cellpadding=5>
					<tr>
						<td>
							<font >身份</font>
						</td>
						<td>
							<font >教师</font>
							<input type="radio" name="identity" size="15" value="1" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font >学生</font>
							<input type="radio" name="identity" size="15" value="0" />
						</td>
					</tr>
					<tr>
						<td>
							<font >用户名</font>
						</td>
						<td>
							<input type="text" name="username" size="15" class="form-control" style="width:210px;"/>
						</td>
						<td>
							<font color="red">*</font><font> 请务必填写实名</font>
							<input type="hidden" name="action" value="login" />
						</td>
					</tr>
					<tr>
						<td>
							<font >学号/工号</font>
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
							<font >密码</font>
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
							<font >确认密码</font>
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
							<font >性别</font>
						</td>
						<td>
							<font >男</font>
							<input type="radio" name="sex" size="15" value="1" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font >女</font>
							<input type="radio" name="sex" size="15" value="0" />
						</td>
					</tr>
					<tr>
						<td>
							<font >邮箱</font>
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
							<font >专业</font>
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
							<font >入学年份</font>
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
							<font >学位</font>
						</td>
						<td>
							<font >本科</font>
							<input type="radio" name="degree" size="15" value="1" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<font >硕士</font>
							<input type="radio" name="degree" size="15" value="0" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<font >博士</font>
							<input type="radio" name="degree" size="15" value="0" />
						</td>
					</tr>
					<tr align="left">
						<td align="rignt">
							<input type="button" name="button" value="重置" class="btn btn-primary"/>
						</td>
						<td>
							<input type="button" value="提交" onclick="Check()" class="btn btn-primary" style="width:210px;">
						</td>
						

					</tr>

				</table>
			</form>
			</table>
		</div>
	</body>
</html>
			