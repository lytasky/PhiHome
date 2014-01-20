<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ include file="conn.jspf" %>
<%   
  sta = conn.createStatement();  //创建Statement对象      
  	int intPageSize; //一页显示的记录数
	int intRowCount; //记录总数
	int intPageCount; //总页数
	int intPage; //待显示页码
	int layer;
	int idlayer;
	idlayer=1;
	String outtext;
	outtext="";
	String strPage;
	int j;
	int i;
	//设置一页显示的记录数
	intPageSize = 10;
	
	//取得待显示页码
	strPage = request.getParameter("page");
	if(strPage==null){//表明在QueryString中没有page这一个参数，此时显示第一页数据
	  intPage = 1;
	}
	else{//将字符串转换成整型
	  intPage = java.lang.Integer.parseInt(strPage);
	  if(intPage<1) intPage = 1;
	}
  
  String sql = "select * from vlyb where pb='no' order by id desc";    //执行SQL语句
  ResultSet result = sta.executeQuery(sql);
    
	result.last();   //获取记录总数
	intRowCount = result.getRow();
    intPageCount = (intRowCount+intPageSize-1) / intPageSize;   //记算总页数
	if(intPage>intPageCount){intPage = intPageCount;}	//调整待显示的页码
%>

<!doctype html>
<html lang="en">
<head>
<title>学院概况</title>
<meta charset="gb2312">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="css/main.css" rel="stylesheet" type="text/css" media="all"> 
<script src="../js/juery.js"></script>
<style type="text/css">
	.td-width{
		width:80px;	
	}
	.white-font{
		color:#fff;
		font-size:14px;
	}
	.fl{
		float:left;	
	}
	ul{
		list-style:none;	
	}
	.gray-border{
		border:1px solid #ccc;	
	}
	
</style>
<script>
	function switchMod(modk){
		var mod=document.getElementById("slidingList"+modk);
		var col=document.getElementById("mod"+modk);
		for(var i=1;i<=9;i++){
			var itemList=document.getElementById("slidingList"+i);
			var colList=document.getElementById("mod"+i);
			itemList.style.display="none";
			colList.style.backgroundColor="";
		}
		col.style.backgroundColor="#030303";
		mod.style.display="inline";
	}
</script>
<link rel="stylesheet" href="../css/flexslider.css" type="text/css">
<link rel="stylesheet" href="../css/diy.css" type="text/css">
<link href="../css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery-1.10.2.js"></script>
<script src="../js/jquery.flexslider.js"></script>
<script type="text/javascript" src="../js/togglemenu.js"></script>
<!-- Place in the <head>, after the three links -->
<style type="text/css" media="screen,print">
	#wrap {
		width:500px;
		margin:1em auto;
	}
	body {font:76%/1.4 Verdana,sans-serif;}
/* Disable properties specified in the imported CSS file */
	.menu a {
		border:none;
		font-weight:normal;
	}

/* Actual menu CSS starts here */
	
	.fontColor0 a{
		color:#000;	
	}
	.fontColor1 a:hover{
		color:#2c1c56;	
	}
	.fontColor2 a:hover{
		color:#413e3d;	
	}
	.fontColor3 a:hover{
		color:#235f2f;	
	}
	.fontColor4 a{
		color:#fff;	
	}
	#head a:hover{
		text-decoration:underline;
	}
	a:link {
		text-decoration: none;
	}
	a:visited {
		text-decoration: none;
	}
	a:hover {
		text-decoration: none;
	}
	a:active {
		text-decoration: none;
	}
	.slidingList{
		color:#fff;	
		padding-left:5px;padding-right:5px;
	}
</style>

