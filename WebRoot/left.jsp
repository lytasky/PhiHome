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

<font color="red"><%=(String)session.getAttribute("admName")%></font> 你好<br><br><br>
<ul class="menu">
			<li><a href=".">首页内容管理</a>
				<ul>
        	<li><a href="admin/file/display.jsp?classify='pic'" target="main">图片集</a></li>
					<li><a href="admin/news/display.jsp?classify=xxzxdh" target="main">西溪哲学对话</a></li>
					<li><a href="admin/news/display.jsp?classify=zxydx" target="main">哲学与大学</a></li>
					<li><a href="admin/news/display.jsp?classify=tzgg" target="main">通知公告</a></li>
					<li><a href="admin/news/display.jsp?classify=xwbd" target="main">新闻报道</a></li>
          <li><a href="#">热点关注</a></li>
          <li><a href="#">成果展示</a></li>
          <li><a href="#">学生园地</a></li>
          <li><a href="#">招生专栏</a></li>
          <li><a href="#">哲学经典阅读</a></li>
				</ul>
			</li>
			<li><a href=".">系情介绍</a>
				<ul>

					<li><a href="/">学院概况</a></li>
					<li><a href="/">师资力量</a></li>
				</ul>
			</li>
			<li><a href=".">新闻通告</a>

				<ul>
					<li><a href="admin/news/display.jsp?classify=tzgg" target="main">通知公告</a></li>
					<li><a href="admin/news/display.jsp?classify=xwbd" target="main">新闻报道</a></li>
				</ul>
			</li>

			<li><a href=".">教学培养</a>
				<ul>
					<li><a href="admin/file/display.jsp?classify='pyfa'" target="main">培养方案</a></li>
					<li><a href="admin/file/display.jsp?classify='bkkc'" target="main">本科课程</a></li>
					<li><a href="admin/file/display.jsp?classify='sbkc'" target="main">硕博课程</a></li>
					<li><a href="admin/file/display.jsp?classify='xqkb'" target="main">学期课表</a></li>
					<li><a href="admin/file/display.jsp?classify='kczl'" target="main">课程资料</a></li>
				</ul>
			</li>
			<li><a href=".">招生专栏</a>
				<ul>
					<li><a href="admin/file/display.jsp?classify='zsxx'" target="main">招生信息</a></li>
					<li><a href="admin/file/display.jsp?classify='lnzt'" target="main">历年真题</a></li>
					<li><a href="admin/lyb.jsp" target="main">招生咨询</a></li>
				</ul>
			</li>
      <li><a href=".">教研成果</a>
				<ul>
					<li><a href="admin/file/display.jsp?classify='kycg'" target="main">科研成果</a></li>
					<li><a href="admin/file/display.jsp?classify='jxcg'" target="main">教学成果</a></li>
					<li><a href="admin/file/display.jsp?classify='jxcg'" target="main">科研项目</a></li>
          <li><a href="admin/file/display.jsp?classify='hjxx'" target="main">获奖信息</a></li>
				</ul>
			</li>
      <li><a href=".">学生园地</a>
				<ul>
					<li><a href="admin/file/display.jsp?classify='xsml'" target="main">学生名录</a></li>
					<li><a href="admin/file/display.jsp?classify='xshd'" target="main">学生活动</a></li>
					<li><a href="admin/file/display.jsp?classify='xszp'" target="main">学生作品</a></li>
				</ul>
			</li>
      <li><a href=".">闻人轶事</a>
				<ul>
					<li><a href="/">哲学趣闻</a></li>
					<li><a href="/">校园故事</a></li>
					<li><a href="admin/file/display.jsp?classify='xyfc'" target="main">校友风采</a></li>
				</ul>
			</li>
      <li><a href=".">论坛管理</a>
				<ul>
					<li><a href="forumMrg.jsp" target="main">帖子管理</a></li>
					<li><a href="studentMrg.jsp" target="main">学生管理</a></li>
					<li><a href="teacherMrg.jsp" target="main">教师管理</a></li>
				</ul>
			</li>
		</ul>

<a href="adminLogin.jsp" target="_top">注销登陆</a><br>







</BODY>
</HTML>
