<%@ page language="java" contentType="text/html;charset=gb2312" %>
<!doctype html>
<html lang="en">
<head>
<title>header</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="css/main.css" rel="stylesheet" type="text/css" media="all"> 
<title>留言板</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
<script language="JavaScript" type="text/JavaScript">
function check_form(theform)
	{
	    var emailReg = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/; 
		if (theform.abody.value=="")
		{
			alert("请您填写留言内容！");
			theform.abody.focus();
			return false;
		}
		
		if (theform.title.value=="")
		{
			alert("请您填写留言主题！");
			theform.title.focus();
			return false;
		}
		

        if(theform.mail.value!=""){
			if( emailReg.test(theform.mail.value) ){ 
			   return true; 
			}else{ 
			   alert("您输入的Email地址格式不正确！"); 
			   theform.mail.focus();
			   return false; 
			} 
		}
	}
</script>
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
<script type="text/javascript" charset="utf-8">
  $(window).load(function() {
    $('.flexslider').flexslider({
          animation: "slide",
          controlsContainer: ".flex-container"
    });
  });
</script>
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
    <div style="text-align:center;line-height:30px;height:30px;background:url(../images/colomnBack2.gif);">
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
<a href="#"> 学院概况</a>|
<a href="#">师资力量</a>

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
	<div style="height:500px;width:1180px;margin-top:50px;padding-left:50px;font-family:'微软雅黑';" class="gray-border">
  	<div style="margin-left:100px;">
			<img src="../images/zszxhead.gif">
    </div>
    <div id="jive-flatpage" style="margin:15px auto;width:1000px;padding-left:0px;">
			<div id="jive-message-holder">
				<div class="jive-message-list">									

											<form name="form1" method="post" action="doaddly.jsp" onSubmit="return check_form(this)">
												<input type="hidden" name="action" value="post" />
												<div class="col-md-10 " style="margin-top:10px;">
													<div class="fl">标题：
                        	</div>
                        	<div class="fl" style="margin-top:-5px;"><input type="text" id="title" name="title" class="form-control" style="width:600px;">
                          </div>
												</div>
												<div class="col-md-10" style="margin-top:10px;">
													<div class="fl">内容：
                          </div>
													<div class="fl"><textarea name="abody" id="body" rows="10" cols="80" class="form-control"></textarea>
													</div>
                        <br>
												</div>
                        <div class="col-md-10 " style="margin-top:10px;margin-left:-25px;">
													<div class="fl">邮件地址：
                        	</div>
                        	<div class="fl">
                          	<input type="text" name="mail"  id="Mail" class="form-control" style="width:440px;">
                          </div>
                          <div class="fl" style="margin-left:40px;">
                            <button class="btn btn-primary" type="submit" style="width:120px;" name="Submit">发表</button>
                          </div>
                          
												</div>
                        
											</form>
								
								</div>
			</div>
		</div>
    <div class=" fl" style="width:800px;margin-left:120px;margin-top:15px;">
      <font color="#4d4278" size="2px" >+请确保你填的邮件地址正确无误，届时我们将以邮件的形式回复你</font>
    </div>
  </div>
  <div id="root" style="margin-top:15px;width:1181px;height:187px;z-index:-1;background:url(../images/root.gif);">
  </div>
</div>
</body>
</html>





