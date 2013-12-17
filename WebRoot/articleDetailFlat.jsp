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
	String classify = (String)request.getParameter("classify");
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
	String sq = "update  course set pno = pno+1 where id = " + id;
	if(classify.equals("0"))
	{
		sq = "update  course set pno = pno+1 where id = " + id;
	}
	else if(classify.equals("1"))
	{	
		sq = "update  reading set pno = pno+1 where id = " + id;
	}
	else if(classify.equals("2"))
	{	
		sq = "update  salon set pno = pno+1 where id = " + id;
	}
	stmt1.executeUpdate(sq);
	String sql = "select * from course where rootId = " + id
			+ " order by pdate asc";
	if(classify.equals("0"))
	{
		sql = "select * from course where rootId = " + id
			+ " order by pdate asc";
	}
	else if(classify.equals("1"))
	{	
		sql = "select * from reading where rootId = " + id
			+ " order by pdate asc";
	}
	else if(classify.equals("2"))
	{	
		sql = "select * from salon where rootId = " + id
			+ " order by pdate asc";
	}	
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
			
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
		<link href="css/diy.css" rel="stylesheet" media="screen" />
  		<script src="https://code.jquery.com/jquery.js"></script>
  		<link rel="stylesheet" href="css/flexslider.css" type="text/css">
		<script src="js/jquery.flexslider.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</head>
	<body>
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
    </div><!-- head -->
		<div id="jive-flatpage" style="width:1000px;margin:0 auto;">
			<br>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr valign="top">
						<td width="100%">
							<a href="articleFlat.jsp?classify=<%=classify%>">论坛首页</a>
						</td>
						<!--<td width="1%">
							<div class="jive-accountbox"></div>
						</td>-->
					</tr>
				</tbody>
			</table>
			
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
																			<table border="0" cellpadding="5" cellspacing="0"
																				width="100%">
																				<tbody>
																					<tr valign="top">
																						<td style="padding: 0px;" width="1%">
																							<nobr>
																								<a
																									href="#"
																									title="诺曼底客">用户名</a>
																									
																							</nobr>
																						</td>

																					</tr>
																					<tr>
																						<td>
																							<img src="images/touxiang2.jpg">
																						</td>
																					</tr>
																				</tbody>
																			</table>
																			
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
																								<a href="reply.jsp?classify=<%=classify%>&classify=<%=classify%>&id=<%=a.getId()%>&rootId=<%=a.getRootId()%>&writer=<%=a.getWriter1()%>&pno=<%=a.getPno() %>"
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
																	<a href="articleFlat.jsp?classify=<%=classify%>"><img
																			src="images/arrow-left-16x16.gif" alt="返回到主题列表"
																			border="0" height="16" hspace="6" width="16"> </a>
																</td>
																<td>
																	<a href="articleFlat.jsp?classify=<%=classify%>">返回到主题列表</a>
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
