<%@ page pageEncoding="gb2312"%>
<%@ page import="java.sql.*,com.bjsxt.bbs.*,java.util.*"%>
<%@ page import="dbmgr.NewsMgr"  %>
<%@ page contentType="text/html; charset=gb2312" %>
<jsp:directive.page import="dbmgr.NewsMgr;"/>
<%
	NewsMgr newsMgr = new NewsMgr();
	List<News> xinxiduihua = new ArrayList<News>();
	xinxiduihua = newsMgr.get("xinxiduihua", 5);
%>

<%
	List<News> zhexueAnddaxue = new ArrayList<News>();
	zhexueAnddaxue = newsMgr.get("ZhexueAndDaxue", 5);
%>

<%
	List<News> zhexuequshi = new ArrayList<News>();
	zhexuequshi = newsMgr.get("zhexuequshi",6);
%>

<%
	List<News> tongzhigonggao = new ArrayList<News>();
	tongzhigonggao = newsMgr.get("tongzhigonggao",13);
%>

<%
	List<News> xinwenbaodao = new ArrayList<News>();
	xinwenbaodao = newsMgr.get("XinwenBaodao",13);
	
%>
<!doctype html>
<html>
<head>
<title>header</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<!--<script src="js/jquery.js"></script>-->


<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/diy.css" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link rel="stylesheet" href="css/demo.css" type="text/css" media="screen" />
<script src="js/diy.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="js/togglemenu.js"></script>
<!-- Place in the <head>, after the three links -->
<script type="text/javascript" charset="utf-8">
	$(window).load(function() {
		$('.flexslider').flexslider({
          animation: "slide",
          //controlsContainer: "container"
		});
	});
	/*$(window).load(function() {
		$('.flexslider').flexslider();
	});*/
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
	.byte{
		font-size: 9pt;
    vertical-align: middle;
    color: #000;
		opacity:0.3; 
		filter:alpha(opacity=50);	
	}
</style>

</head>
<body style="margin-top:0px;">
<div id="indexMain" style="background-color:#d3d7da;width:1180px;margin:0 auto;">
  <div id="head" style="background:url(images/headBack.gif);height:230px;width:1180px;margin:0 auto;margin-top:0px;" class="fontColor4">
	<div style="height:30px;width:200px;float:right;margin-right:50px;margin-top:40px;" class="fr">
  	<font color="#fff">
  	<a href="http://www.zju.edu.cn/">�㽭��ѧ</a>&nbsp;|
    <a href="http://phil.zju.edu.cn/">����</a>&nbsp;|
    <a href="#">English</a></font>
   </div>
	<div class="row fl" style="width:250px;margin-left:915px;">
  		<div class="col-md-10">
    		<div class="input-group input-group-sm">
              	 <input type="text" class="form-control byte" ></input>
      					<span class="input-group-btn">
        					<button class="btn btn-default byte" type="button">����</button>
      					</span>
                
    					</div><!-- /input-group -->
  		</div><!-- /.col-lg-6 -->
		</div><!-- /.row -->
	<div id="column" style="margin-top:100px;margin-left:58px;width:1065px;height:30px;float:left;padding-top:-10px;">
    <div style="text-align:center;line-height:30px;height:30px;background:url(images/colomnBack2.gif);">
      <div style="width:195px;height:30px;align:center;" class="fl">
			<span class="menuOn" id="mod0">
			<a href="index.jsp" class="white-font "> ��ҳ</a></span>
      </div>
      <div style="width:96px;height:30px;align:center;background-color:#030303;" id="mod1" class="fl">
			<span class="menuOn" onMouseOver="switchMod(1);" >
			<a href="#" class="white-font "> ϵ�����</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod2" class="fl">
			<span class="menuNo" onMouseOver="switchMod(2);">
			<a href="#" class="white-font ">����ͨ��</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod3" class="fl">
			<span class="menuNo" onMouseOver="switchMod(3);">
			<a href="#" class="white-font">��ѧ����</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod4" class="fl">
			<span class="menuNo" onMouseOver="switchMod(4);">
			<a href="#" class="white-font">����ר��</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod5"  class="fl">
			<span class="menuNo" onMouseOver="switchMod(5);">
			<a href="#" class="white-font">���гɹ�</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod6" class="fl">
			<span class="menuNo" onMouseOver="switchMod(6);">
			<a href="#" class="white-font">ѧ��԰��</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod7" class="fl">
			<span class="menuNo" onMouseOver="switchMod(7);">
			<a href="uselogin.jsp" class="white-font">��ѧ��̳</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod8" class="fl">
			<span class="menuNo" onMouseOver="switchMod(8);">
			<a href="#" target="_blank" class="white-font">��������</a></span>
      </div>
      <div style="width:102px;height:30;align:center;" id="mod9" class="fl">
      <span class="menuNo" onMouseOver="switchMod(9);">
			<a href="test-header.jsp" target="_blank" class="white-font">��Դ����</a></span>
      </div>
      </div>
  </div><!-- column -->
	<div class="slidingList" id="slidingList1" style="color:#fff;text-align:center;padding-top:5px;height:30px;float:left;margin-left:253px;display:;background:#0f0f0f;"><!-- �������б��� -->
		>>
