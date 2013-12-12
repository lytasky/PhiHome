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

<font color="red"><%=(String)session.getAttribute("admName")%></font> 你好<br><br><br>
<a href="articleFlat1.jsp" target="main">论坛管理</a><br><br><br><br><br>
<a href=studentMrg.jsp target="main">学生管理</a><br><br><br><br><br>
<a href=teacherMrg.jsp target="main">教师管理</a><br><br><br><br><br>
<a href=login.jsp target="_top">注销登陆</a><br>







</BODY>
</HTML>