</head>
<body style="margin-top:0px;">
<div id="indexMain" style="background-color:#d3d7da;width:1180px;margin:0 auto;">
  <div id="head" style="background:url(../images/headBack.gif);height:230px;width:1180px;margin:0 auto;margin-top:0px;" class="fontColor4">
	<div style="height:30px;width:200px;float:right;margin-right:50px;margin-top:40px;" class="fr">
  	<font color="#fff">
  	<a href="http://www.zju.edu.cn">浙江大学</a>&nbsp;|
    <a href="../index.jsp">中文</a>&nbsp;|
    <a href="#">English</a></font>
   </div>
	<div class="row fl" style="width:250px;margin-left:915px;">
  		<div class="col-md-10">
    		<div class="input-group input-group-sm">
              	 <input type="text" class="form-control ">
      					<span class="input-group-btn">
        					<button class="btn btn-default " type="button">搜索</button>
      					</span>
                
    					</div><!-- /input-group -->
  		</div><!-- /.col-lg-6 -->
		</div><!-- /.row -->
	<div id="column" style="margin-top:100px;margin-left:58px;width:1065px;height:30px;float:left;padding-top:-10px;">
    <div style="text-align:center;line-height:30px;height:30px;background:url(../images/colomnBack2.gif);">
      <div style="width:195px;height:30px;align:center;" class="fl">
			<span class="menuOn" id="mod0">
			<a href="../index.jsp" class="white-font "> 主页</a></span>
      </div>
      <div style="width:96px;height:30px;align:center;background-color:#030303;" id="mod1" class="fl">
			<span class="menuOn" onMouseOver="switchMod(1);" >
			<a href="#" class="white-font "> 系情介绍</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod2" class="fl">
			<span class="menuNo" onMouseOver="switchMod(2);">
			<a href="#" class="white-font ">新闻通告</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod3" class="fl">
			<span class="menuNo" onMouseOver="switchMod(3);">

			<a href="#" class="white-font">教学培养</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod4" class="fl">
			<span class="menuNo" onMouseOver="switchMod(4);">
			<a href="#" class="white-font">招生专栏</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod5"  class="fl">
			<span class="menuNo" onMouseOver="switchMod(5);">
			<a href="#" class="white-font">教研成果</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod6" class="fl">
			<span class="menuNo" onMouseOver="switchMod(6);">
			<a href="#" class="white-font">学生园地</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod7" class="fl">
			<span class="menuNo" onMouseOver="switchMod(7);">
			<a href="#" class="white-font">哲学论坛</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod8" class="fl">
			<span class="menuNo" onMouseOver="switchMod(8);">
			<a href="#" target="_blank" class="white-font">闻人轶事</a></span>
      </div>
      <div style="width:102px;height:30;align:center;" id="mod9" class="fl">
      <span class="menuNo" onMouseOver="switchMod(9);">
			<a href="#" target="_blank" class="white-font">资源链接</a></span>
      </div>
      </div>
  </div><!-- column -->
	<div class="slidingList" id="slidingList1" style="color:#fff;text-align:center;padding-top:5px;height:30px;float:left;margin-left:253px;display:;background:#0f0f0f;"><!-- 导航栏列表区 -->
		>>
<a href="../jianjie/xygk.jsp"> 学院概况</a>|
<a href="../jianjie/szll.jsp">师资力量</a>

	</div>
  <div class="slidingList" id="slidingList2" style="height:30px;float:left;margin-left:349px;display:none;background:#0f0f0f;padding-top:5px;">
  	>>
<a href="../xinxi/tzgg.jsp"> 通知公告</a>|
<a href="../xinxi/xwbd.jsp">新闻报道</a>
		
	</div>
  <div class="slidingList" id="slidingList3" style="height:30px;float:left;margin-left:445px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../kecheng/pyfa.jsp"> 培养方案</a>|
			<a href="../kecheng/bkkc.jsp">本科课程</a>
      |
			<a href="../kecheng/sbkc.jsp">硕博课程</a>
      |
			<a href="../kecheng/xqkb.jsp">学期课表</a>
      |
			<a href="../kecheng/kczl.jsp">课程资料</a>
		
	</div>
  <div class="slidingList" id="slidingList4" style="height:30px;float:left;margin-left:541px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../zhaosheng/zsxx.jsp"> 招生信息</a>
			|
			<a href="../zhaosheng/lnzt.jsp">历年真题</a>
      |
			<a href="../zhaosheng/zszx.jsp">招生咨询</a>
		
	</div>
  <div class="slidingList" id="slidingList5" style="height:30px;float:left;margin-left:637px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../chengguo/kycg.jsp"> 科研成果</a>
			|
			<a href="../chengguo/jxcg.jsp">教学成果</a>
      |
			<a href="../chengguo/kyxm.jsp">科研项目</a>
      |
			<a href="../chengguo/hjxx.jsp">获奖信息</a>
		
	</div>
  <div class="slidingList" id="slidingList6" style="height:30px;float:left;margin-left:733px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../xuesheng/xsml.jsp"> 学生名录</a>
			|
			<a href="../xuesheng/xshd.jsp">学生活动</a>
      |
			<a href="../xuesheng/xszp.jsp">学生作品</a>
		
	</div>
  <div class="slidingList" id="slidingList7" style="height:30px;float:left;margin-left:780px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../uselogin.jsp"> 课程讨论</a>
			|
			<a href="../uselogin.jsp">读书会</a>
      |
			<a href="../uselogin.jsp">哲学沙龙</a>
		
	</div>
  <div class="slidingList" id="slidingList8" style="height:30px;float:left;margin-left:870px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../gushi/zxqw.jsp"> 哲学趣闻</a>
			|
			<a href="../gushi/xygs.jsp">校园故事</a>
      |
			<a href="../gushi/xyfc.jsp">校友风采</a>
		
	</div>
  <div class="slidingList" id="slidingList9" style="height:30px;float:left;margin-left:921px;display:none;background:#0f0f0f;padding-top:5px;">
  		>>
			<a href="#"> 校内网站</a>
			|
			<a href="#">校外资源</a>
      |
			<a href="#">国外资源</a>
		

	</div><!-- 导航栏列表区 -->