<a href="jianjie/xygk.jsp"> ѧԺ�ſ�</a>|
<a href="jianjie/szll.jsp">ʦ������</a>

	</div>
  <div class="slidingList" id="slidingList2" style="height:30px;float:left;margin-left:349px;display:none;background:#0f0f0f;padding-top:5px;">
  	>>
<a href="xinxi/tzgg.jsp"> ֪ͨ����</a>|
<a href="xinxi/xwbd.jsp">���ű���</a>
		
	</div>
  <div class="slidingList" id="slidingList3" style="height:30px;float:left;margin-left:445px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="kecheng/pyfa.jsp"> ��������</a>|
			<a href="kecheng/bkkc.jsp">���ƿγ�</a>
      |
			<a href="kecheng/sbkc.jsp">˶���γ�</a>
      |
			<a href="kecheng/xqkb.jsp">ѧ�ڿα�</a>
      |
			<a href="kecheng/kczl.jsp">�γ�����</a>
		
	</div>
  <div class="slidingList" id="slidingList4" style="height:30px;float:left;margin-left:541px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="zhaosheng/zsxx.jsp"> ������Ϣ</a>
			|
			<a href="zhaosheng/nlzt.jsp">��������</a>
      |
			<a href="zhaosheng/zszx.jsp">������ѯ</a>
		
	</div>
  <div class="slidingList" id="slidingList5" style="height:30px;float:left;margin-left:637px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="chengguo/kycg.jsp"> ���гɹ�</a>
			|
			<a href="chengguo/jxcg.jsp">��ѧ�ɹ�</a>
      |
			<a href="chengguo/kyxm.jsp">������Ŀ</a>
      |
			<a href="chengguo/hjxx.jsp">����Ϣ</a>
		
	</div>
  <div class="slidingList" id="slidingList6" style="height:30px;float:left;margin-left:733px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="xuesheng/xsml.jsp"> ѧ����¼</a>
			|
			<a href="xuesheng/xshd.jsp">ѧ���</a>
      |
			<a href="xuesheng/xszp.jsp">ѧ����Ʒ</a>
		
	</div>
  <div class="slidingList" id="slidingList7" style="height:30px;float:left;margin-left:780px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="uselogin.jsp"> �γ�����</a>
			|
			<a href="uselogin.jsp">�����</a>
      |
			<a href="uselogin.jsp">��ѧɳ��</a>
		
	</div>
  <div class="slidingList" id="slidingList8" style="height:30px;float:left;margin-left:870px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="gushi/zxqw.jsp"> ��ѧȤ��</a>
			|
			<a href="gushi/xygs.jsp">У԰����</a>
      |
			<a href="gushi/xyfc.jsp">У�ѷ��</a>
		
	</div>
  <div class="slidingList" id="slidingList9" style="height:30px;float:left;margin-left:921px;display:none;background:#0f0f0f;padding-top:5px;">
  		>>
			<a href="#link"> У����վ</a>
			|
			<a href="#link">У����Դ</a>
      |
			<a href="#link">������Դ</a>
		
	</div><!-- �������б��� -->
