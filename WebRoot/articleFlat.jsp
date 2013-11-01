<%@ page pageEncoding="gb2312"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>
<%@ page import="userbean.User" %>
<%@ page import="dbmgr.UserMgr"  %>
<%@ page contentType="text/html; charset=gb2312" %>
<jsp:directive.page import="dbmgr.UserMgr;"/>
<% request.setCharacterEncoding("gb2312");
User oneUser=new User();

%>

<% 
    boolean ulogined = false; //判断用户是否注册后自动登陆
	String userLogined = (String)session.getAttribute("userLogined");
	if (userLogined != null && userLogined.trim().equals("true")) {
		ulogined = true;
	}
 %>

<% 
    boolean ulog = false; //判断用户是否登陆
	String u = (String)session.getAttribute("uLogined");
	if (u != null && u.trim().equals("true")) {
		ulog = true;
	}
 %>
<%
	boolean logined = false; //判断管理员是否登陆
	String adminLogined = (String) session.getAttribute("adminLogined");
	if (adminLogined != null && adminLogined.trim().equals("true")) {
		logined = true;
	}
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
	</head>
	<body>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
				<tr>
					<td width="40%">
						<img src="images/huang1.jpg" alt="" border="0" height="57"
							width="100%">
					</td>
					
				</tr>
			</tbody>
		</table>
		<font color="red" size=4><%=(String)session.getAttribute("name")%></font>你好
		 <br><div id="jive-forumpage"><div class="jive-buttons"><br><div align="right">

	
				
				</div> 
				<marquee>欢迎光临本论坛，大家一起交流共同提高！</marquee><br>
				<div align="center">
					<form action="searchResult.jsp" method="post">
						<input type="text" name="keyword" />
						<input type="submit" value="搜索" />
					</form>
				</div>
			</div>
			<%if(ulogined || ulog){ %>
			<a href="post.jsp">发表新主题<img src="images/post-16x16.gif"
										alt="发表新主题" border="0" height="16" width="16">
								</a><br>
			<%} %>					
			<%if(!ulogined&&!ulog){ %>
			<a href="uselogin.jsp">发表新主题<img src="images/post-16x16.gif"
										alt="发表新主题" border="0" height="16" width="16">
								</a><br>
			<%} %>					
			<table border="0" cellpadding="3" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td>
							<span class="nobreak"> 页: 第<%=pageNo%>页,共<%=totalPages %>页  <span
								class="jive-paginator"> [</span>
							</span>

							<span class="nobreak"><span class="jive-paginator">
									<a href="articleFlat.jsp?pageNo=1">第一页</a>
							</span>
							</span>



							<span class="nobreak"><span class="jive-paginator">|</span>
							</span>
							<span class="nobreak"><span class="jive-paginator">
									<a href="articleFlat.jsp?pageNo=<%=pageNo - 1%>">上一页</a> </span>
							</span>

							<span class="nobreak"><span class="jive-paginator">|
							</span>
							</span>
							<span class="nobreak"><span class="jive-paginator">
									<a href="articleFlat.jsp?pageNo=<%=pageNo + 1%>">下一页</a>
									|&nbsp; <a href="articleFlat.jsp?pageNo=<%=totalPages%>">最末页</a>
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
														String url = request.getScheme() + "://"
																	+ request.getServerName() + ":"
																	+ request.getServerPort();
															url += request.getContextPath();
															url += request.getServletPath();
															url += request.getQueryString() == null ? "" : ("?" + request
																	.getQueryString());
															System.out.println(url);
															//System.out.println(request.getRequestURI());
															//System.out.println(request.getRequestURL());
													%>
													<%
														if (logined) {//判断是否登陆
													%>
													<a href="modify.jsp?id=<%=a.getId()%>">修改</a>
													<a
														href="delete.jsp?id=<%=a.getId()%>&isLeaf=<%=a.isLeaf()%>&pid=<%=a.getPid()%>&from=<%=url%>">删除</a>
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
