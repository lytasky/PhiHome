<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>



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
	String strId = request.getParameter("id");
	if (strId == null || strId.trim().equals("")) {
		out.println("Error ID!");
		return;
	}
	int id = 0;
	try {
		id = Integer.parseInt(strId);
	} catch (NumberFormatException e) {
		out.println("Error ID Again!");
		return;
	}

	List<Article> articles = new ArrayList<Article>();
	Connection conn = DB.getConn();
	Statement stmt1 = conn.createStatement();
	String sq = "update  article set pno = pno+1 where id = " + id;
	stmt1.executeUpdate(sq);
	String sql = "select * from article where rootId = " + id
			+ " order by pdate asc";
	Statement stmt = DB.createStmt(conn);
	ResultSet rs = DB.executeQuery(stmt, sql);
	while (rs.next()) {
		Article a = new Article();
		a.initFromRs(rs);
		articles.add(a);
	}

	DB.close(rs);
	DB.close(stmt);
	DB.close(conn);
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>Java|Java世界_中文论坛|ChinaJavaWorld技术论坛 :
			初学java遇一难题！！望大家能帮忙一下 ...</title>
		<meta http-equiv="content-type" content="text/html; charset=GBK">
		<link rel="stylesheet" type="text/css" href="images/style.css"
			title="Integrated Styles">
		<script language="JavaScript" type="text/javascript"
			src="images/global.js"></script>
		<link rel="alternate" type="application/rss+xml" title="RSS"
			href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
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
		<br>
		<div id="jive-flatpage">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<p class="jive-breadcrumbs">
								<a href="articleFlat.jsp">首页</a>

							</p>
						</td>
						<td width="1%">
							<div class="jive-accountbox"></div>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="jive-buttons">
				<table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td class="jive-icon">
								<br>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div id="jive-message-holder">
								<div class="jive-message-list">
									<div class="jive-table">
										<div class="jive-messagebox">

											<!-- start -->
											<%
												for (int i = 0; i < articles.size(); i++) {
													Article a = articles.get(i);
													String floor = i == 0 ? "楼主" : "第" + i + "楼";
											%>

											<table summary="Message" border="0" cellpadding="0"
												cellspacing="0" width="100%">
												<tbody>
													<tr id="jive-message-780144" class="jive-odd" valign="top">
														<td class="jive-first" width="1%">
															<!-- 个人信息的table -->
															<table border="0" cellpadding="0" cellspacing="0"
																width="150">
																<tbody>
																	<tr>
																		<td>
																			<table border="0" cellpadding="0" cellspacing="0"
																				width="100%">
																				<tbody>
																					<tr valign="top">
																						<td style="padding: 0px;" width="1%">
																							<nobr>
																								<a
																									href="http://bbs.chinajavaworld.com/profile.jspa?userID=215489"
																									title="诺曼底客">诺曼底客</a>
																							</nobr>
																						</td>
																						<td style="padding: 0px;" width="99%">
																							<img class="jive-status-level-image"
																								src="images/level3.gif" title="世界新手" alt=""
																								border="0">
																							<br>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																			<img class="jive-avatar"
																				src="images/avatar-display.png" alt="" border="0">
																			<br>
																			<br>
																			<span class="jive-description"> 发表: 34 <br>
																				点数: 100<br> 注册: 07-5-10 <br> <a
																				href="http://blog.chinajava.com/u/215489"
																				target="_blank"><font color="red">访问我的Blog</font>
																			</a> </span>
																		</td>
																	</tr>
																</tbody>
															</table>
															<!--个人信息table结束-->

														</td>
														<td class="jive-last" width="99%">
															<table border="0" cellpadding="0" cellspacing="0"
																width="100%">
																<tbody>
																	<tr valign="top">
																		<td width="1%"></td>
																		<td width="97%">
																			<span class="jive-subject"><%=floor + "-------" + a.getTitle()%></span>
																		</td>
																		<td class="jive-rating-buttons" nowrap="nowrap"
																			width="1%"></td>
																		<td width="1%">
																			<div class="jive-buttons">
																				<table border="0" cellpadding="0" cellspacing="0">
																					<tbody>
																						<tr>
																							<td>
																								&nbsp;
																							</td>
																							<td class="jive-icon">
																								<img src="images/reply-16x16.gif" alt="回复本主题"
																									border="0" height="16" width="16">
																							</td>
																							<%if(ulogined || ulog){ %> 
																							<td class="jive-icon-label">
																								<a href="reply.jsp?id=<%=a.getId()%>&rootId=<%=a.getRootId()%>&writer=<%=a.getWriter1()%>&pno=<%=a.getPno() %>"
																									title="回复本主题">回复</a>
																							</td>
																							<%} %>
																							
																							<%if(!ulogined&&!ulog){ %>
																							<td class="jive-icon-label">
																								<a href="uselogin.jsp"
																									title="回复本主题">回复</a>
																							</td>
																							<%} %>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4"
																			style="border-top: 1px solid rgb(204, 204, 204);">
																			<br>
																			<%=a.getCont()%>
																			<br>
																			<br>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4" style="font-size: 9pt;">
																			<img src="images/sigline.gif">
																			<br>
																			<font color="#568ac2">学程序是枯燥的事情，愿大家在一起能从中得到快乐！</font>
																			<br>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4"
																			style="border-top: 1px solid rgb(204, 204, 204); font-size: 9pt; table-layout: fixed;">
			
																			
																		</td>
																	</tr>
																</tbody>
															</table>
														</td>
													</tr>
												</tbody>
											</table>

											<!-- end -->
										<%
										}
									    %>
										</div>
									</div>
								</div>
								<div class="jive-message-list-footer">
									<table border="0" cellpadding="0" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td nowrap="nowrap" width="1%">
													<br>
													<br>
												</td>
												<td align="center" width="98%">
													<table border="0" cellpadding="0" cellspacing="0">
														<tbody>
															<tr>
																<td>
																	<a href="articleFlat.jsp"><img
																			src="images/arrow-left-16x16.gif" alt="返回到主题列表"
																			border="0" height="16" hspace="6" width="16"> </a>
																</td>
																<td>
																	<a href="articleFlat.jsp">返回到主题列表</a>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
												<td nowrap="nowrap" width="1%">
													&nbsp;
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</td>
						<td width="1%">
							&nbsp;
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>
