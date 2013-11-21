<%@ include file="sessoncheck.jspf" %>
<%
  session.removeValue("login");
  response.sendRedirect("../index.jsp");
%>
