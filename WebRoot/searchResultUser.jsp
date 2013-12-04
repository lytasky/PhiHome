<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*, com.bjsxt.bbs.*, java.util.*"%>
<%@ page import="userbean.Teacher" %>
<%@ page import="userbean.Student" %>


<%
String keyword = new String(request.getParameter("keyword").getBytes("8859_1"), "GBK");
if(keyword == null) keyword = "";

final int PAGE_SIZE = 4;
int pageNo = 1;
String strPageNo = request.getParameter("pageNo");
if(strPageNo != null && !strPageNo.trim().equals("")) {
	try {
		pageNo = Integer.parseInt(strPageNo);
	} catch (NumberFormatException e) {
		pageNo = 1;
	} 
}



int totalPages = 0;

List<User> users = new ArrayList<User>();
Connection conn = DB.getConn();

Statement stmtCount = DB.createStmt(conn);
String sqlCount = "select count(*) from user where name like '%" + keyword + "%'" ;
System.out.println(sqlCount);
ResultSet rsCount = DB.executeQuery(stmtCount, sqlCount);
rsCount.next();
int totalRecords = rsCount.getInt(1);

totalPages = (totalRecords + PAGE_SIZE - 1)/PAGE_SIZE;

if(pageNo > totalPages) pageNo = totalPages;

if(pageNo <= 0) pageNo = 1;

Statement stmt = DB.createStmt(conn);
int startPos = (pageNo-1) * PAGE_SIZE; 
String sql = "select * from user where name like '%" + keyword + "%'  limit " + startPos + "," + PAGE_SIZE ;
System.out.println(sql);
ResultSet rs = DB.executeQuery(stmt, sql);
while(rs.next()) {
	User a = new User();
	a.initFromR(rs);
	users.add(a);
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
	<body><br><div id="jive-forumpage"><div class="jive-buttons"><br><div align="right">

	
				
				</div> 
				<marquee>欢迎光临本论坛，大家一起交流共同提高！</marquee><br>
				<div align="center">
					<form action="searchResultUser.jsp" method="post">
						<input type="text" name="keyword" />
						<input type="submit" value="搜索" />
					</form>
				</div>
			</div>
			
			<table border="0" cellpadding="3" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td>
							<span class="nobreak"> 页: 第<%=pageNo%>页,共<%=totalPages %>页  <span
								class="jive-paginator"> [</span>
							</span>

							<span class="nobreak"><span class="jive-paginator">
									<a href="searchResultUser.jsp?pageNo=1&keyword=<%=keyword %>">第一页</a>
							</span>
							</span>



							<span class="nobreak"><span class="jive-paginator">|</span>
							</span>
							<span class="nobreak"><span class="jive-paginator">
									<a href="searchResultUser.jsp?pageNo=<%=pageNo - 1%>&keyword=<%=keyword %>">上一页</a> </span>
							</span>

							<span class="nobreak"><span class="jive-paginator">|
							</span>
							</span>
							<span class="nobreak"><span class="jive-paginator">
									<a href="searchResultUser.jsp?pageNo=<%=pageNo + 1%>&keyword=<%=keyword %>">下一页</a>
									|&nbsp; <a href="searchResultUser.jsp?pageNo=<%=totalPages%>&keyword=<%=keyword %>">最末页</a>
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
												for (Iterator<User> u = users.iterator(); u.hasNext();) {
													User user = u.next();
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
													
													<a href="deleteUser.jsp?id=<%=user.getId()%>&from=<%=url%>">删除</a>
												</td>

												<td class="jive-thread-name" width="95%">
												<%=user.getUsername()%>
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
