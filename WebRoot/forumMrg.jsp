<%@ page pageEncoding="gb2312"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>
<%@ page import="userbean.AdminUser" %>
<%@ page import="dbmgr.UserMgr"  %>
<%@ page contentType="text/html; charset=gb2312" %>
<jsp:directive.page import="dbmgr.UserMgr;"/>
<% request.setCharacterEncoding("gb2312");
	AdminUser oneUser=new AdminUser();
%>

<% 
	String adminName = (String)session.getAttribute("admName");
    boolean ulogined = false; //�ж��û��Ƿ�ע����Զ���½
	String userLogined = (String)session.getAttribute("userLogined");
	if (userLogined != null && userLogined.trim().equals("true")) {
		ulogined = true;
	}
 %>

<% 
    boolean ulog = false; //�ж��û��Ƿ��½
	String u = (String)session.getAttribute("uLogined");
	if (u != null && u.trim().equals("true")) {
		ulog = true;
	}
 %>
<%
	boolean logined = false; //�жϹ���Ա�Ƿ��½
	String adminLogined = (String) session.getAttribute("adminLogined");
	if (adminLogined != null && adminLogined.trim().equals("true")) {
		logined = true;
	}
%>

<%
// ������Ŀ
	int num1 = 0;
	int num2 = 0;
	int num3 = 0;
// ��������
	int totalNum1 = 0;
	int totalNum2 = 0;
	int totalNum3 = 0;
// ���ظ�ʱ��
	String lastReplyTime1 = "none";
	String lastReplyTime2 = "none";
	String lastReplyTime3 = "none";	
%>


<%
	Connection conn = DB.getConn();
	Statement stmt = DB.createStmt(conn);
	
	String sql1 = "select * from course  order by pdate desc";
	ResultSet rs1 = DB.executeQuery(stmt, sql1);
	while (rs1!= null && rs1.next()) {
		Article a = new Article();
		a.initFromRs(rs1);
		if(lastReplyTime1.equalsIgnoreCase("none"))
			lastReplyTime1 = a.getPdate().toLocaleString();
		if(a.getPid() == 0)
			num1++;
		totalNum1++;
	}
	
	String sql2 = "select * from reading  order by pdate desc";
	ResultSet rs2 = DB.executeQuery(stmt, sql2);
	while (rs2!= null && rs2.next()) {
		Article a = new Article();
		a.initFromRs(rs2);
		if(lastReplyTime2.equalsIgnoreCase("none"))
			lastReplyTime2 = a.getPdate().toLocaleString();
		if(a.getPid() == 0)
			num2++;
		totalNum2++;
	}
	
	String sql3 = "select * from salon  order by pdate desc";
	ResultSet rs3 = DB.executeQuery(stmt, sql3);
	while (rs3!= null && rs3.next()) {
		Article a = new Article();
		a.initFromRs(rs3);
		if(lastReplyTime3.equalsIgnoreCase("none"))
			lastReplyTime3 = a.getPdate().toLocaleString();
		if(a.getPid() == 0)
			num3++;
		totalNum3++;
	}
	DB.close(rs1);
	DB.close(rs2);
	DB.close(rs3);
	DB.close(stmt);
	DB.close(conn);
%>

