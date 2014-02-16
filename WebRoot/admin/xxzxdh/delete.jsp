<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*, com.bjsxt.bbs.*, java.util.*"%>

<%
	String classify = request.getParameter("classify");
	System.out.println("In delete "+classify);
 %>

<%!
private void delete(Connection conn, int id, boolean isLeaf,String classify) {
	//delete all the children
	//delete(conn, chids's id)
	
	if(!isLeaf) { 
		String sql = "select * from article where pid = " + id;
		Statement stmt = DB.createStmt(conn);
		ResultSet rs = DB.executeQuery(stmt, sql); 
		try {
			while(rs.next()) {
				delete(conn, rs.getInt("id"), rs.getInt("isleaf") == 0,classify);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(rs);
			DB.close(stmt);
		}
	}
	
	
	//delete self
	String sql3 = "delete from course where id = " + id;
 	if(classify.equals("0"))
	{
		sql3 = "delete from course where id = " + id;
	}
	else if(classify.equals("1"))
	{	
		sql3 = "delete from reading where id = " + id;
	}
	else if(classify.equals("2"))
	{	
		sql3 = "delete from salon where id = " + id;
	}
	DB.executeUpdate(conn, sql3);
	
	
}
%>

<%
int id = Integer.parseInt(request.getParameter("id"));
int pid = Integer.parseInt(request.getParameter("pid"));
boolean isLeaf = Boolean.parseBoolean(request.getParameter("isLeaf"));
Connection conn = null;
boolean autoCommit = true;
Statement stmt = null;
ResultSet rs = null;

try {
	conn = DB.getConn();
	autoCommit = conn.getAutoCommit();
	conn.setAutoCommit(false);
	
	delete(conn, id, isLeaf,classify);
	
	stmt = DB.createStmt(conn);
	String sql = "select count(*) from course where pid = " + pid;
 	if(classify.equals("0"))
	{
		sql = "select count(*) from course where pid = " + pid;
	}
	else if(classify.equals("1"))
	{	
		sql = "select count(*) from reading where pid = " + pid;
	}
	else if(classify.equals("2"))
	{	
		sql = "select count(*) from salon where pid = " + pid;
	}
	rs = DB.executeQuery(stmt, sql);
	rs.next();
	int count = rs.getInt(1);
	
	if(count <= 0) {
		String sql2 = "update article set isleaf = 0 where id = " + pid;
	 	if(classify.equals("0"))
		{
			sql2 = "update article set isleaf = 0 where id = " + pid;
		}
		else if(classify.equals("1"))
		{	
			sql2 = "update article set isleaf = 0 where id = " + pid;
		}
		else if(classify.equals("2"))
		{	
			sql2 = "update article set isleaf = 0 where id = " + pid;
		}
		DB.executeUpdate(conn, sql2);
	}
	
	conn.commit();
} finally {
	conn.setAutoCommit(autoCommit);
	DB.close(rs);
	DB.close(stmt);
	DB.close(conn);
}
response.sendRedirect("articleFlat1.jsp?classify="+classify);
%>

