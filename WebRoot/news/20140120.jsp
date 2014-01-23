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
  		<div align="center" style="line-height:1.5;font-size:20px;font-weight:bold;">哲学，逻辑，理性，成长——记"汇思坛"系列讲座之"哲学与大学"专题讲座</div>
      <div style="border-bottom:1px dashed #999;line-height:1.5;" align="center">发布时间： 2014-01-20  15:03:06 | 来源： 本站</div>
      <div style="padding-left:15px;">
      	<p align="center">
	<strong>哲学，逻辑，理性，成长</strong></p>
<p align="center">
	<strong>&mdash;&mdash;</strong><strong>记&ldquo;汇思坛&rdquo;系列讲座之&ldquo;哲学与大学&rdquo;专题讲座</strong></p>
<p>
	&nbsp;2013年12月27日晚上7点，&ldquo;汇思坛&rdquo;系列讲座之&ldquo;哲学与大学&rdquo;专题讲座第二讲于浙江大学紫金港校区基础图书馆三楼文化空间开讲。本次讲座我们邀请到了浙江大学哲学系副主任金立教授，为大家带来一场以&ldquo;哲学，逻辑，理性，成长&rdquo;为主题精彩纷呈的哲学讲座。</p>
<p>
	充满古朴气息的空间里，前来参与的同学围桌而坐，静静聆听金教授风趣幽默饱含哲思的话语。金教授先以&ldquo;是什么&rdquo;、&ldquo;为什么&rdquo;、&ldquo;怎么做&rdquo;的逻辑思维方式深入浅出地阐释生活中的种种现象。&ldquo;幸福&rdquo;、&ldquo;人本&rdquo;、&ldquo;创新&rdquo;，何以鉴定，为何需要，何以执行，金教授利用生活中浅显易见的例子引导同学们思考人生、认识人生。让同学们意识到要以一种淡然的心态面对生活，但并非平淡与庸碌，我们需要的是怒放的生命，精彩纷呈的人生。</p>
<p>
	接着，金教授以历史与现实的结合为横轴，以正反结合的辩证为横轴结合自己在美国斯坦福大学的学习经历分析了中西方哲学的差异，提出哲学思维在社会问题的产生中具有不可忽视的作用这一观点，进一步提出对同学们重视内涵远离现代社会功利喧嚣的希望。&nbsp;</p>
<p>
	&nbsp;针对同学们在大学里的困惑，金教授从&ldquo;本位和他位&rdquo;的角度提出四句话作为我们应该&ldquo;怎样做&rdquo;的建议。1.把自己当成别人。站在更公正的位置审视自我，平衡自我。2.把别人当成自己。宽容、开放、快乐。3.把别人当成别人。求同存异。4.把自己当成自己。拥有独立的人格，做自己。&ldquo;随波而流，自由掌舵，欣赏自我的风景。&rdquo;&nbsp;</p>
<p>
	在讲座的最后，金教授对同学们提出了自己的期望与谆谆教诲。在现代的物质生活中，不要让灵魂落在我们前行的步伐之后，让哲学成为生活的养料，感受生活中的正能量。在这里，金教授提出了心灵再造的概念：1. 理性不盲从，感性不刻板。要求同学们有准确的判断力，系统的思考力，坚持的执行力。重塑对知识，对真理的敬畏。用理性思考，用感性生活。2.爱智慧：智慧的痛苦带来的心灵的愉悦。思想的疾病需要哲学的帮助。真正的哲学能让生活更为愉悦。3.还乡式的回归。人类精神不仅需要外张，更要回归。人类的认识旅程是理性的探险。认识世界到最终总是要回归到对自我的认识上来，更好的认识自我才能更好的生活。</p>
<p>
	讲座在同学们热烈的掌声中落下了帷幕。&ldquo;理性思考，感性生活&rdquo;，既是金立教授对本次讲座的总结，也是她送给参与讲座的所有同学的一句话。本次讲座虽然结束了，但是它带给每一位听众的思考不会结束。</p>
<p>
	&nbsp;&nbsp;</p>
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