</div>

	<div id="indexContent" style="width:1180px;height:1200px;margin:auto;margin-top:50px;" class=" fontColor0">
	<div id="container" style="height:350px;width:800px;margin-left:58px;float:left;">
		<div class="flexslider">
	    <ul class="slides">
	    	<li>
	    		<img src="images/pic1.gif" />
	    		<p class="flex-caption">��һ������.</p>
	    	</li>
	    	<li>
	    		<img src="images/pic2.gif" />
	    		<p class="flex-caption">�ڶ�������</p>
	    	</li>
	    	<li>
	    		<img src="images/pic3.gif" />
				<p class="flex-caption">�������ı���</p>
	    	</li>
	    	<li>
	    		<img src="images/pic3.gif" />
				<p class="flex-caption">���ķ��ı���</p>
	    	</li>
	    </ul>
	  </div>
	</div>

  	<div id="rightContent" style="width:280px;height:1170px;border-left:1px solid #bdbdbe;" class="left-border fr">
      <div class=" fl fontColor3" style="width:280px;height:250px;">
      	<div style="margin-left:0px;"><img src="images/yjshead.gif"></div>
        <div style="margin-left:15px;line-height:1.8;text-align:center;width:180px;" class="">
        	<div style="margin-left:-5px;"><img src="images/yjs.gif"></div>
          <a href="http://www.ch.zju.edu.cn/external/news.php?id=28">�����ѧ�о���</a><br>
					<a href="http://www.ch.zju.edu.cn/external/news.php?id=27">�й�˼���Ļ��о���</a><br>
					<a href="http://iccs.zju.edu.cn/">�ڽ�ѧ�о���</a><br>
					<a href="http://zjusts.zju.edu.cn/zjsts/">�Ƽ�����ᷢչ�о���</a><br>
					<a href="http://lc.zju.edu.cn/zjulc/">�߼�����֪�о���</a><br>
          <a href="http://www.apcl.zju.edu.cn/">��̫���н����о�����</a>
        </div>
      </div>
      <div class=" fl fontColor1" style="width:280px;height:200px;">
      	<div style="margin-left:0px;"><img src="images/zszlhead.gif" border="0" usemap="#Map5">
          <map name="Map5">
            <area shape="rect" coords="165,10,206,29" href="#">
          </map>
      	</div>
        <div style="padding-left:20px;line-height:1.8;">
          <a href="#">>> �����ѧϵ2013˶ʿ��������</a><br>
					<a href="#">>> �����ѧϵ2012��˶ʿ¼ȡ����</a><br>
					<a href="#">>> �����ѧϵ2012����������</a><br>
					<a href="#">>> �����ѧϵ2011����������</a><br>
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
          	���Ҽ���<br><br>
            ʡ����
          </div>
          <div style="width:130px;" class="fl ">
          	<a href="http://course.jingpinke.com/details?uuid=4050bb3b-1290-1000-0832-b7b5f3b2d8d7&objectId=oid:4050bb3b-1290-1000-0831-b7b5f3b2d8d7&courseID=K100048">�����Ƽ���ѧ</a><br>
            <a href="http://ocw.zju.edu.cn/cn/wym.jsp">��������ѧ</a><br>
            <a href="http://sts.zju.edu.cn/nature/">��Ȼ��֤�� </a>&nbsp;&nbsp;
            <a href="http://course.zju.edu.cn/403/"> �߼�ѧ</a><br>
            <a href="http://course.jingpinke.com/details?uuid=8a833999-221c4794-0122-1c479504-02cd&objectId=oid:8a833999-221c4794-0122-1c479504-02cc&courseID=S0601044">�����ѧ</a>
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
<div style="width:20px;margin-right:65px;" class="fr"><a href="#" name="link" id="link">������ŵ�����</a></div>
          <div style="width:18px;margin-right:10px;" class="fr"><a href="#">��֯�� .. ��ѩ�� ����</a></div><br>
          <img src="images/jdyd2.gif" border="0" usemap="#Map9">
          <map name="Map9">
            <area shape="rect" coords="2,1,111,158" href="#">
          </map>
