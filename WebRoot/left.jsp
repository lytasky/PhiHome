<%@ page pageEncoding="gb2312"%>

<%@ page contentType="text/html; charset=gb2312" %>

<% request.setCharacterEncoding("gb2312");


%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<script src="js/togglemenu.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
</HEAD>

<BODY >

<font color="red"><%=(String)session.getAttribute("admName")%></font> ���<br><br><br>
<ul class="menu">
			<li><a href=".">��ҳ���ݹ���</a>
				<ul>
        	<li><a href="#">ͼƬ��</a></li>
					<li><a href="admin/news/display.jsp?classify=xxzxdh" target="main">��Ϫ��ѧ�Ի�</a></li>
					<li><a href="admin/news/display.jsp?classify=zxydx" target="main">��ѧ���ѧ</a></li>
					<li><a href="admin/news/display.jsp?classify=tzgg" target="main">֪ͨ����</a></li>
					<li><a href="admin/news/display.jsp?classify=xwbd" target="main">���ű���</a></li>
          <li><a href="#">�ȵ��ע</a></li>
          <li><a href="#">�ɹ�չʾ</a></li>
          <li><a href="#">ѧ��԰��</a></li>
          <li><a href="#">����ר��</a></li>
          <li><a href="#">��ѧ�����Ķ�</a></li>
				</ul>
			</li>
			<li><a href=".">ϵ�����</a>
				<ul>

					<li><a href="/">ѧԺ�ſ�</a></li>
					<li><a href="/">ʦ������</a></li>
				</ul>
			</li>
			<li><a href=".">����ͨ��</a>

				<ul>
					<li><a href="admin/news/display.jsp?classify=tzgg" target="main">֪ͨ����</a></li>
					<li><a href="admin/news/display.jsp?classify=xwbd" target="main">���ű���</a></li>
				</ul>
			</li>

			<li><a href=".">��ѧ����</a>
				<ul>
					<li><a href="admin/file/display.jsp?classify='pyfa'" target="main">��������</a></li>
					<li><a href="admin/file/display.jsp?classify='bkkc'" target="main">���ƿγ�</a></li>
					<li><a href="admin/file/display.jsp?classify='sbkc'" target="main">˶���γ�</a></li>
					<li><a href="admin/file/display.jsp?classify='xqkb'" target="main">ѧ�ڿα�</a></li>
					<li><a href="admin/file/display.jsp?classify='kczl'" target="main">�γ�����</a></li>
				</ul>
			</li>
			<li><a href=".">����ר��</a>
				<ul>
					<li><a href="admin/file/display.jsp?classify='zsxx'" target="main">������Ϣ</a></li>
					<li><a href="admin/file/display.jsp?classify='lnzt'" target="main">��������</a></li>
					<li><a href="/">������ѯ</a></li>
				</ul>
			</li>
      <li><a href=".">���гɹ�</a>
				<ul>
					<li><a href="/">���гɹ�</a></li>
					<li><a href="/">��ѧ�ɹ�</a></li>
					<li><a href="/">������Ŀ</a></li>
          <li><a href="/">����Ϣ</a></li>
				</ul>
			</li>
      <li><a href=".">ѧ��԰��</a>
				<ul>
					<li><a href="/">ѧ����¼</a></li>
					<li><a href="/">ѧ���</a></li>
					<li><a href="/">ѧ����Ʒ</a></li>
				</ul>
			</li>
      <li><a href=".">��������</a>
				<ul>
					<li><a href="/">��ѧȤ��</a></li>
					<li><a href="/">У԰����</a></li>
					<li><a href="admin/file/display.jsp?classify='xyfc'" target="main">У�ѷ��</a></li>
				</ul>
			</li>
      <li><a href=".">��̳����</a>
				<ul>
					<li><a href="forumMrg.jsp" target="main">���ӹ���</a></li>
					<li><a href="studentMrg.jsp" target="main">ѧ������</a></li>
					<li><a href="teacherMrg.jsp" target="main">��ʦ����</a></li>
				</ul>
			</li>
		</ul>

<a href="adminLogin.jsp" target="_top">ע����½</a><br>







</BODY>
</HTML>
