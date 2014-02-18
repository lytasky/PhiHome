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
	String name = (String)session.getAttribute("name");
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
	final int PAGE_SIZE = 10; // ��ҳ
	int pageNo = 1;
	String strPageNo = request.getParameter("pageNo");
	if (strPageNo != null && !strPageNo.trim().equals("")) {
		try {
			pageNo = Integer.parseInt(strPageNo);
		} catch (NumberFormatException e) {
			pageNo = 1;
		}
	}

	if (pageNo <= 0)
		pageNo = 1;

	int totalPages = 0;

	List<Article> articles = new ArrayList<Article>();
	Connection conn = DB.getConn();

	Statement stmtCount = DB.createStmt(conn);
	ResultSet rsCount = DB.executeQuery(stmtCount,
			"select count(*) from course where pid = 0"); // ��ʾ����pid=0������
	rsCount.next();
	int totalRecords = rsCount.getInt(1);

	totalPages = (totalRecords + PAGE_SIZE - 1) / PAGE_SIZE;

	if (pageNo > totalPages)
		pageNo = totalPages;

	Statement stmt = DB.createStmt(conn);
	int startPos = (pageNo - 1) * PAGE_SIZE;
	String sql = "select * from course where pid = 0 order by pdate desc limit "
			+ startPos + "," + PAGE_SIZE;
	ResultSet rs = DB.executeQuery(stmt, sql);
	while (rs.next()) {
		Article a = new Article();
		a.initFromRs(rs);
		articles.add(a);
	}
	DB.close(rsCount);
	DB.close(stmtCount);

	DB.close(rs);
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
		<div style="width:700px;height:50px;padding-top:10px;" class="fl "><font color="#3276b1" size=4><%=name%></font> ���<marquee style="width:500px;margin-left:15px;" class="">��ӭ���ٱ���̳�����һ������ͬ��ߣ�</marquee></div>
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
        <a href="forum.jsp" class="list-group-item active" style="background-color:#3276b1;font-size:14px;">
          <span class="glyphicon glyphicon-list-alt"></span> ��̳����
        </a>
      </div>
      <div class="" style="margin-top:10px;">
        <div class="gray-border fl round-border" style="margin-left:5px;width:320px;height:100px;background-color:#fff;padding-top:10px;padding-left:10px;">
          <div class="fl">	
        	<img src="images/forum_new.gif">
          </div>
          <div class="fl gray-border" style="margin-left:10px;line-height:1.5;">
          	<font style="font-family:΢���ź�;" size="2">
        	<a href="articleFlat.jsp?classify=0">�γ�����</a><br>
        	���⣺������������������<br>
        	��󷢱���󷢱�ʱ��
        	</font>
          </div>
        </div>
        <div class="gray-border fl round-border" style="margin-left:15px;width:320px;height:100px;background-color:#fff;padding-top:10px;padding-left:10px;">
        	<div class="fl">	
        	<img src="images/forum_new.gif">
          </div>
          <div class="fl gray-border" style="margin-left:10px;line-height:1.5;">
        	<font style="font-family:΢���ź�;" size="2">
        	<a href="articleFlat.jsp?classify=1">�����</a><br>
        	���⣺������������������<br>
        	��󷢱���󷢱�ʱ��
        	</font>
          </div>
        </div>
        <div class="gray-border fl round-border" style="margin-left:15px;width:320px;height:100px;background-color:#fff;padding-top:10px;padding-left:10px;">
        	<div class="fl">	
        	<img src="images/forum_new.gif">
          </div>
          <div class="fl gray-border" style="margin-left:10px;line-height:1.5;">
        	<font style="font-family:΢���ź�;" size="2">
        	<a href="articleFlat.jsp?classify=2">��ѧɳ��</a><br>
        	���⣺������������������<br>
        	��󷢱���󷢱�ʱ��
        	</font>
          </div>
        </div>
      </div>
  		
		</div>
  </div>
	</body>
</html>
