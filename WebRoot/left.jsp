<%@ page pageEncoding="gb2312"%>

<%@ page contentType="text/html; charset=gb2312" %>

<% request.setCharacterEncoding("gb2312");


%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> New Document </TITLE>

</HEAD>

<BODY >

<font color="red"><%=(String)session.getAttribute("admName")%></font> ���<br><br><br>
<a href="articleFlat1.jsp" target="main">��̳����</a><br><br><br><br><br>
<a href=studentMrg.jsp target="main">ѧ������</a><br><br><br><br><br>
<a href=teacherMrg.jsp target="main">��ʦ����</a><br><br><br><br><br>
<a href=login.jsp target="_top">ע����½</a><br>







</BODY>
</HTML>
