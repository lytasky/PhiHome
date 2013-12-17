<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/head.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>浙大哲学系</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
	<link href="css/diy.css" rel="stylesheet" media="screen" />
  <!-- <script src="https://code.jquery.com/jquery.js"></script>-->
  <script src="js/jquery.js"></script>
  <link rel="stylesheet" href="css/flexslider.css" type="text/css">
<script src="js/jquery.flexslider.js"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js"></script>


<!-- Place in the <head>, after the three links -->
<script type="text/javascript" charset="utf-8">
  $(window).load(function() {
    $('.flexslider').flexslider();
  });
</script>
<style type="text/css">
	.panel-body>a:hover{
		color:#fff;
		text-decoration:none;
	}
</style>
    <!-- Bootstrap -->
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.6.2/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->

	<div id="left-nav" style="width:200px;height:565px;align:center;padding:0 auto;float:left;font-size:14px;line-height:0.49;">
     <div class="panel-group" id="accordion" style="height:455px;"><!--网站地图-->
  		<div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-th-list"></span> 简介</a>
      			</h4>
    		</div>
    		<div id="collapseOne" class="panel-collapse collapse in">
      			<div class="panel-body" style="display:block;">
        			<a href="jianjie/depart_info.jsp" style="color:#000;" class="panel-item">本系概况</a>
      			</div>
      			<div class="panel-body">
        			<a href="jianjie/szll.jsp" style="color:#000;" class="panel-item">师资力量</a>
      			</div>
            <div class="panel-body">
        			<a href="jianjie/xsml.jsp" style="color:#000;" class="panel-item">学生名录</a>
      			</div>
    		</div>
  		</div>
  		<div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-th-list"></span> 信息</a>
      			</h4>
    		</div>
    		<div id="collapseTwo" class="panel-collapse collapse ">
      			<div class="panel-body">
        			<a href="xinxi/zytg.jsp" style="color:#000;" class="panel-item">重要通告</a>
      			</div>
            <div class="panel-body">
        			<a href="xinxi/xszx.jsp" style="color:#000;" class="panel-item">学术资讯</a>
      			</div>
      			<div class="panel-body">
        			<a href="xinxi/hdbd.jsp" style="color:#000;" class="panel-item">活动报道</a>
      			</div>
    		</div>
  		</div>
  		<div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-th-list"></span> 课程</a>
      			</h4>
    		</div>
    		<div id="collapseThree" class="panel-collapse collapse ">
      			<div class="panel-body">
        			<a href="kecheng/kb.jsp" style="color:#000;" class="panel-item">课表</a>
      			</div>
            <div class="panel-body">
        			<a href="kecheng/kczl.jsp" style="color:#000;" class="panel-item">课程资料</a>
      			</div>
    		</div>
  		</div>
      <div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-th-list"></span> 招生</a>
      			</h4>
    		</div>
    		<div id="collapseFour" class="panel-collapse collapse ">
      			<div class="panel-body">
        			<a href="zhaosheng/pyfa.jsp" style="color:#000;" class="panel-item">培养方案</a>
      			</div>
      			<div class="panel-body">
        			<a href="zhaosheng/zsxx.jsp" style="color:#000;" class="panel-item">招生信息</a>
      			</div>
            <div class="panel-body">
        			<a href="zhaosheng/zszx.jsp" style="color:#000;" class="panel-item">招生咨询</a>
      			</div>
    		</div>
  		</div>
      <div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseFive"><span class="glyphicon glyphicon-th-list"></span> 成果</a>
      			</h4>
    		</div>
    		<div id="collapseFive" class="panel-collapse collapse ">
      			<div class="panel-body">
        			<a href="chengguo/jxcg.jsp" style="color:#000;" class="panel-item">教学成果</a>
      			</div>
      			<div class="panel-body">
        			<a href="chengguo/xsyd.jsp" style="color:#000;" class="panel-item">学生园地</a>
      			</div>
    		</div>
  		</div>
      <div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseSix"><span class="glyphicon glyphicon-th-list"></span> 故事</a>
      			</h4>
    		</div>
    		<div id="collapseSix" class="panel-collapse collapse ">
      			<div class="panel-body">
        			<a href="gushi/ywgs.jsp" style="color:#000;" class="panel-item">轶闻故事</a>
      			</div>
    		</div>
  		</div>
      <div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven"><span class="glyphicon glyphicon-th-list"></span> 论坛</a>
      			</h4>
    		</div>
    		<div id="collapseSeven" class="panel-collapse collapse ">
      			<div class="panel-body">
        			<a href="uselogin.jsp" style="color:#000;" class="panel-item">论坛入口</a>
      			</div>
    		</div>
  		</div>
      <div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseEight"><span class="glyphicon glyphicon-th-list"></span> 链接</a>
      			</h4>
    		</div>
    		<div id="collapseEight" class="panel-collapse collapse ">
      			<div class="panel-body">
        			<a href="lianjie/xnzy.jsp" style="color:#000;" class="panel-item">校内资源</a>
      			</div>
      			<div class="panel-body">
        			<a href="lianjie/xwzy.jsp" style="color:#000;" class="panel-item">校外资源</a>
      			</div>
            <div class="panel-body">
        			<a href="lianjie/gnzy.jsp" style="color:#000;" class="panel-item">国内资源</a>
      			</div>
    		</div>
  		</div>  
	   </div><!-- panel-group -->
     <div class="gray-border round-border"  style="width:200px;height:105px;"><!--哲学-->
       <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="200" height="105">
         <param name="movie" value="flash/house-flash3.swf" />
         <param name="quality" value="high" />
         <param name="wmode" value="opaque" />
         <param name="swfversion" value="8.0.35.0" />
         <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
         <param name="expressinstall" value="Scripts/expressInstall.swf" />
         <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
         <!--[if !IE]>-->
         <object type="application/x-shockwave-flash" data="flash/house-flash3.swf" width="200" height="105">
           <!--<![endif]-->
           <param name="quality" value="high" />
           <param name="wmode" value="opaque" />
           <param name="swfversion" value="8.0.35.0" />
           <param name="expressinstall" value="Scripts/expressInstall.swf" />
           <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
           <div>
             <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
             <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
           </div>
           <!--[if !IE]>-->
         </object>
         <!--<![endif]-->
       </object>
     </div>
	</div><!-- left-nav -->
  <div id="news_and_publish" style="width:360px;height:565px;float:left;margin-left:20px;line-height:1.4;">
  	<div id="publish" style="width:350px;height:278px;float:left;display:block;"><!--publish-->
  	<div class="list-group">
    	<div>
        <a href="xinxi/zytg.jsp" class="list-group-item active" style="background-color:#3276b1;">
          <span class="glyphicon glyphicon-list-alt"></span> 重要通告
          <div style="width:60px;float:right;font-size:8px;margin-top:3px;"><span class="glyphicon glyphicon-hand-right"></span> MORE
          </div>
        </a>
      </div>
      <div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
  		<div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
      <div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
      <div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
      <div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
      <div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
      <div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
		</div>
  </div>
  	<div id="news" style="width:350px;height:278px;margin-top:12px;float:left;"><!--news-->
  	<div class="list-group">
  		<div>
        <a href="xinxi/xszx.jsp" class="list-group-item active">
          <span class="glyphicon glyphicon-book"></span> 学术资讯
          <div style="width:60px;float:right;font-size:8px;margin-top:3px;"><span class="glyphicon glyphicon-hand-right"></span> MORE
          </div>
        </a>
      </div>
  		<div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
  		<div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
      <div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
      <div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
      <div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
      <div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
      <div>
        <a href="#" class="list-group-item news-font-size none-bottom">
          "西溪哲学对话"第二十二次活动通知
          <div style="width:70px;float:right;">2013-10-18
          </div>
        </a>
      </div>
		</div>
  </div>
  </div>
  <div class="flexslider gray-border" style="width:380px;height:250px;float:right;margin-right:0px;"><!-- 轮播图片 -->
    <ul class="slides">
    	<li>
      	<img src="images/pic1.1.jpg" />
    	</li>
    	<li>
      	<img src="images/pic2.1.jpg" />
    	</li>
    	<li>
      	<img src="images/pic3.1.jpg" />
    	</li>
  	</ul>
  </div>
  <div class="fr gray-border round-border" style="width:380px;height:270px;background-color:white;line-height:1;margin-top:-20px;"><!--link-->
    <ul class="nav nav-pills nav-stacked">
      <li class="active"><a href="#"><span class="glyphicon glyphicon-share"></span> 友情链接</a></li>
      </ul>
    <div class="fl" style="margin-left:15px;margin-top:15px;width:170px;font-size:13px;">
      <ul class="nav nav-pills nav-stacked">
        <li><a href="http://zjuem.zju.edu.cn/">浙江大学邮件系统</a></li>
        <li><a href="http://libweb.zju.edu.cn/libweb/">浙江大学图书馆</a></li>
        <li><a href="http://www.ch.zju.edu.cn/">浙江大学人文学院</a></li>
        <li><a href="http://grs.zju.edu.cn/index.jsf">浙江大学研究生院</a></li>
        <li><a href="http://zupo.zju.edu.cn/">浙江大学办公网</a></li>
        <li><a href="http://libweb.zju.edu.cn/libweb/">浙江大学信息中心</a></li>
        </ul>
      </div>
    <div class="fr" style="margin-right:15px;margin-top:15px;width:170px;font-size:13px;">
      <ul class="nav nav-pills nav-stacked">
        <li><a href="http://www.phil.tsinghua.edu.cn/">清华大学哲学系</a></li>
        <li><a href="http://ce.phil.pku.edu.cn/">北京大学哲学系</a></li>
        <li><a href="http://philosophy.fudan.edu.cn/">复旦大学哲学学院</a></li>
        <li><a href="http://phi.ruc.edu.cn/">中国人民大学哲学院</a></li>
        <li><a href="http://phil.arts.cuhk.edu.hk/">香港中文大学哲学系</a></li>
        <li><a href="http://philosophy.stanford.edu/">斯坦福大学哲学系</a></li>
        </ul>
      </div>
  </div>
	<script type="text/javascript">
swfobject.registerObject("FlashID");
  </script>
	<!-- InstanceEndEditable -->
</head>

<body  style="margin-top:0px;">
	<div id="indexMain" style="background-color:#d3d7da;width:1180px;margin:0 auto;">
  <div id="head" style="background-image:url(images/headBack.gif);height:230px;width:1180px;margin:0 auto;margin-top:0px;margin-bottom:50px;" class="fontColor4">
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
			<a href="#" target="_blank" class="white-font">资源链接</a></span>
      </div>
      </div>
  </div><!-- column -->
	<div class="slidingList" id="slidingList1" style="color:#fff;text-align:center;padding-top:5px;height:30px;float:left;margin-left:253px;display:;background:#0f0f0f;"><!-- 导航栏列表区 -->
		>>
<a href="#"> 学院概况</a>|
<a href="jianjie/szll.html">师资力量</a>

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
	<!-- InstanceBeginEditable name="body" -->
<!-- InstanceEndEditable -->
</div>
	
</body>
<!-- InstanceEnd --></html>
