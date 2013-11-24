<%@ page pageEncoding="gb2312"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>
<%@ page import="userbean.AdminUser" %>
<%@ page import="dbmgr.UserMgr"  %>
<%@ page contentType="text/html; charset=gb2312" %>

<% request.setCharacterEncoding("gb2312");
AdminUser oneUser=new AdminUser();

%>


<%
	boolean logined = false; //判断管理员是否登陆
	String adminLogined = (String) session.getAttribute("admLogined");
	if (adminLogined != null && adminLogined.trim().equals("true")) {
		logined = true;
	
	}
//	out.println(logined);
%>

<%
	final int PAGE_SIZE = 10; // 分页
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
			"select count(*) from article where pid = 0"); // 显示所有pid=0的帖子
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
	<head>
		<base href="<%=basePath%>">
		<title>Java语言*初级版</title>
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
  <!-- <script src="https://code.jquery.com/jquery.js"></script>-->
  <script src="js/jquery.js"></script>
  <link rel="stylesheet" href="css/flexslider.css" type="text/css">
<script src="js/jquery.flexslider.js"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js"></script>
	</head>
	<body><br><div id="jive-forumpage"><div class="jive-buttons"><br><div align="right">

	
				
				</div> 
				<%if (logined) {//判断是否登陆%>
				<div align="center">
					<form action="searchResult.jsp" method="post">
					<div class="row" style="margin:0 auto;width:250px;">
  					<div class="col-md-12">
    					<div class="input-group input-group-sm">
      					<input type="text" class="form-control">
      					<span class="input-group-btn">
        					<button class="btn btn-primary" type="button">搜索</button>
      					</span>
    					</div><!-- /input-group -->
  					</div><!-- /.col-lg-6 -->
			</div><!-- /.row -->
					</form>
				</div>
			</div>
			
			<a href="post.jsp">发表新主题<img src="images/post-16x16.gif"
										alt="发表新主题" border="0" height="16" width="16">
								</a><br>
				<%} %>
			<table border="0" cellpadding="3" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td>
							<span class="nobreak"> 第<%=pageNo%>页,共<%=totalPages %>页  <span
								class="jive-paginator"> [</span>
							</span>

							<span class="nobreak"><span class="jive-paginator">
									<a href="articleFlat1.jsp?pageNo=1">第一页</a>
							</span>
							</span>



							<span class="nobreak"><span class="jive-paginator">|</span>
							</span>
							<span class="nobreak"><span class="jive-paginator">
									<a href="articleFlat1.jsp?pageNo=<%=pageNo - 1%>">上一页</a> </span>
							</span>

							<span class="nobreak"><span class="jive-paginator">|
							</span>
							</span>
							<span class="nobreak"><span class="jive-paginator">
									<a href="articleFlat1.jsp?pageNo=<%=pageNo + 1%>">下一页</a>
									|&nbsp; <a href="articleFlat1.jsp?pageNo=<%=totalPages%>">最末页</a>
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
													主题
												</th>
												<th class="jive-author">
													<nobr>
														作者 &nbsp;
													</nobr>
												</th>
												<th class="jive-view-count">
													<nobr>
														浏览次数 &nbsp;
													</nobr>
												</th>
												
												<th class="jive-last" nowrap="nowrap">
													最新帖子
												</th>
											</tr>
										</thead>
										<tbody>
											<%
												int lineNo = 0;
												for (Iterator<Article> it = articles.iterator(); it.hasNext();) {
													Article a = it.next();
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
														if (logined) {//判断是否登陆
													%>
													<a href="modify.jsp?id=<%=a.getId()%>">修改</a>
													<a
														href="delete.jsp?id=<%=a.getId()%>&isLeaf=<%=a.isLeaf()%>&pid=<%=a.getPid()%>">删除</a>
													<%
														}
													%>
												</td>

												<td class="jive-thread-name" width="95%">
													<a id="jive-thread-1"
														href="articleDetailFlat.jsp?id=<%=a.getId()%>"><%=a.getTitle()%></a>
												</td>
												<td class="jive-author" nowrap="nowrap" width="1%">

													<span class=""> <%=a.getWriter1() %> </span>
												</td>
												<%Connection connw = DB.getConn();
	                                              Statement stmt1 = connw.createStatement();
	                                              String sq = "select pno from article where id = "+ a.getId();
	                                              ResultSet rs1 = stmt1.executeQuery(sq);
	                                              while(rs1.next()){
	                                              %>
												<td class="jive-view-count" width="1%">
													<%=rs1.getInt("pno") %>
												</td>
												<%} %>
												
												<td class="jive-last" nowrap="nowrap" width="1%">
													<div class="jive-last-post">
														<%=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
								.format(a.getPdate())%>
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
