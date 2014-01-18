<!doctype html>
<html>
<head>
<title>header</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="js/juery.js"></script>


<link rel="stylesheet" href="css/flexslider.css" type="text/css">
<link rel="stylesheet" href="css/diy.css" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="js/diy.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script type="text/javascript" src="js/togglemenu.js"></script>
<!-- Place in the <head>, after the three links -->
<script type="text/javascript" charset="utf-8">
  $(window).load(function() {
    $('.flexslider').flexslider({
          animation: "slide",
          controlsContainer: ".flex-container"
    });
  });
</script>
<style type="text/css" media="screen,print">
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
	.menu,
	.menu ul {
		margin:0;
		padding:0;
		list-style:none;
	}
	.menu {width:200px;}
	.menu li {
		display:block;
		margin:0;
		padding:0;
		margin-bottom:1px;
	}
	.menu a {
		display:block;
		padding:2px 5px;
		color:#fff;
		background:#727174;
		text-decoration:none;
	}
	.menu a:hover,
	.menu a:focus,
	.menu a:active {background:#727174;}
	.menu li ul li a:hover,
	.menu li ul li a:focus,
	.menu li ul li a:active {background:#070708;}
	.menu ul li {padding-left:15px;}
	.menu ul a {background:#727174;}
	.hidden {display:none;}
	.slidingList a{
		color:#fff;	
	}
	.slidingList{
		color:#fff;	
		padding-left:5px;padding-right:5px;
	}
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
</style>

</head>
<body style="margin-top:0px;">
<div id="indexMain" style="background-color:#d3d7da;width:1180px;margin:0 auto;">
  <div id="head" style="background:url(images/headBack.gif);height:230px;width:1180px;margin:0 auto;margin-top:0px;" class="fontColor4">
	<div style="height:30px;width:200px;float:right;margin-right:50px;margin-top:40px;" class="fr">
  	<font color="#fff">
  	<a href="#">浙江大学</a>&nbsp;|
    <a href="#">中文</a>&nbsp;|
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
    <div style="text-align:center;line-height:30px;height:30px;background:url(images/colomnBack2.gif);">
      <div style="width:195px;height:30px;align:center;" class="fl">
			<span class="menuOn" id="mod0">
			<a href="#" class="white-font "> 主页</a></span>
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
			<a href="uselogin.jsp" class="white-font">哲学论坛</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod8" class="fl">
			<span class="menuNo" onMouseOver="switchMod(8);">
			<a href="#" target="_blank" class="white-font">闻人轶事</a></span>
      </div>
      <div style="width:102px;height:30;align:center;" id="mod9" class="fl">
      <span class="menuNo" onMouseOver="switchMod(9);">
			<a href="test-header.jsp" target="_blank" class="white-font">资源链接</a></span>
      </div>
      </div>
  </div><!-- column -->
	<div class="slidingList" id="slidingList1" style="color:#fff;text-align:center;padding-top:5px;height:30px;float:left;margin-left:253px;display:;background:#0f0f0f;"><!-- 导航栏列表区 -->
		>>
<a href="jianjie/xygk.jsp"> 学院概况</a>|
<a href="jianjie/szll.jsp">师资力量</a>

	</div>
  <div class="slidingList" id="slidingList2" style="height:30px;float:left;margin-left:349px;display:none;background:#0f0f0f;padding-top:5px;">
  	>>
<a href="#"> 通知公告</a>|
<a href="#">新闻报道</a>
		
	</div>
  <div class="slidingList" id="slidingList3" style="height:30px;float:left;margin-left:445px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> 培养方案</a>|
			<a href="#">本科课程</a>
      |
			<a href="#">硕博课程</a>
      |
			<a href="#">学期课表</a>
      |
			<a href="#">课程资料</a>
		
	</div>
  <div class="slidingList" id="slidingList4" style="height:30px;float:left;margin-left:541px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> 招生信息</a>
			|
			<a href="#">历年真题</a>
      |
			<a href="#">招生咨询</a>
		
	</div>
  <div class="slidingList" id="slidingList5" style="height:30px;float:left;margin-left:637px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> 科研成果</a>
			|
			<a href="#">教学成果</a>
      |
			<a href="#">科研项目</a>
      |
			<a href="#">获奖信息</a>
		
	</div>
  <div class="slidingList" id="slidingList6" style="height:30px;float:left;margin-left:733px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> 学生名录</a>
			|
			<a href="#">学生活动</a>
      |
			<a href="#">学生作品</a>
		
	</div>
  <div class="slidingList" id="slidingList7" style="height:30px;float:left;margin-left:780px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> 课程讨论</a>
			|
			<a href="#">读书会</a>
      |
			<a href="#">哲学沙龙</a>
		
	</div>
  <div class="slidingList" id="slidingList8" style="height:30px;float:left;margin-left:870px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> 哲学趣闻</a>
			|
			<a href="#">校园故事</a>
      |
			<a href="#">校友风采</a>
		
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

	<div id="indexContent" style="width:1180px;height:1200px;margin:auto;margin-top:50px;" class=" fontColor0">
  	<div class="flexslider fl" style="height:350px;width:800px;margin-left:58px;">
    	<ul class="slides">
      <li>
        <img src="images/pic1.gif" />
      </li>
      <li>
        <img src="images/pic2.gif" />
      </li>
      <li>
        <img src="images/pic3.gif" />
      </li>
      <li>
        <img src="images/pic3.gif" />
      </li>
      <li>
        <img src="images/pic3.gif" />
      </li>
    </ul>
  	</div>
  	<div id="rightContent" style="width:280px;height:1170px;border-left:1px solid #bdbdbe;" class="left-border fr">
      <div class=" fl fontColor3" style="width:280px;height:250px;">
      	<div style="margin-left:0px;"><img src="images/yjshead.gif"></div>
        <div style="margin-left:15px;line-height:1.8;text-align:center;width:180px;" class="">
        	<div style="margin-left:-5px;"><img src="images/yjs.gif"></div>
          <a href="#">外国哲学研究所</a><br>
					<a href="#">中国思想文化研究所</a><br>
					<a href="#">宗教学研究所</a><br>
					<a href="#">科技与社会发展研究所</a><br>
					<a href="#">逻辑与认知研究所</a><br>
          <a href="#">亚太休闲教育研究中心</a>
        </div>
      </div>
      <div class=" fl fontColor1" style="width:280px;height:200px;">
      	<div style="margin-left:0px;"><img src="images/zszlhead.gif" border="0" usemap="#Map5">
          <map name="Map5">
            <area shape="rect" coords="165,10,206,29" href="#">
          </map>
      	</div>
        <div style="padding-left:20px;line-height:1.8;">
          <a href="#">>> 浙大哲学系2013硕士招生简章</a><br>
					<a href="#">>> 浙大哲学系2012年硕士录取名单</a><br>
					<a href="#">>> 浙大哲学系2012年招生简章</a><br>
					<a href="#">>> 浙大哲学系2011年招生简章</a><br>
          <div style="margin-left:-10px;margin-top:7px;"><img src="images/zszx.gif"></div>
        </div>
      </div>
      <div class=" fl fontColor3" style="width:280px;height:200px;">
      	<div style="margin-left:0px;"><img src="images/jpkchead.gif" border="0" usemap="#Map6">
          <map name="Map6">
            <area shape="rect" coords="164,7,207,29" href="#">
          </map>
      	</div>
        <div style="padding-left:20px;line-height:1.8;">
        	<div style="width:50px;" class="fl ">
          	国家级：<br><br>
            省级：
          </div>
          <div style="width:130px;" class="fl ">
          	<a href="#">当代科技哲学</a><br>
            <a href="#">王阳明心学</a><br>
            <a href="#">自然辩证法 </a>&nbsp;&nbsp;
            <a href="#"> 逻辑学</a><br>
            <a href="#">外国哲学</a>
          </div>
          
          <div style="margin-left:-10px;"><img src="images/spgkk.gif"></div>
        </div>
      </div>
      <div class=" fl fontColor3" style="width:280px;height:380px;">
      	<div style="margin-left:0px;"><img src="images/jdydhead.gif" border="0" usemap="#Map7">
          <map name="Map7">
            <area shape="rect" coords="168,12,208,32" href="#">
          </map>
      	</div>
        <div style="padding-left:15px;">
        	<img src="images/jdyd1.gif" border="0" usemap="#Map8">
          <map name="Map8">
            <area shape="rect" coords="2,3,111,158" href="#">
          </map>
<div style="width:20px;margin-right:65px;" class="fr"><a href="#">普罗提诺读书会</a></div>
          <div style="width:18px;margin-right:10px;" class="fr"><a href="#">组织人 .. 章雪富 教授</a></div><br>
          <img src="images/jdyd2.gif" border="0" usemap="#Map9">
          <map name="Map9">
            <area shape="rect" coords="2,1,111,158" href="#">
          </map>
<div style="width:20px;margin-right:65px;" class="fr"><a href="#">亚里士多德读书会</a></div>
          <div style="width:18px;margin-right:10px;" class="fr"><a href="#">组织人 .. 陈玮 博士</a></div><br>
        </div>
      </div>
      <div class=" fl fontColor4" style="width:280px;height:160px;">
        <div id="wrap" style="padding-left:15px;">
					<ul class="menu">
						<li><a href="." style="line-height:1.8;">&nbsp;&nbsp;浙江大学网站</a>
							<ul>
								<li><a href="/">Sub category 1a</a></li>
								<li><a href="/">Sub category 1b</a></li>
								<li><a href="/">Sub category 1c</a></li>
								<li><a href="/">Sub category 1d</a></li>
							</ul>
						</li><br>
						<li><a href="." style="line-height:1.8;">&nbsp;&nbsp;国内相关网站</a>
					<ul>

					<li><a href="/">Sub category 2a</a></li>
					<li><a href="/">Sub category 2b</a></li>
					<li><a href="/">Sub category 2c</a></li>
					<li><a href="/">Sub category 2d</a></li>
				</ul>
			</li><br>
			<li><a href="." style="line-height:1.8;">&nbsp;&nbsp;国外相关网站</a>

				<ul>
					<li><a href="/">Sub category 3a</a></li>
					<li><a href="/">Sub category 3b</a></li>
					<li><a href="/">Sub category 3c</a></li>
					<li><a href="/">Sub category 3d</a></li>
				</ul>
			</li>
		</ul>
				</div>
      </div>
    </div>
    <div class="right-border fl fontColor1" style="width:220px;height:750px;margin-left:58px;border-right:1px solid #bdbdbe;">
    	<div class="fl" style="width:220px;height:250px;padding-left:15px;line-height:1.8;">
      	<div style="margin-left:-15px;"><img src="images/zxdhhead.gif" border="0" usemap="#Map">
          <map name="Map">
            <area shape="rect" coords="169,9,207,25" href="#">
          </map>
      	</div>
      	<img src="images/zxdh1.gif"/>
        <a href="#">>>"西溪哲学对话"第23期对话</a><br>
        <a href="#">>>"西溪哲学对话"第22期对话</a><br>
        <a href="#">>>"西溪哲学对话"第21期对话</a><br>
        <a href="#">>>"西溪哲学对话"第20期对话</a><br>
        <a href="#">>>"西溪哲学对话"第19期对话</a><br>
      </div>
      <div class="g fl" style="width:220px;height:250px;line-height:1.8;padding-left:15px;">
      	<div style="margin-left:-15px;"><img src="images/zxydxhead.gif" border="0" usemap="#Map2">
          <map name="Map2">
            <area shape="rect" coords="168,11,207,31" href="#">
          </map>
      	</div>
      	<img src="images/zxydx.gif"/><br>
        <a href="#">>>"哲学与大学"第23期报道</a><br>
        <a href="#">>>"哲学与大学"第22期报道</a><br>
        <a href="#">>>"哲学与大学"第21期报道</a><br>
        <a href="#">>>"哲学与大学"第20期报道</a><br>
        <a href="#">>>"哲学与大学"第19期报道</a>
      </div>
      <div class=" fl" style="width:220px;height:250px;line-height:1.8;padding-left:15px;">
      	<div style="margin-left:-15px;"><img src="images/zxqwhead.gif" border="0" usemap="#Map3">
          <map name="Map3">
            <area shape="rect" coords="171,8,211,30" href="#">
          </map>
      	</div>
        <a href="#">>>海德格尔的故事</a><br>
        <a href="#">>>苏格拉底与柏拉图的故事</a><br>
        <a href="#">>>有名的女哲学家</a><br>
        <a href="#">>>阿奎那的故事</a><br>
        <a href="#">>>阿基琉斯追不上乌龟</a><br>
        <a href="#">>>薛定谔的猫</a><br>
        <div style="margin-left:-15px;"><img src="images/zxmh.gif" border="0" usemap="#Map4"/>
          <map name="Map4">
            <area shape="rect" coords="8,6,209,61" href="#">
          </map>
        </div>
      </div>
    </div>
    <div class=" fl" style="width:600px;height:750px;margin-left:15px;">
    	<div class=" fl fontColor2" style="width:260px;height:350px;">
      	<div style="margin-left:0px;"><img src="images/tzgg.gif" border="0" usemap="#Map10">
          <map name="Map10">
            <area shape="rect" coords="206,11,249,28" href="#">
          </map>
      	</div>
        <div class="right-border fl" style="line-height:1.7;padding-left:5px;">
        <font size="2px">
      	<a href="#">· "西溪哲学对话"第二十三次活动通知</a><br>
				<a href="#">· 西塞罗的政治哲学——《论共和国》中</a><br>
				<a href="#">· 柏林自由大学博士奖学金项目--浙大校</a><br>
				<a href="#">· 普林斯顿大学菲利普?佩蒂特教授学术</a><br>
				<a href="#">· "西溪哲学对话"第二十二次活动通知</a><br>
				<a href="#">· 华东地区现象学青年论坛（2013年秋季）</a><br>
				<a href="#">· "西溪哲学对话"第二十一次活动通知</a><br>
				<a href="#">· 关于申请牛津大学等英国高校哲学研究生</a><br>
				<a href="#">· "西溪哲学对话"第二十次活动通知</a><br>
				<a href="#">· 关于2012年度贝因美本科生奖学金的公</a><br>
        <a href="#">· "西溪哲学对话"第十九次活动通知  </a><br>
				<a href="#">· 关于申请牛津大学等英国高校哲学…   </a><br>
        <a href="#">· "西溪哲学对话"第十八次活动通知  </a><br>
        </font>
        </div>
      </div>
      <div class=" fl fontColor2" style="width:325px;height:350px;margin-top:-2px;">
      	<div style="margin-left:0px;"><img src="images/xwbd.gif" border="0" usemap="#Map11">
          <map name="Map11">
            <area shape="rect" coords="288,12,327,32" href="#">
          </map>
      	</div>
        <div class=" fl" style="margin-top:-5px;line-height:1.7;padding-left:4px;">
        <font size="2px">
      	<a href="#">· "西溪哲学对话"第二十四次活动通知  </a><br>
				<a href="#">· "西溪哲学对话"第二十三次活动通知  </a><br>
				<a href="#">· 西塞罗的政治哲学——《论共和政治…  </a><br>
				<a href="#">· 柏林自由大学博士奖学金项目--浙江…  </a><br>
				<a href="#">· 普林斯顿大学菲利普?佩蒂特教授学…   </a><br>
				<a href="#">· "西溪哲学对话"第二十二次活动通知  </a><br>
				<a href="#">· 华东地区现象学青年论坛（2013年…  </a><br>
				<a href="#">· "西溪哲学对话"第二十一次活动通知  </a><br>
				<a href="#">· 关于申请牛津大学等英国高校哲学研… </a><br>
				<a href="#">· "西溪哲学对话"第二十次活动通知    </a><br>
				<a href="#">· 关于2012年度贝因美本科生奖学金…   </a><br>
				<a href="#">· "西溪哲学对话"第二十一次活动通知  </a><br>
				<a href="#">· 关于申请牛津大学等英国高校哲学…   </a><br>
			</font>
			</div>
      <div class=" fr" style="line-height:1.7;margin-top:-5px;">
        <font size="2px">
      	<a>2013-11-27</a><br>
				<a>2013-11-04</a><br>
				<a>2013-10-29</a><br>
				<a>2013-10-29</a><br>
				<a>2013-10-29</a><br>
				<a>2013-10-18</a><br>
				<a>2013-10-16</a><br>
				<a>2013-09-23</a><br>
				<a>2013-09-09</a><br>
				<a>2013-09-04</a><br>
				<a>2013-06-19</a><br>
				<a>2013-09-23</a><br>
				<a>2013-09-09</a><br>
			</font>
			</div>
      </div>
      <div class=" fl fontColor1" style="width:630px;height:180px;">
      	<div style="margin-left:0px;"><img src="images/rdgz.gif" border="0" usemap="#Map12">
          <map name="Map12">
            <area shape="rect" coords="538,11,580,30" href="#">
          </map>
      	</div>
      	<div class="fl" style="width:160px;padding-left:15px;text-align:center;">
        	<img src="images/rdgz1.gif"/><br>
          <a href="#">康德哲学专题研究</a>
        </div>
        <div class="fl" style="width:170px;margin-left:30px;text-align:center;">
          <img src="images/rdgz2.gif"/><br>
          <a href="#">儒家与道家在社会思想中的差异</a>
        </div>
        <div class="fl" style="padding-top:5px;margin-left:30px;text-align:center;">
          <img src="images/rdgz3.gif"/><br>
         	<a href="#">佛教哲学专题研究</a>
        </div>
      </div>
      <div class=" fl fontColor1" style="width:370px;height:180px;">
      	<div style="margin-left:0px;"><img src="images/cgzs.gif" border="0" usemap="#Map13">
          <map name="Map13">
            <area shape="rect" coords="316,8,360,29" href="#">
          </map>
      	</div>
        <div style="padding-left:10px;line-height:1.8;">
        	<a href="#">>>现象学在二十世纪法国哲学中的主导地位研究</a><br>
					<a href="#">>>现象学在二十世纪法国哲学中的主导地位研究</a><br>
					<a href="#">>>现象学在二十世纪法国哲学中的主导地位研究</a><br>
					<a href="#">>>现象学在二十世纪法国哲学中的主导地位研究</a><br>
					<a href="#">>>现象学在二十世纪法国哲学中的主导地位研究</a><br>
        </div>
      </div>
      <div class=" fl fontColor1" style="width:220px;height:180px;">
      	<div style="margin-left:0px;"><img src="images/xsyd.gif" border="0" usemap="#Map14">
          <map name="Map14">
            <area shape="rect" coords="158,10,202,31" href="#">
          </map>
      	</div>
        <div style="padding-left:10px;line-height:1.8;">
        	<a href="#">>>学生作品</a><br>
					<a href="#">>>本科生第一期活动</a><br>
					<a href="#">>>硕博学术月活动</a><br>
					<a href="#">>>学生作品</a><br>
					<a href="#">>>哲学系学生活动</a><br>
        </div>
      </div>
    </div>
	</div>
  
  <div id="root" style="width:1181px;height:187px;z-index:-1;background:url(images/root.gif);">
  </div>
</div>
</body>
</html>