</div>

	<div id="main-content" class="gray-border" style="margin-top:50px;margin-left:58px;width:1065px;height:700px;">
		<div id="left-nav" style="width:200px;align:center;padding:0 auto;float:left;font-size:14px;line-height:0.49;float:left;">
     <div class="panel-group" id="accordion" style=""><!--网站地图-->
  		<div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a href="#"><span class="glyphicon glyphicon-th-list"></span> 招生专栏</a>
      			</h4>
    		</div>
    		<div id="collapseOne" class="panel-collapse collapse in">
      			<div class="panel-body" style="display:block;">
        			<a href="../zhaosheng/zsxx.jsp" style="color:#000;" class="panel-item">招生信息</a>
      			</div>
      			<div class="panel-body">
        			<a href="../zhaosheng/lnzt.jsp" style="color:#000;" class="panel-item">历年真题</a>
      			</div>
            <div class="panel-body">
        			<a href="../zhaosheng/zszx.jsp" style="color:#000;" class="panel-item">招生咨询</a>
      			</div>
    		</div>
  		</div> 
	   </div><!-- panel-group -->
     
	</div>

		<div class="gray-border" style="margin-left:15px;width:840px;height:650px;float:right;font-size:14px;"><!--分页显示内容-->
		<div class="round-border deep-blue" style="height:37px;padding-top:10px;padding-left:15px;"><!--当前位置-->
         <span style="color:#fff;"><span class="glyphicon glyphicon-hand-right"></span> 当前位置：</span>
         <a style="color:#fff;" href="../index.jsp">主页</a>
         <span style="color:#fff;">->招生专栏</span>	
      <span style="color:#fff;">->招生咨询</span>	
		</div>
    
    <div class="gray-border round-border" style="width:840px;height:600px;background-color:#FFF;margin-top:15px;font-size:14px;">
  		      
    	<div>
    	<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
 	<td>
 <table width="700" height="283" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="700" align="center" valign="top"><hr>
            
            <table width="700" border="0" cellpadding="0" cellspacing="0">
			<tr><td width="700" align="center" valign="top"><table width="700" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="30" align="left" valign="middle"><button type="button" value="添加留言" onClick="window.location.href('addly.jsp')" class="btn btn-primary" style="width:170px;margin-left:25px;margin-bottom:15px;">添加留言</button></td>
              </tr>
            </table>

<% 
   if(intPageCount>0){
   result.absolute((intPage-1) * intPageSize + 1);
   i = 0;
   while(i<intPageSize && !result.isAfterLast()){ 
%>
<table width="530" height="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#ff0">
<tr>
<td width="384" height="100%" align="center" valign="top" bgcolor="#FFFFFF"><table width="530" height="174" border="0" cellpadding="0" cellspacing="0" style="border-bottom:1px solid #ccc;">
  <tr>
    <td width="150" height="142" align="center" valign="top">
	  <table width="225" border="0" cellpadding="3" cellspacing="0">
	  <tr><td align="left" valign="bottom" >
    邮箱：*********<%=result.getString("mail").substring(result.getString("mail").indexOf('@'))%></td>
	  </tr></table>
	</td>
    <td width="363" align="left" valign="top"><table width="425" border="0" cellpadding="5" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
		<%
		String re = result.getString("re");
		%>
      <tr>
        <td align="left" valign="top">
		<strong>标题：</strong><%=result.getString("title")%>     留言时间：<%=result.getString("time")%><br>
		<strong>内容：</strong>
          <%=result.getString("body")%>
		  
		  <br>
		  <%if(!re.equals("")){%>回复：<%=result.getString("re")%><br><%}%><%else {%>未回复<br><%}%>
			</td>
      </tr>
    </table></td>
  </tr>
</table>
  </td>
</tr>
</table>
<%
  result.next();
  i++;
  }
  }
%>
</td>
</tr>
</table>
						<table width="480" height="28" border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="535" align="right"><a href="zszx.jsp?page=1">首页</a>
<%if(intPage>1){
%>
<a href="zszx.jsp?page=<%=intPage-1%>">上一页</a>
<%}%>
<%if(intPage<intPageCount)
{%>
<a href="zszx.jsp?page=<%=intPage+1%>">下一页</a>
<%}%>
<a href="zszx.jsp?page=<%=intPageCount%>">尾 页</a>
页次：<%=intPage%>/<%=intPageCount%>页 <%=intPageSize%>条/页  
</td>
</tr>
</table>
          </td>
        </tr>
      </table>
   </td>
  </tr>
</table>
    	</div>
  	</div>
  </div>
	</div>
  
  <div id="root" style="width:1181px;height:187px;z-index:-1;background:url(../images/root.gif);float:left;">
  </div>
</div>
</body>
</html>
