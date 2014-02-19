<!doctype html>
<html lang="en">
<head>
<title>师资力量</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
		<div id="left-nav" style="width:200px;height:565px;align:center;padding:0 auto;float:left;font-size:14px;line-height:0.49;float:left;">
     <div class="panel-group" id="accordion" style="height:455px;"><!--网站地图-->
  		<div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-th-list"></span> 系情介绍</a>
      			</h4>
    		</div>
    		<div id="collapseOne" class="panel-collapse collapse in">
      			<div class="panel-body" style="display:block;">
        			<a href="xygk.jsp" style="color:#000;" class="panel-item">学院概况</a>
      			</div>
      			<div class="panel-body">
        			<a href="szll.jsp" style="color:#000;" class="panel-item">师资力量</a>
      			</div>
    		</div>
  		</div> 
	   </div><!-- panel-group -->
     
	</div>

		<div class="gray-border" style="margin-left:15px;width:840px;height:700px;background-color:#d3d7da;float:right;"><!--分页显示内容-->
		<div class="round-border deep-blue" style="height:37px;padding-top:10px;padding-left:15px;font-size:14px;"><!--当前位置-->
         <span style="color:#fff;"><span class="glyphicon glyphicon-hand-right"></span> 当前位置：</span>
         <a style="color:#fff;" href="../index.jsp">主页</a>
         <span style="color:#fff;">->系情介绍</span>	
      <span style="color:#fff;">->师资力量</span>	
		</div>
    
    <div class="gray-border round-border white-back" style="width:840px;margin-top:15px;">
      <table border="1" cellpadding="5" cellspacing="0" style="width: 840px" width="687">
				<tbody>
					<tr>
			<td colspan="2" style="width: 144px; height: 40px">
				<p align="center">
					<font size="+1"><strong>机构</strong></font></p>
			</td>
			<td width="120" style="width: 120px; height: 27px">
				<p align="center">
					<strong>学科点</strong></p>
			</td>
			<td colspan="4" style="width: 312px; height: 27px">
				<p align="center">
					<strong>人</strong><strong>员</strong></p>
			</td>
		</tr>
					<tr>
			<td width="72" rowspan="4" style="width: 72px; height: 31px">
				<p>
					<font size="2px"><a href="http://zjusts.zju.edu.cn/zjsts/" target="blank">STS中心</a></font></p>
			</td>
			<td width="72" rowspan="2" style="width: 72px; height: 31px">
				<p>
					科技与社会发展研究所</p>
			</td>
			<td rowspan="2" style="width: 120px; height: 31px">
				<p>
					科学哲学、科学史</p>
			</td>
			<td width="78" style="width: 78px; height: 31px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0085201" target="blank">盛晓明</a></p>
			</td>
			<td width="78" style="width: 78px; height: 31px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0080015" target="blank">许为民</a></p>
			</td>
			<td width="78" style="width: 78px; height: 31px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0087185" target="blank">丛杭青</a></p>
			</td>
			<td width="103" style="width: 78px; height: 31px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0089140" target="blank">王建安</a></p>
			</td>
		</tr>
					<tr>
			<td style="width: 78px; height: 30px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0005422" target="blank">李恒威</a></p>
			</td>
			<td style="width: 78px; height: 30px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0003339" target="blank">张立</a></p>
			</td>
			<td style="width: 78px; height: 30px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0086351" target="blank">李磊</a></p>
			</td>
			<td style="width: 78px; height: 30px">
				<p align="center"><a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0003262" target="blank">王淼</a>
					</p>
			</td>
		</tr>
					<tr>
			<td rowspan="2" style="width: 72px; height: 42px">
				<p>
					逻辑与认知研究所</p>
			</td>
			<td rowspan="2" style="width: 120px; height: 42px">
				<p>
					逻辑学</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0082291" target="blank">黄华新</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					
					  
					<span style="color: #0000ff">吴义诚</span>				</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0097364" target="blank">胡龙彪</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					
					  
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0099092" target="blank">金立</a></p>
			</td>
		</tr>
					<tr>
			<td style="width: 78px; height: 42px">
				<p align="center">
					 <a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0006423" target="blank">廖备水</a>
				</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0007632" target="blank">徐慈华</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<span style="color: #0000ff">&nbsp;</span></p>
			</td>
		</tr>
					<tr>
			<td colspan="2" rowspan="2" style="width: 144px; height: 42px">
				<p>
					<a href="http://www.ch.zju.edu.cn/internal/news.php?id=27" target="blank">中国思想文化研究所</a></p>
			</td>
			<td rowspan="2" style="width: 120px; height: 42px">
				<p>
					中国哲学</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0002034" target="blank">董平</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0001049" target="blank">孔令宏</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0087175" target="blank">潘立勇</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0089138" target="blank">张家成</a></p>
			</td>
		</tr>
					<tr>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0005484" target="blank">何善蒙</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0085174" target="blank">朱淼华</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<u><font color="#0000ff"><font-size:18px></font-size:18px></font></u></p>
				<p align="center">
				  </p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					</p>
				<p align="center">
					</p>
			</td>
		</tr>
					<tr>
			<td colspan="2" rowspan="3" style="width: 144px; height: 42px">
				<p>
					<a href="http://www.ch.zju.edu.cn/internal/news.php?id=28" target="blank">外国哲学研究所</a></p>
			</td>
			<td rowspan="2" style="width: 120px; height: 42px">
				<p>
					外国哲学</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0073033" target="blank">庞学铨</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0092468" target="blank">杨大春</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0097090" target="blank">包利民</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					
					  
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0000129" target="blank">章雪富</a></p>
			</td>
		</tr>
					<tr>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0096169" target="blank">应奇</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					
					<span style="color: #0000ff">王俊</span></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					
					
					  
					    <font-size:18px>
					      
					    </font-size:18px>
					 
					  
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0005215" target="blank">王礼平</a>				</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					
					陈玮</p>
			</td>
		</tr>
					<tr>
					  <td style="width: 120px; height: 42px">
					    
					      <font-size:18px>
					        			          
					            宗教学
					          
					        </font-size:18px>
					   
				    </td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0096405" target="blank">王志成</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					
					
					  
					    <font-size:18px>
					      
					      </font-size:18px>
					 
					  
				  <a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0004129" target="blank">王桂彩</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					
				陈越骅</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">徐向东</p>
			</td>
		</tr>
					<tr>
			<td colspan="2" style="width: 144px; height: 42px">
				<p>
					马哲与伦理学</p>
			</td>
			<td style="width: 120px; height: 42px">
				<p>
					马克思主义哲学、伦理学</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0082288" target="blank">朱法贞</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0088234" target="blank">黄爱华</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0003241" target="blank">王彦君</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">&nbsp;
					</p>
			</td>
		</tr>
					<tr>
			<td colspan="2" style="width: 144px; height: 42px">
				<p>
					系办公室</p>
			</td>
			<td style="width: 120px; height: 42px">
				<p>&nbsp;
					</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					<a href="http://mypage.zju.edu.cn/userPageCommonView.htm?userId=0098369" target="blank">徐茜晶</a></p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">
					</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">&nbsp;
				  

					</p>
			</td>
			<td style="width: 78px; height: 42px">
				<p align="center">&nbsp;</p>
			</td>
		</tr>
				</tbody>
			</table>
    </div>
  </div>
	</div>

  <div id="root" style="margin-top:15px;width:1181px;height:187px;z-index:-1;background:url(../images/root.gif);">
  </div>
</div>
</body>
</html>