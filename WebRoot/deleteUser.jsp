<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*, com.bjsxt.bbs.*, java.util.*"%>



<%!
private void delete(Connection conn, int id) {
	DB.executeUpdate(conn, "delete from user where id = " + id);
}
%>

<%
int id = Integer.parseInt(request.getParameter("id"));
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try {
	conn = DB.getConn();
	delete(conn, id);
	
} finally {
	DB.close(rs);
	DB.close(stmt);
	DB.close(conn);
}
response.sendRedirect("userMrg.jsp");
%>

