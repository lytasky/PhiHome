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
  		<div align="center" style="line-height:1.5;">"哲学与大学"专题第一讲</div>
      <div style="border-bottom:1px dashed #999;line-height:1.5;" align="center">发布时间：2013-12-24 14:42:51  | 来源：本站</div>
      <div style="padding-left:15px;">
      	<p>
	探寻当代大学之哲学关怀</p>
<p>
	&mdash;&mdash;&ldquo;汇思坛&rdquo;系列讲座之&ldquo;哲学与大学&rdquo;专题第一讲</p>
<p>
	&nbsp;</p>
<p>
	12月13日晚7点，&ldquo;汇思坛&rdquo;系列讲座之&ldquo;哲学与大学&rdquo;专题第一讲在基础图书馆三楼文化空间正式开讲。本次讲座有幸邀请到浙江大学哲学系教授何善蒙老师，讲解关于哲学与大学的相关问题。</p>
<p>
	作为浙江大学哲学系教授，何老师首先对浙江大学哲学系做了简单的介绍，包括其历史渊源与现今基本状况。随后他指出本次讲座旨在增进广大同学学习哲学的兴趣，从而促进对哲学的了解，并欢迎同学对&ldquo;哲学与大学&rdquo;专题讲座提出要求。</p>
<p>
	紧接着，讲座正式开始。大学的本质是什么，何为大学精神，与哲学又有什么关系？哲学在大学应是何地位？哲学之于现代有何意义？针对这些问题，何老师深入浅出地为大家讲解了自己的观点。首先，他认为大学不同于一般人才培养学院的根本因素在于：大学追求的，不仅仅是培养一群能服务社会生产的专业人才，更是形成一种内涵式、灵魂式的精神价值，即所谓的大学精神。而在大学追求更高价值的过程中，离不开哲学等人文传统的注入，成为大学灵魂的支持力量。对于现下哲学乃至人文学科在大学中的尴尬地位，何老师也提出了不同的思考角度：每个人都有追求更高思想的冲动，没有思考的生活是不值得过的，而有思考就有哲学，哲学自古以来就在大学中处于基础地位，显然在当代大学中，少不了哲学的存在。哲学为现代大学提供的，是一种自由精神，尤其体现在思想自由方面，这是造就独立精神必不可少的要素，而思想的包容多样，又有利于学生形成善解人意、宽和通达的品格。这便是哲学带给现代大学的深刻意义，也是大学成其为大学的根本原因。</p>
<p>
	除了宏观上探讨哲学与大学发展的关系，何善蒙老师还从大学生个人角度，分享了自己的看法并对同学的大学生活提供了一些建议。就现在许多人对于哲学以及人文等传统学科的偏见，他认为同学们不应采取消极抱怨的态度，而应转向积极的改变自身，他指出：当你放弃自己时，你没有资格指责社会对于你的不公。改变你能改变的，恰是你掌握自己的方式。而对于当下同学们忙得失去自我的现象，何老师认为，大学给予我们最大的东西就是自由。如果在大学生活的四年中，总执着于结果、用处、得失等世俗追求，那么大学生将沦为一台丧失自我判断与自由思想的&ldquo;机器&rdquo;。用自由的时间，存储属于自己的思想，发现自己真正感兴趣的事，才是大学生活意义所在。</p>
<p>
	最后的交流提问环节，现场同学提出了各种各样的思考与疑惑，何老师分别阐释了自己的看法与见解，整场讲座在热烈的气氛中顺利结束。本次讲座为同学们提供了关于大学、人生的许多思路，让人受益良多。&nbsp;</p>
  		
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