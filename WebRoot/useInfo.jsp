<%@ page pageEncoding="gb2312"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>
<%@ page import="userbean.Student"%>
<%@ page import="userbean.Teacher"%>
<%@ page import="dbmgr.UserMgr"%>
<jsp:directive.page import="dbmgr.UserMgr;"/>
<% request.setCharacterEncoding("gb2312");
	User oneUser=new User();

%>

<% 
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
			"select count(*) from article where pid = 0"); // ��ʾ����pid=0������
	rsCount.next();
	int totalRecords = rsCount.getInt(1);

	totalPages = (totalRecords + PAGE_SIZE - 1) / PAGE_SIZE;

	if (pageNo > totalPages)
		pageNo = totalPages;

	Statement stmt = DB.createStmt(conn);
	int startPos = (pageNo - 1) * PAGE_SIZE;
	String sql = "select * from article where pid = 0 order by pdate desc limit "
			+ startPos + "," + PAGE_SIZE;
	System.out.println(sql);
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
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
	<link href="css/diy.css" rel="stylesheet" media="screen" />
  <!-- <script src="https://code.jquery.com/jquery.js"></script>-->
  <script src="js/jquery.js"></script>
  <link rel="stylesheet" href="css/flexslider.css" type="text/css">
<script src="js/jquery.flexslider.js"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js"></script>
	<head>
		
		<title>�û���Ϣ</title>
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
		<div align="center"  >
			<p>
				<br>
				<font size=4><%=(String)session.getAttribute("name")%><br> </font>
			</p>

			<form name="register" action="register.jsp" method="post">
				<table border="0" width="440px"  height="85" cellpadding=5>
					<tr>
						<td>
							<font >���</font>
						</td>
						<td>
							<font></font>
						</td>
					</tr>
					<tr>
						<td>
							<font >�û���</font>
						</td>
						<td>
							<font></font>
						</td>
						<td>
							<input type="hidden" name="action" value="login" />
						</td>
					</tr>
					<tr>
						<td>
							<font >�Ա�</font>
						</td>
						<td>
							<font ></font>
						</td>
					</tr>
					<tr>
						<td>
							<font >����</font>
						</td>
						<td>
							<font></font>
						</td>
					</tr>
					<tr>
						<td>
							<font >רҵ</font>
						</td>
						<td>
							<font></font>
						</td>
					</tr>
					<tr>
						<td>
							<font >��ѧ���</font>
						</td>
						<td>
							<font></font>
						</td>
					</tr>
					<tr>
						<td>
							<font >ѧλ</font>
						</td>
						<td>
							<font></font>
						</td>
					</tr>

				</table>
			</form>
			</table>
		</div>
	</body>
</html>
			