<div style="width:20px;margin-right:65px;" class="fr"><a href="#">����ʿ��¶����</a></div>
          <div style="width:18px;margin-right:10px;" class="fr"><a href="#">��֯�� .. ���� ��ʿ</a></div><br>
        </div>
      </div>
      <div class=" fl fontColor4" style="width:280px;height:160px;">
        <div id="wrap" style="padding-left:15px;">
					<ul class="menu">
						<li><a href="." style="line-height:1.8;letter-spacing:2px;">&nbsp;&nbsp;�㽭��ѧ��վ</a>
            	<div style="margin-top:-16px;margin-left:150px;width:0px;height:0px;border:10px solid transparent;border-top-color:#d3d7da;border-left-color:transparent;border-right-color:transparent;border-bottom-color:transparent;">
              </div>
							<ul>
								<li><a href="http://zjuem.zju.edu.cn/">�㽭��ѧ�ʼ�ϵͳ</a></li>
        				<li><a href="http://libweb.zju.edu.cn/libweb/">�㽭��ѧͼ���</a></li>
        				<li><a href="http://www.ch.zju.edu.cn/">�㽭��ѧ����ѧԺ</a></li>
        				<li><a href="http://grs.zju.edu.cn/index.jsf">�㽭��ѧ�о���Ժ</a></li>
        				<li><a href="http://zupo.zju.edu.cn/">�㽭��ѧ�칫��</a></li>
        				<li><a href="http://libweb.zju.edu.cn/libweb/">�㽭��ѧ��Ϣ����</a></li>
							</ul>
						</li><br>
						<li><a href="." style="line-height:1.8;letter-spacing:2px;">&nbsp;&nbsp;���������վ</a>
            <div style="margin-top:-16px;margin-left:150px;width:0px;height:0px;border:10px solid transparent;border-top-color:#d3d7da;border-left-color:transparent;border-right-color:transparent;border-bottom-color:transparent;">
            </div>
					<ul>

					<li><a href="http://www.phil.tsinghua.edu.cn/">�廪��ѧ��ѧϵ</a></li>
        	<li><a href="http://ce.phil.pku.edu.cn/">������ѧ��ѧϵ</a></li>
        	<li><a href="http://philosophy.fudan.edu.cn/">������ѧ��ѧѧԺ</a></li>
        	<li><a href="http://phi.ruc.edu.cn/">�й������ѧ��ѧԺ</a></li>
        	<li><a href="http://phil.arts.cuhk.edu.hk/">������Ĵ�ѧ��ѧϵ</a></li>
				</ul>
			</li><br>
			<li><a href="." style="line-height:1.8;letter-spacing:2px;">&nbsp;&nbsp;���������վ</a>
				<div style="margin-top:-16px;margin-left:150px;width:0px;height:0px;border:10px solid transparent;border-top-color:#d3d7da;border-left-color:transparent;border-right-color:transparent;border-bottom-color:transparent;">
        </div>
				<ul>
					<li><a href="http://philosophy.stanford.edu/">˹̹����ѧ��ѧϵ</a></li>
					<li><a href="/">Sub category 3b</a></li>
					<li><a href="/">Sub category 3c</a></li>
					<li><a href="/">Sub category 3d</a></li>
				</ul>
			</li>
		</ul>
				</div>
      </div>
    </div>
    <div class="right-border fl fontColor1" style="width:220px;height:750px;margin-left:58px;border-right:1px solid #bdbdbe;margin-top:30px;">
    	<div class="fl" style="width:220px;height:250px;padding-left:15px;line-height:1.8;">
      	<div style="margin-left:-15px;"><img src="images/zxdhhead.gif" border="0" usemap="#Map">
          <map name="Map">
            <area shape="rect" coords="169,9,207,25" href="#">
          </map>
      	</div>
      	<img src="images/zxdh1.gif"/>
      	<% 
      		for(Iterator<News> it = xinxiduihua.iterator();it.hasNext();){
      			News duihua = it.next();
      			String title = duihua.getTitle();
      			
      	%>
        <a href="#">>><%=title%></a><br>
        <%
      		}
        %>
      </div>
      <div class="g fl" style="width:220px;height:250px;line-height:1.8;padding-left:15px;">
      	<div style="margin-left:-15px;"><img src="images/zxydxhead.gif" border="0" usemap="#Map2">
          <map name="Map2">
            <area shape="rect" coords="168,11,207,31" href="#">
          </map>
      	</div>
      	<img src="images/zxydx.gif"/><br>
      	<% 
      		for(Iterator<News> it = zhexueAnddaxue.iterator();it.hasNext();){
      			News zhexue = it.next();
      			String title = zhexue.getTitle();
      			
      	%>
        <a href="#">>><%=title %>></a><br>
		<%
      		}
		%>
      </div>
      <div class=" fl" style="width:220px;height:250px;line-height:1.8;padding-left:15px;">
      	<div style="margin-left:-15px;"><img src="images/zxqwhead.gif" border="0" usemap="#Map3">
          <map name="Map3">
            <area shape="rect" coords="171,8,211,30" href="#">
          </map>
      	</div>
        <% 
      		for(Iterator<News> it = zhexuequshi.iterator();it.hasNext();){
      			News qushi = it.next();
      			String title = qushi.getTitle();
      			
      	%>
        <a href="#">>><%=title %>></a><br>
		<%
      		}
		%>
        <div style="margin-left:-15px;"><img src="images/zxmh.gif" border="0" usemap="#Map4"/>
          <map name="Map4">
            <area shape="rect" coords="8,6,209,61" href="#">
          </map>
        </div>
      </div>
    </div>
    <div class=" fl" style="width:600px;height:750px;margin-left:15px;margin-top:30px;">
    	<div class=" fl fontColor2 right-border" style="width:260px;height:350px;">
      	<div style="margin-left:0px;"><img src="images/tzgg.gif" border="0" usemap="#Map10">
          <map name="Map10">
            <area shape="rect" coords="206,11,249,28" href="#">
          </map>
      	</div>
        <div class=" fl " style="line-height:1.7;padding-left:5px;width:260px;overflow:hidden;">
        <font size="2px">
        <% 
      		for(Iterator<News> it = tongzhigonggao.iterator();it.hasNext();){
      			News tongzhi = it.next();
      			String title = tongzhi.getTitle();
      			int id =  tongzhi.getId();
      			
      	%>
        <div class="" style="width:240px;text-overflow:ellipsis; white-space:nowrap; overflow:hidden;"><a href="xinxi/jtxx.jsp?id=<%=id%>&classify=tzgg">�� <%=title %></a></div>
		<%
      		}
		%>
        </font>
        </div>
      </div>
      <div class=" fl fontColor2" style="width:330px;height:350px;margin-top:-2px;">
      	<div style="margin-left:0px;"><img src="images/xwbd.gif" border="0" usemap="#Map11">
          <map name="Map11">
            <area shape="rect" coords="288,12,327,32" href="#">
          </map>
      	</div>
        <div class=" fl " style="margin-top:-5px;line-height:1.7;padding-left:4px;overflow:hidden;width:360px;">
        <font size="2px">
        <% 
      		for(Iterator<News> it = xinwenbaodao.iterator();it.hasNext();){
      			News xinwen = it.next();
      			String title = xinwen.getTitle();
      			String time = xinwen.getPublishtime().substring(0, 10);
      			int id =  xinwen.getId();
      			
      	%>
        <div class=" fl" style="width:240px;text-overflow:ellipsis; white-space:nowrap; overflow:hidden;"><a href="xinxi/jtxx.jsp?classify=xwbd&id=<%=id%>">�� <%=title %> </a></div>
		<div class=" fl" style="width:100px;margin-left:5px;"><%= time %></div>
		<%
      		}
		%>	
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
          <a href="#">������ѧר���о�</a>
        </div>
        <div class="fl" style="width:170px;margin-left:30px;text-align:center;">
          <img src="images/rdgz2.gif"/><br>
          <a href="#">�������������˼���еĲ���</a>
        </div>
        <div class="fl" style="padding-top:5px;margin-left:30px;text-align:center;">
          <img src="images/rdgz3.gif"/><br>
         	<a href="#">�����ѧר���о�</a>
        </div>
      </div>
      <div class=" fl fontColor1" style="width:370px;height:180px;">
      	<div style="margin-left:0px;"><img src="images/cgzs.gif" border="0" usemap="#Map13">
          <map name="Map13">
            <area shape="rect" coords="316,8,360,29" href="#">
          </map>
      	</div>
        <div style="padding-left:10px;line-height:1.8;">
        	<a href="#">>>����ѧ�ڶ�ʮ���ͷ�����ѧ�е�������λ�о�<
			/a><br>
					<a href="#">>>����ѧ�ڶ�ʮ���ͷ�����ѧ�е�������λ�о�</a><br>
					<a href="#">>>����ѧ�ڶ�ʮ���ͷ�����ѧ�е�������λ�о�</a><br>
					<a href="#">>>����ѧ�ڶ�ʮ���ͷ�����ѧ�е�������λ�о�</a><br>
					<a href="#">>>����ѧ�ڶ�ʮ���ͷ�����ѧ�е�������λ�о�</a><br>
        </div>
      </div>
      <div class=" fl fontColor1" style="width:220px;height:180px;">
      	<div style="margin-left:0px;"><img src="images/xsyd.gif" border="0" usemap="#Map14">
          <map name="Map14">
            <area shape="rect" coords="158,10,202,31" href="#">
          </map>
      	</div>
        <div style="padding-left:10px;line-height:1.8;">
        	<a href="#">>>ѧ����Ʒ</a><br>
					<a href="#">>>��������һ�ڻ</a><br>
					<a href="#">>>˶��ѧ���»</a><br>
					<a href="#">>>ѧ����Ʒ</a><br>
					<a href="#">>>��ѧϵѧ���</a><br>
        </div>
      </div>
    </div>
	</div>
  
  <div id="root" style="width:1181px;height:187px;z-index:-1;background:url(images/root.gif);">
  </div>
</div>
</body>
</html>