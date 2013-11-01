<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*"%>

<%
	request.setCharacterEncoding("GBK");
	String action = request.getParameter("action");
	if (action != null && action.trim().equals("post")) {
		String title = request.getParameter("title");
		System.out.println(title);
	    String writer = request.getParameter("writer");
	    System.out.println(writer);
		String cont = request.getParameter("cont");
		System.out.println(cont);
		String pno = request.getParameter("pno");
		System.out.println(pno);
		Connection conn = DB.getConn();

		boolean autoCommit = conn.getAutoCommit();
		conn.setAutoCommit(false);
		
		int rootId = -1;
		
		String sql = "insert into article values (null, ?, ?, ?, ?, ?, now(),? ,?)";
		PreparedStatement pstmt = DB.prepareStmt(conn, sql, Statement.RETURN_GENERATED_KEYS);
		pstmt.setInt(1, 0);
		pstmt.setInt(2, rootId);
		pstmt.setString(3, title);
		pstmt.setString(4,writer);
		pstmt.setString(5, cont);
		pstmt.setInt(6, 0);
		pstmt.setInt(7, 0);
		pstmt.executeUpdate();
		ResultSet rsKey = pstmt.getGeneratedKeys();
		rsKey.next();
		rootId = rsKey.getInt(1);
	
		Statement stmt = DB.createStmt(conn);
		stmt.executeUpdate("update article set rootid = " + rootId + " where id = "	+ rootId);

		conn.commit();
		conn.setAutoCommit(autoCommit);
		DB.close(pstmt);
		DB.close(stmt);
		DB.close(conn);
		
		response.sendRedirect("articleFlat.jsp");

	}
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>����������</title>
		<meta http-equiv="content-type" content="text/html; charset=GBK">
		<link rel="stylesheet" type="text/css" href="images/style.css"
			title="Integrated Styles">
		<script language="JavaScript" type="text/javascript"
			src="images/global.js"></script>
		<!-- fckeditor -->
		<!-- Ϊ���ٶȶ�û��ʹ��fckeditor -->
		<!-- end of fckeditor -->

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
						<td width="99%"><br><p class="jive-page-title">&nbsp;����������<br>
							</p>
						</td>
						<td width="1%">
							<div class="jive-accountbox"></div>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="jive-buttons">
				<br>
			</div>
			<br>
			<table border="0" cellpadding="0" cellspacing="0" width="930"
				height="61">
				<tbody>
					<tr valign="top">
						<td width="99%">
							<div id="jive-message-holder">
								<div class="jive-message-list">
									<div class="jive-table">
										<div class="jive-messagebox">

											<form action="post.jsp" method="post">
												<input type="hidden" name="action" value="post" />
												
												���⣺
												<input type="text" name="title">
												<br>&nbsp;
												���ߣ�<input type="text" name="writer"/> 

												<br>
												���ݣ�
												<textarea name="cont" rows="15" cols="80"></textarea>
												<br>
												<input type="submit" value="submit" />
											</form>

										</div>
									</div>
								</div>
								<div class="jive-message-list-footer">
									<br>
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