<%
	//search
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>��̳</title>
		<meta http-equiv="content-type" content="text/html; charset=utf8">
		<link rel="stylesheet" type="text/css" href="images/style.css"
			title="Integrated Styles">
		<script language="JavaScript" type="text/javascript"
			src="images/global.js"></script>
		<link rel="alternate" type="application/rss+xml" title="RSS"
			href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?forumID=20">
		<script language="JavaScript" type="text/javascript"
			src="images/common.js"></script>
			
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
		<link href="css/diy.css" rel="stylesheet" media="screen" />
  		<script src="https://code.jquery.com/jquery.js"></script>
  		<link rel="stylesheet" href="css/flexslider.css" type="text/css">
		<script src="js/jquery.flexslider.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</head>
	<body topmargin="0" style="background:url(images/back.PNG) repeat;">
		<div id="head" style="margin:0 auto;width:1000px;height:150px;border:1px solid #CCC;background:url(images/china-style3.8.gif);">	<!--����ģ������Ҫʹ�õĶ�����Ҳ����ÿ��ҳ�涼��Ҫ�õ���-->
      <div id="head-right" style="float:right;width:25%;align:center;margin-top:28px;">
      	<div style="margin-right:35px;float:right;">
          <p><div class="fl" style="width:40px;"><a class="head-text" href="#">����</a></div><div class="fl" style="width:60px;"><a class="head-text" href="#">English</a></div></p>
       	</div>
      </div>
    </div>
   	<div style="width:1000px;margin:10px auto;background-color:#fff;padding-left:10px;" class=" round-border">
		<div style="width:700px;height:50px;padding-top:10px;" class="fl "><font color="#3276b1" size=4><%=adminName%></font> ���<marquee style="width:500px;margin-left:15px;" class="">��ӭ���ٱ���̳�����һ������ͬ��ߣ�</marquee></div>
    	<div align="center" style="width:250px;padding-top:-10px;" class=" fr" >
					<form action="" method="post">
					<div class="row" style="margin:5px auto;width:250px;">
  					<div class="col-md-12">
    					<div class="input-group input-group-sm">
      					<input type="text" class="form-control" name="keyword">
      					<span class="input-group-btn">
        					<button class="btn btn-primary" type="submit">����</button>
      					</span>
    					</div><!-- /input-group -->
  					</div><!-- /.col-lg-6 -->
					</div><!-- /.row -->
					</form>
				</div>
		 <div id="jive-forumpage">
			

		</div>
	</div>
  	<div id="publish" style="width:1000px;height:278px;display:block;margin:50px auto;"><!--publish-->
  	<div class="list-group">
    	<div class="gray-border">
        <a href="xinxi/zytg.jsp" class="list-group-item active" style="background-color:#3276b1;">
          <span class="glyphicon glyphicon-list-alt"></span> ��̳����
        </a>
      </div>
      <div class="" style="margin-top:10px;">
        <div class="gray-border fl round-border" style="margin-left:5px;width:320px;height:100px;background-color:#fff;padding-top:10px;padding-left:10px;">
          <div class="fl">	
        	<img src="images/forum_new.gif">
          </div>
          <div class="fl gray-border" style="margin-left:10px;">
          	<font style="font-family:΢���ź�;">
        	<a href="articleFlat1.jsp?classify=0">�γ�����</a><br>
        	���⣺<%=num1 %>��������<%=totalNum1%><br>
        	��󷢱�<%= lastReplyTime1%>
        	</font>
          </div>
        </div>
        <div class="gray-border fl round-border" style="margin-left:15px;width:320px;height:100px;background-color:#fff;padding-top:10px;padding-left:10px;">
        	<div class="fl">	
        	<img src="images/forum_new.gif">
          </div>
          <div class="fl gray-border" style="margin-left:10px;">
        	<font style="font-family:΢���ź�;">
        	<a href="articleFlat1.jsp?classify=1">�����</a><br>
        	���⣺<%=num2 %>��������<%=totalNum2%><br>
        	��󷢱�<%= lastReplyTime2%>
        	</font>
          </div>
        </div>
        <div class="gray-border fl round-border" style="margin-left:15px;width:320px;height:100px;background-color:#fff;padding-top:10px;padding-left:10px;">
        	<div class="fl">	
        	<img src="images/forum_new.gif">
          </div>
          <div class="fl gray-border" style="margin-left:10px;">
        	<font style="font-family:΢���ź�;">
        	<a href="articleFlat1.jsp?classify=2">��ѧɳ��</a><br>
        	���⣺<%=num3 %>��������<%=totalNum3%><br>
        	��󷢱�<%= lastReplyTime3%>
        	</font>
          </div>
        </div>
      </div>
  		
		</div>
  </div>
	</body>
</html>
