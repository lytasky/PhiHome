<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN"><!-- InstanceBegin template="/Templates/head.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>无标题文档</title>
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
<!-- InstanceEndEditable -->

</head>

<body style="background:url(images/back.PNG) repeat;">

<div class="container" style="width:1000px;margin:0 auto;">
  <div class="content">
    <div id="head" style="width:100%;height:150px;border:1px solid #CCC;background:url(images/china-style3.6.jpg);">	<!--这是模版真正要使用的顶部，也就是每个页面都需要用到的-->
      <div id="head-right" style="float:right;width:25%;align:center;margin-top:28px;">
      	<div style="margin-right:25px;float:right;">
          <p><div class="fl" style="width:40px;"><a class="head-text" href="#">中文</a></div><div class="fl" style="width:60px;"><a class="head-text" href="#">English</a></div></p>
          <div class="row" style="float:right;margin-top:15px;">
  					<div class="col-md-12">
    					<div class="input-group">
      					<input type="text" class="form-control">
      					<span class="input-group-btn">
        					<button class="btn btn-default" type="button">搜索</button>
      					</span>
    					</div><!-- /input-group -->
  					</div><!-- /.col-lg-6 -->
					</div><!-- /.row -->
       	</div>
      </div>
    </div><!-- head -->
    
    <div style="width:100%;height:auto;margin-top:15px;overflow:hidden;" class="gray-border"><!-- main -->
	<!-- InstanceBeginEditable name="EditRegion3" -->
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
        			<a href="uselogin.jsp" style="color:#000;" class="panel-item">课程讨论</a>
      			</div>
      			<div class="panel-body">
        			<a href="luntan/dsh.jsp" style="color:#000;" class="panel-item">读书会</a>
      			</div>
            <div class="panel-body">
        			<a href="luntan/zxsl.jsp" style="color:#000;" class="panel-item">哲学沙龙</a>
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
        <a href="#" class="list-group-item active" style="background-color:#3276b1;">
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
        <a href="#" class="list-group-item active">
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
    </div>
    
    <div id="bottom-info" style="width:100%;margin-top:15px;height:100px;background-color:#f5f5f5;align:center;" class="gray-border round-border">
    	<div style="margin:20px auto;width:300px;align:center;">Copyright&copy;2013 Reserved By 浙江大学哲学系
      </div>
      <div style="margin:-5px auto;width:400px;align:center;">
      	浙江省杭州市天目山路148号浙江大学西溪校区 邮编:310028
      </div>
    </div>
    <!-- end .content --></div>
  <!-- end .container --></div>
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
</body>
<!-- InstanceEnd --></html>
