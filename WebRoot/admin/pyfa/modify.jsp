<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*"%>

<%
	request.setCharacterEncoding("GBK");
	String action = request.getParameter("action");
	String classify = request.getParameter("classify");
	System.out.println("In modify "+classify);
	
	int id = Integer.parseInt(request.getParameter("id"));
	if (action != null && action.trim().equals("modify")) {
		Connection conn = DB.getConn();
		String title = request.getParameter("title");
		System.out.println(title);
		String cont = request.getParameter("cont");
		System.out.println(cont);
		String sql = "update course set title = ? , cont = ? where id = ?";
	 	if(classify.equals("0"))
		{
			sql = "update course set title = ? , cont = ? where id = ?";
		}
		else if(classify.equals("1"))
		{	
			sql = "update reading set title = ? , cont = ? where id = ?";
		}
		else if(classify.equals("2"))
		{	
			sql = "update salon set title = ? , cont = ? where id = ?";
		}
		PreparedStatement pstmt = DB.prepareStmt(conn, sql);		
		pstmt.setString(1, title);
		pstmt.setString(2, cont);
		pstmt.setInt(3, id);
		pstmt.executeUpdate();
		
		DB.close(pstmt);
		DB.close(conn);
		
		response.sendRedirect("articleFlat.jsp?classify="+classify);
		return;

	}
%>


<%

Connection conn = DB.getConn();
Statement stmt = DB.createStmt(conn);
String sql2 = "select * from course where id = " + id;
if(classify.equals("0"))
{
	sql2 = "select * from course where id = " + id;
}
else if(classify.equals("1"))
{	
	sql2 = "select * from reading where id = " + id;
}
else if(classify.equals("2"))	
{	
	sql2 = "select * from salon where id = " + id;
}
ResultSet rs = DB.executeQuery(stmt, sql2);
if(!rs.next()) return;
Article a = new Article();
a.initFromRs(rs);
DB.close(rs);
DB.close(stmt);
DB.close(conn);
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>����������</title>
		<meta http-equiv="content-type" content="text/html; charset=GBK">
		<link rel="stylesheet" type="text/css" href="../../css/style.css"
			title="Integrated Styles">
		<script language="JavaScript" type="text/javascript"
			src="../../js/global.js"></script>
		<script type="text/javascript" src="../../ckeditor/ckeditor.js"></script>
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
						<img src="../xxzxdh - ����/images/huang1.jpg" alt="" border="0" height="57"
							width="100%">
					</td>
		
				</tr>
			</tbody>
		</table>
		
						
							<p class="jive-page-title">
								�޸�
								<br>
							</p>
						</td>
						<td width="1%"><br>
							
						<br></td>
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

											<form action="../xxzxdh - ����/modify.jsp?classify=<%=classify%>" method="post" >
												<input type="hidden" name="action" value="modify" />
												<input type="hidden" name="id" value="<%=id %>"/>
												
												���⣺
												<input type="text" name="title" value="<%=a.getTitle() %>">
												<br>
												���ݣ�
												<textarea name="content" id="content"  rows="15" cols="80"><%=a.getCont() %></textarea>
												<script type="text/javascript">
      	CKEDITOR.replace('content',{filebrowserUploadUrl : 'ckeditor/uploader?Type=File',
filebrowserImageUploadUrl : 'ckeditor/uploader?Type=Image',
filebrowserFlashUploadUrl : 'ckeditor/uploader?Type=Flash'
      	});
</script>
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
						<td width="1%">&nbsp;
							
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>
