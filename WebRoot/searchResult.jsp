<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*, com.bjsxt.bbs.*, java.util.*"%>

<%
//request.setCharacterEncoding("GB18030");

boolean logined = false;
String adminLogined = (String)session.getAttribute("adminLogined");
if(adminLogined != null && adminLogined.trim().equals("true")) {
	logined = true;
} 
 %>

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

List<Article> articles = new ArrayList<Article>();
Connection conn = DB.getConn();

Statement stmtCount = DB.createStmt(conn);
String sqlCount = "select count(*) from article where title like '%" + keyword + "%'" ;
System.out.println(sqlCount);
ResultSet rsCount = DB.executeQuery(stmtCount, sqlCount);
rsCount.next();
int totalRecords = rsCount.getInt(1);

totalPages = (totalRecords + PAGE_SIZE - 1)/PAGE_SIZE;

if(pageNo > totalPages) pageNo = totalPages;

if(pageNo <= 0) pageNo = 1;

Statement stmt = DB.createStmt(conn);
int startPos = (pageNo-1) * PAGE_SIZE; 
String sql = "select * from article where title like '%" + keyword + "%' and pid = 0 order by pdate desc limit " + startPos + "," + PAGE_SIZE ;
System.out.println(sql);
ResultSet rs = DB.executeQuery(stmt, sql);
while(rs.next()) {
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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Java����*������</title>
<meta http-equiv="content-type" content="text/html; charset=utf8">
<link rel="stylesheet" type="text/css" href="images/style.css" title="Integrated Styles">
<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
<link rel="alternate" type="application/rss+xml" title="RSS" href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?forumID=20">
<script language="JavaScript" type="text/javascript" src="images/common.js"></script>

<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
		<link href="css/diy.css" rel="stylesheet" media="screen" />
  		<script src="https://code.jquery.com/jquery.js"></script>
  		<link rel="stylesheet" href="css/flexslider.css" type="text/css">
		<script src="js/jquery.flexslider.js"></script>
		<script src="js/bootstrap.min.js"></script>
</head>
<body>
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
    </div><!-- head -->
<div id="jive-forumpage" style="width:1000px;margin:0 auto;"><br><table border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr valign="top"><td width="98%"><br></td>
      </tr>
    </tbody>
  </table>
  <div class="jive-buttons">
    <table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td class="jive-icon"><a href="post.jsp"><img src="images/post-16x16.gif" alt="����������" border="0" height="16" width="16"></a></td>
          <td class="jive-icon-label"><a id="jive-post-thread" href="post.jsp">����������</a> <a href="http://bbs.chinajavaworld.com/forum.jspa?forumID=20&amp;isBest=1"></a></td>
        </tr>
      </tbody>
    </table>
  </div>
  <br>
  <table border="0" cellpadding="3" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td><span class="nobreak"> ҳ: 
          ��<%=pageNo %>ҳ,��ҳ <%=totalPages %> <span class="jive-paginator"> [</span></span>
          
          <span class="nobreak"><span class="jive-paginator">
          <a href="searchResult.jsp?pageNo=1&keyword=<%=keyword %>">��һҳ</a></span></span>
          
          
          
          <span class="nobreak"><span class="jive-paginator">|</span></span>
          <span class="nobreak"><span class="jive-paginator">
          <a href="searchResult.jsp?pageNo=<%=pageNo - 1 %>&keyword=<%=keyword %>">��һҳ</a>
          </span></span>
          
         <span class="nobreak"><span class="jive-paginator">| </span></span>
         <span class="nobreak"><span class="jive-paginator">
         <a href="searchResult.jsp?pageNo=<%=pageNo + 1 %>&keyword=<%=keyword %>">��һҳ</a>
          |&nbsp; 
          <a href="searchResult.jsp?pageNo=<%=totalPages %>&keyword=<%=keyword %>">��ĩҳ</a> ] </span> </span> </td>
      </tr>
    </tbody>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%"><div class="jive-thread-list">
            <div class="jive-table">
              <table summary="List of threads" cellpadding="0" cellspacing="0" width="100%">
                <thead>
                  <tr>
                    <th class="jive-first" colspan="3"> ���� </th>
                    <th class="jive-author"> <nobr> ����
                      &nbsp; </nobr> </th>
                    <th class="jive-view-count"> <nobr> ���
                      &nbsp; </nobr> </th>
                    <th class="jive-last" nowrap="nowrap"> �������� </th>
                  </tr>
                </thead>
                <tbody>
                <%
                int lineNo = 0;
                for(Iterator<Article> it = articles.iterator(); it.hasNext(); ) {           
                	Article a = it.next();
  					String classStr = lineNo%2 == 0 ? "jive-even" : "jive-odd";
                %>
                  <tr class="<%=classStr %>">
                    <td class="jive-first" nowrap="nowrap" width="1%"><div class="jive-bullet"> <img src="images/read-16x16.gif" alt="�Ѷ�" border="0" height="16" width="16">
                        <!-- div-->
                      </div></td>
                      
                    <td nowrap="nowrap" width="1%">
                    	<%
                    	String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
                    	url += request.getContextPath();
                    	url += request.getServletPath();
                    	url += request.getQueryString() == null ? "" : ("?" + request.getQueryString());
                    	//System.out.println(url);
                    	//System.out.println(request.getRequestURI());
                    	//System.out.println(request.getRequestURL());
                    	 %>
                    	 <%if (logined) {%>
                    	 	<a href="modify.jsp?id=<%=a.getId()%>">MOD</a>
                    		<a href="delete.jsp?id=<%=a.getId()%>&isLeaf=<%=a.isLeaf()%>&pid=<%=a.getPid() %>&from=<%=url %>">DEL</a>
                    	 <%} %>
                    </td>
                    
                    <td class="jive-thread-name" width="95%"><a id="jive-thread-1" href="articleDetailFlat.jsp?id=<%=a.getId() %>"><%=a.getTitle() %></a></td>
                    <td class="jive-author" nowrap="nowrap" width="1%"><span class=""> <%=a.getWriter1() %> </span></td>
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
                    <td class="jive-last" nowrap="nowrap" width="1%"><div class="jive-last-post"> <%=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(a.getPdate()) %> <br>
                     </div></td>
                  </tr>
                 
                  <%
                  	lineNo++;
                  }
                  %>
                </tbody>
              </table>
            </div>
          </div>
          <div class="jive-legend"></div></td>
      </tr>
    </tbody>
  </table>
  <br>
  <br>
</div>
</body>
</html>
