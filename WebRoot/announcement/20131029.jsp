<!doctype html>
<html lang="en">
<head>
<title>新闻通告</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="../js/jquery.js"></script>
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
<div id="indexMain" style="background-color:#d3d7da;width:1180px;margin:0 auto;height:auto;">
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

	<div id="main-content" class="gray-border" style="margin-top:50px;margin-left:58px;width:1065px;padding-bottom:15px;height:auto;">
		<div id="left-nav" style="width:200px;align:center;padding:0 auto;float:left;font-size:14px;line-height:0.49;">
     <div class="panel-group" id="accordion" style=""><!--网站地图-->
  		<div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a href="#"><span class="glyphicon glyphicon-th-list"></span> 新闻通告</a>
      			</h4>
    		</div>
    		<div id="collapseOne" class="panel-collapse collapse in">
      			<div class="panel-body" style="display:block;">
        			<a href="../xinxi/tzgg.jsp" style="color:#000;" class="panel-item">通知公告</a>
      			</div>
      			<div class="panel-body">
        			<a href="../xinxi/xwbd.jsp" style="color:#000;" class="panel-item">新闻报道</a>
      			</div>
    		</div>
  		</div> 
	   </div><!-- panel-group -->
     
		</div>

		<div class="gray-border" style="margin-left:15px;width:840px;height:auto;float:right;font-size:14px;"><!--分页显示内容-->
			<div class="round-border deep-blue" style="height:37px;padding-top:10px;padding-left:15px;"><!--当前位置-->
         <span style="color:#fff;"><span class="glyphicon glyphicon-hand-right"></span> 当前位置：</span>
         <a style="color:#fff;" href="../index.jsp">主页</a>
         <span style="color:#fff;">->新闻通告</span>	
		</div>
    
    	<div class="gray-border round-border" style="width:840px;height:auto;background-color:#FFF;margin-top:15px;padding-top:15px;">
  		<div align="center" style="line-height:1.5;">西塞罗的政治哲学——《论共和国》中的人民主权思想</div>
      <div style="border-bottom:1px dashed #999;line-height:1.5;" align="center">发布时间：2013-10-29 14:42:51  | 来源：本站</div>
      <div style="padding-left:15px;">
      	
<p>
	<br />
	&nbsp;</p>
<p>
	&nbsp;对于人类而言，什么是最好的、最值得追求的生活？是哲学沉思的生活？还是投身政治的生活？这是古代西方哲学家们无法回避的问题。柏拉图和亚里士多德将沉思的生活作为最高的善，而西塞罗则选择了政治的生活。然而，在西塞罗的政治理念和修辞技巧背后，存在着一种深刻而坚实的哲学思想，构成了其政治主张、生活实践以及人生选择的深层基础。他在代表作品《论共和国》中对于&ldquo;人民主权&rdquo;（popular sovereignty）的论述充分表明了这一点。</p>
<p>
	<br />
	<strong>主讲人：</strong>马尔科姆&middot;斯科菲尔德（Malcolm Schofield），英国剑桥大学古代哲学荣休教授。研究领域涉及古代西方知识论、伦理学及政治理论，著作有《拯救城邦》（<em>Saving the City</em>, 1999）、《柏拉图：政治哲学》（<em>Plato: Political Philosophy</em>, 2006）等，并合作编辑了《剑桥希腊和罗马政治思想史》（<em>The Cambridge History of Greek and Roman Political Thought</em>, 2000）。目前研究焦点集中于西塞罗的哲学思想。<br />
	&nbsp;</p>
<p>
	<br />
	<strong>主持人：</strong>陈玮 博士</p>
<p>
	<br />
	&nbsp;</p>
<p>
	<strong>时间：</strong>10月27日晚6点至8点</p>
<p>
	<br />
	&nbsp;</p>
<p>
	<strong>地点：</strong>浙江大学西溪校区教学主楼12楼会议室1206</p>
<p>
	<br />
	&nbsp;</p>
<p>
	<strong>主办单位：</strong>浙江大学哲学系</p>
<p>
	<br />
	&nbsp;</p>
<p>
	<strong>协办单位：</strong>浙江大学基督教与跨文化研究中心</p>
<p>
	<br />
	&nbsp;</p>
  		
      </div>
  	</div>
  	</div>
  </div>
  <div id="root" style="width:1181px;height:187px;z-index:-1;background:url(../images/root.gif);float:left;">
  </div>
  <div style="clear:both;"></div>
</div>
</body>
</html>