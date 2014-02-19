<%@ page pageEncoding="GBK"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*"%>

<%
	request.setCharacterEncoding("GBK");
	String classify = request.getParameter("classify");
	System.out.println("In post "+classify);
	String action = request.getParameter("action");
	if (action != null && action.trim().equals("post")) {
		String title = (String)request.getParameter("title");
		System.out.println(title);
	    String writer = (String)session.getAttribute("name");
	    System.out.println(writer);
		String cont = (String)request.getParameter("content");
		System.out.println(cont);
		String pno = (String)request.getParameter("pno");
		System.out.println(pno);
		Connection conn = DB.getConn();

		boolean autoCommit = conn.getAutoCommit();
		conn.setAutoCommit(false);
		
		int rootId = -1;
		String sql = "insert into course values (null, ?, ?, ?, ?, ?, now(),? ,?)";
		if(classify.equals("0"))
		{
			sql = "insert into course values (null, ?, ?, ?, ?, ?, now(),? ,?)";
		}
		else if(classify.equals("1"))
		{	
			sql = "insert into reading values (null, ?, ?, ?, ?, ?, now(),? ,?)";
		}
		else if(classify.equals("2"))
		{	
			sql = "insert into salon values (null, ?, ?, ?, ?, ?, now(),? ,?)";
		}
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
		String sql2 = "update course set rootid = " + rootId + " where id = "	+ rootId;
		if(classify.equals("0"))
		{
			sql2 = "update course set rootid = " + rootId + " where id = "	+ rootId;
		}
		else if(classify.equals("1"))
		{	
			sql2 = "update reading set rootid = " + rootId + " where id = "	+ rootId;
		}
		else if(classify.equals("2"))
		{	
			sql2 = "update salon set rootid = " + rootId + " where id = "	+ rootId;
		}
		stmt.executeUpdate(sql2);

		conn.commit();
		conn.setAutoCommit(autoCommit);
		DB.close(pstmt);
		DB.close(stmt);
		DB.close(conn);
		response.sendRedirect("articleFlat.jsp?classify="+classify);

	}
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>发表新主题</title>
		<meta http-equiv="content-type" content="text/html; charset=GBK">
		<link rel="stylesheet" type="text/css" href="images/style.css"
			title="Integrated Styles">
		<script language="JavaScript" type="text/javascript"
			src="images/global.js"></script>
		<!-- fckeditor -->
		<!-- 为了速度而没有使用fckeditor -->
		<!-- end of fckeditor -->

		<link rel="alternate" type="application/rss+xml" title="RSS"
			href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
			
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
		<link href="css/diy.css" rel="stylesheet" media="screen" />
  		<script src="https://code.jquery.com/jquery.js"></script>
  		<link rel="stylesheet" href="css/flexslider.css" type="text/css">
		<script src="js/jquery.flexslider.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
	</head>
	<body style="background:url(images/back.PNG) repeat;">
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
		<div id="jive-flatpage" style="margin:15px auto;width:1000px;padding-left:0px;">
			<div class="round-border deep-blue" style="width:800px;height:40px;padding-top:10px;padding-left:15px;"><!--当前位置-->
         <span style="color:#fff;"><span class="glyphicon glyphicon-hand-right"></span> <font size=3>发表新主题</font></span>	
			</div>
			
			<table border="0" cellpadding="0" cellspacing="0" width="800"
				height="61">
				<tbody>
					<tr valign="top">
						<td width="100%">
							<div id="jive-message-holder">
								<div class="jive-message-list">									

											<form action="post.jsp?classify=<%=classify%>" method="post">
												<input type="hidden" name="action" value="post" />
												<div class="col-md-10" style="margin-top:10px;width:800px;">
												标题：
												<input type="text" name="title" class="form-control">
												<br>
												</div>
												<!--<div class="col-md-10">
												作者：<input type="text" name="writer" class="form-control"/> 
												<br>
												</div>-->
												<div class="col-md-10" style="width:800px;">
												内容：
												<textarea cols="80" id="content" name="content">
      </textarea> <script type="text/javascript">
      	CKEDITOR.replace('content',{filebrowserUploadUrl : 'ckeditor/uploader?Type=File',
filebrowserImageUploadUrl : 'ckeditor/uploader?Type=Image',
filebrowserFlashUploadUrl : 'ckeditor/uploader?Type=Flash'
      	});
</script>
												<br>
												</div>
												<div class="col-md-10">
												<!-- <input type="submit" value="submit" class="btn btn-primary"/> -->
												<button class="btn btn-primary" type="submit">发表</button>
												</div>
											</form>
								
								</div>
								<div class="jive-message-list-footer">
									<br>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>
