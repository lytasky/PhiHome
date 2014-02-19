<%@ page pageEncoding="gb2312"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>
<%@ page import="userbean.Student" %>
<%@ page import="dbmgr.UserMgr"  %>
<%@ page contentType="text/html; charset=gb2312" %>

<% request.setCharacterEncoding("gb2312");


%>


<%
	boolean logined = false; //判断管理员是否登陆
	String adminLogined = (String) session.getAttribute("admLogined");
	if (adminLogined != null && adminLogined.trim().equals("true")) {
		logined = true;
	}
	System.out.println("Logine"+logined);
%>

<%
	final int PAGE_SIZE = 4; // 分页
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

	List<Student> users = new ArrayList<Student>();
	Connection conn = DB.getConn();

	Statement stmtCount = DB.createStmt(conn);
	ResultSet rsCount = DB.executeQuery(stmtCount,
			"select count(*) from student");
	rsCount.next();
	int totalRecords = rsCount.getInt(1);

	totalPages = (totalRecords + PAGE_SIZE - 1) / PAGE_SIZE;

	if (pageNo > totalPages)
		pageNo = totalPages;

	Statement stmt = DB.createStmt(conn);
	int startPos = (pageNo - 1) * PAGE_SIZE;
	String sql = "select * from student limit "
			+ startPos + "," + PAGE_SIZE;
	ResultSet rs = DB.executeQuery(stmt, sql);
	while (rs!= null && rs.next()) {
		Student oneUser=new Student();
		oneUser.initFromR(rs);
		users.add(oneUser);
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
		<title></title>
		<meta http-equiv="content-type" content="text/html; charset=utf8">
		<link rel="stylesheet" type="text/css" href="css/style.css"
			title="Integrated Styles">
		<script language="JavaScript" type="text/javascript"
			src="css/global.js"></script>
		<link rel="alternate" type="application/rss+xml" title="RSS"
			href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?forumID=20">
		<script language="JavaScript" type="text/javascript"
			src="css/common.js"></script>
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
	<link href="css/diy.css" rel="stylesheet" media="screen" />
  <!-- <script src="https://code.jquery.com/jquery.js"></script>-->
  <script src="js/jquery.js"></script>
  <link rel="stylesheet" href="css/flexslider.css" type="text/css">
<script src="js/jquery.flexslider.js"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js"></script>
	</head>
	<body><br><div id="jive-forumpage"><div class="jive-buttons"><br>
				<%if (logined) {//判断是否登陆%>
				<div align="center">
					<form action="searchResultStudent.jsp" method="post">
						<div class="row" style="margin:0 auto;width:250px;">
  					<div class="col-md-12">
    					<div class="input-group input-group-sm">
      					<input type="text" name="keyword" class="form-control">
      					<span class="input-group-btn">
        					<button class="btn btn-primary" type="button">搜索</button>
      					</span>
    					</div><!-- /input-group -->
  					</div><!-- /.col-lg-6 -->
			</div><!-- /.row -->
					</form>
				</div>
			</div>
			<%} %>
			<table border="0" cellpadding="3" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td>
							<span class="nobreak"> 第<%=pageNo%>页,共<%=totalPages %>页  <span
								class="jive-paginator"> [</span>
							</span>

							<span class="nobreak"><span class="jive-paginator">
									<a href="studentMrg.jsp?pageNo=1">第一页</a>
							</span>
							</span>



							<span class="nobreak"><span class="jive-paginator">|</span>
							</span>
							<span class="nobreak"><span class="jive-paginator">
									<a href="studentMrg.jsp?pageNo=<%=pageNo - 1%>">上一页</a> </span>
							</span>

							<span class="nobreak"><span class="jive-paginator">|
							</span>
							</span>
							<span class="nobreak"><span class="jive-paginator">
									<a href="studentMrg.jsp?pageNo=<%=pageNo + 1%>">下一页</a>
									|&nbsp; <a href="studentMrg.jsp?pageNo=<%=totalPages%>">最末页</a>
									] </span> </span>
						</td>
					</tr>
				</tbody>
			</table>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div class="jive-thread-list">
								<div class="jive-table">
									<table summary="List of threads" cellpadding="0"
										cellspacing="0" width="100%">
										<thead>
											<tr>
												<th class="jive-first" colspan="3">
													用户名
												</th>
												<th class="jive-author">
													<nobr>
														密码 &nbsp;
													</nobr>
												</th>
												<th class="jive-view-count">
													<nobr>
														性别 &nbsp;
													</nobr>
												</th>
												
												<th class="jive-last" nowrap="nowrap">
													邮箱
												</th>
											</tr>
										</thead>
										<tbody>
											<%
												int lineNo = 0;
												for (Iterator<Student> u = users.iterator(); u.hasNext();) {
													Student user = u.next();
													String classStr = lineNo % 2 == 0 ? "jive-even" : "jive-odd";
											%>
											<tr class="<%=classStr%>">
												<td class="jive-first" nowrap="nowrap" width="1%">
													<div class="jive-bullet">
														<img src="images/read-16x16.gif" alt="已读" border="0"
															height="16" width="16">
														<!-- div-->
													</div>
												</td>

												<td nowrap="nowrap" width="1%">
													<%
														String url = request.getScheme() + "://"
																	+ request.getServerName() + ":"
																	+ request.getServerPort();
															url += request.getContextPath();
															url += request.getServletPath();
															url += request.getQueryString() == null ? "" : ("?" + request
																	.getQueryString());
															//System.out.println(request.getRequestURI());
															//System.out.println(request.getRequestURL());
															
													%>
													<%
														if (logined) {
													%>
													<a href="deleteStudent.jsp?id=<%=user.getId()%>&form1=<%=url %>">删除</a>
													<%} %>	
												</td>

												<td class="jive-thread-name" width="95%">
												<%=user.getName()%>
												</td>
												<td class="jive-author" nowrap="nowrap" width="1%">

													<span class=""> <%=user.getPassword() %> </span>
												</td>
												
												<td class="jive-view-count" width="1%">
													<%=user.getSex()%>
												</td>
												
												
												<td class="jive-last" nowrap="nowrap" width="1%">
													<div class="jive-last-post">
														<%=user.getEmail()%>
														<br><br> 
													</div>
												</td>
											</tr>

											<%
												lineNo++;
												}
											%>
										</tbody>
									</table>
								</div>
							</div>
							<div class="jive-legend"></div>
						</td>
					</tr>
				</tbody>
			</table>
			<br>
			<br>
		</div>
	</body>
</html>
