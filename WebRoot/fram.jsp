<%@ page pageEncoding="GB18030"%>
<%
	String adminLogined = (String) session.getAttribute("admLogined");
	if (adminLogined != null && adminLogined.trim().equals("true")) {
	}
	else{
		out.println("你还没有登陆，请登陆") ;
		out.println("<br>经过三秒之后，网页会自动返回登陆界面");
		response.setHeader("Refresh","3;URL=adminLogin.jsp"); 
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>

<frameset rows="70px,*"  framespacing="2" bordercolor="blue">
	<frame src="top.html" name ="top" noresize scrolling="NO">
	<frameset cols="14%,*">
		<frame src="left.jsp" name="left" noresize scrolling="no">
		<frame src="main.jsp" name="main">
	</frameset>
</frameset><noframes></noframes>

  </head>

<BODY>

</BODY>
</HTML>
