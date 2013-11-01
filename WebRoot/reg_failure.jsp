<%@ page pageEncoding="gb2312" %>
<%@ page contentType="text/html; charset=gb2312" %>
<% request.setCharacterEncoding("gb2312"); %>
<%@ page language="java" %>

<table align=center border=0 cellPadding=0 cellSpacing=0 width=300>
	<tbody>
		<tr>
			<td align="left" height=25>
			    <% if (session.getAttribute("username") != null) {
				       out.println(session.getAttribute("username"));
			       }
			    %>
		</tr>
		<tr bgColor=#3399ff>
			<td height=10 colspan=2>
		</tr>
	</tbody>
</table>

<table align=center border=0 width=300 cellspacing=0 cellpadding=0 height=40>
	<tr>
		<td width=300 height=30 valign=top >
		<table border=0 width=100% cellspacing=0 cellpadding=0
			height=30>
			<%if (request.getAttribute("errorMsg") != null) {%>
			<tr>
				<td width=100% align=center colspan=4 height=36>
				   <font color=red><b><%=request.getAttribute("errorMsg")%></b></font>
				</td>
			</tr>
			<%
			 }
			%>
			<tr align=center>
				<td width=100% colspan=4 height=20 >
				    <a href="register.jsp">×¢²á´íÎó£¡ÇëÖØÐÂ×¢²á£¡</a>
				</td>
			</tr>
		</table>
	</td>
	</tr>
</table>