<!doctype html>
<html lang="en">
<head>
<title>header</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="js/juery.js"></script>
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
		var mod=document.getElementById("mod"+modk);
		var col=document.getElementById("slidingList"+modk);
		for(var i=1;i<=9;i++){
			var itemList=document.getElementById("slidingList"+i);
			var colList=document.getElementById("mod"+i);
			itemList.style.display="none";
			colList.style.backgroundColor="";
		}
		mod.style.backgroundColor="#030303";
		col.style.display="inline";
	}

</script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css">
<link rel="stylesheet" href="css/diy.css" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
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
          <a href="#">�����ѧ�о���</a><br>
					<a href="#">�й�˼���Ļ��о���</a><br>
					<a href="#">�ڽ�ѧ�о���</a><br>
					<a href="#">�Ƽ�����ᷢչ�о���</a><br>
					<a href="#">�߼�����֪�о���</a><br>
          <a href="#">��̫���н����о�����</a>
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
          	<a href="#">�����Ƽ���ѧ</a><br>
            <a href="#">��������ѧ</a><br>
            <a href="#">��Ȼ��֤�� </a>&nbsp;&nbsp;
            <a href="#"> �߼�ѧ</a><br>
            <a href="#">�����ѧ</a>
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
<div style="width:20px;margin-right:65px;" class="fr"><a href="#">������ŵ�����</a></div>
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
						<li><a href="." style="line-height:1.8;">&nbsp;&nbsp;�㽭��ѧ��վ</a>
							<ul>
								<li><a href="/">Sub category 1a</a></li>
								<li><a href="/">Sub category 1b</a></li>
								<li><a href="/">Sub category 1c</a></li>
								<li><a href="/">Sub category 1d</a></li>
							</ul>
						</li><br>
						<li><a href="." style="line-height:1.8;">&nbsp;&nbsp;���������վ</a>
					<ul>

					<li><a href="/">Sub category 2a</a></li>
					<li><a href="/">Sub category 2b</a></li>
					<li><a href="/">Sub category 2c</a></li>
					<li><a href="/">Sub category 2d</a></li>
				</ul>
			</li><br>
			<li><a href="." style="line-height:1.8;">&nbsp;&nbsp;���������վ</a>

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
        <a href="#">>>"��Ϫ��ѧ�Ի�"��23�ڶԻ�</a><br>
        <a href="#">>>"��Ϫ��ѧ�Ի�"��22�ڶԻ�</a><br>
        <a href="#">>>"��Ϫ��ѧ�Ի�"��21�ڶԻ�</a><br>
        <a href="#">>>"��Ϫ��ѧ�Ի�"��20�ڶԻ�</a><br>
        <a href="#">>>"��Ϫ��ѧ�Ի�"��19�ڶԻ�</a><br>
      </div>
      <div class="g fl" style="width:220px;height:250px;line-height:1.8;padding-left:15px;">
      	<div style="margin-left:-15px;"><img src="images/zxydxhead.gif" border="0" usemap="#Map2">
          <map name="Map2">
            <area shape="rect" coords="168,11,207,31" href="#">
          </map>
      	</div>
      	<img src="images/zxydx.gif"/><br>
        <a href="#">>>"��ѧ���ѧ"��23�ڱ���</a><br>
        <a href="#">>>"��ѧ���ѧ"��22�ڱ���</a><br>
        <a href="#">>>"��ѧ���ѧ"��21�ڱ���</a><br>
        <a href="#">>>"��ѧ���ѧ"��20�ڱ���</a><br>
        <a href="#">>>"��ѧ���ѧ"��19�ڱ���</a>
      </div>
      <div class=" fl" style="width:220px;height:250px;line-height:1.8;padding-left:15px;">
      	<div style="margin-left:-15px;"><img src="images/zxqwhead.gif" border="0" usemap="#Map3">
          <map name="Map3">
            <area shape="rect" coords="171,8,211,30" href="#">
          </map>
      	</div>
        <a href="#">>>���¸���Ĺ���</a><br>
        <a href="#">>>�ո����������ͼ�Ĺ���</a><br>
        <a href="#">>>������Ů��ѧ��</a><br>
        <a href="#">>>�����ǵĹ���</a><br>
        <a href="#">>>������˹׷�����ڹ�</a><br>
        <a href="#">>>Ѧ���̵�è</a><br>
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
      	<a href="#">�� "��Ϫ��ѧ�Ի�"�ڶ�ʮ���λ֪ͨ</a><br>
				<a href="#">�� �����޵�������ѧ�������۹��͹�����</a><br>
				<a href="#">�� �������ɴ�ѧ��ʿ��ѧ����Ŀ--���У</a><br>
				<a href="#">�� ����˹�ٴ�ѧ������?����ؽ���ѧ��</a><br>
				<a href="#">�� "��Ϫ��ѧ�Ի�"�ڶ�ʮ���λ֪ͨ</a><br>
				<a href="#">�� ������������ѧ������̳��2013���＾��</a><br>
				<a href="#">�� "��Ϫ��ѧ�Ի�"�ڶ�ʮһ�λ֪ͨ</a><br>
				<a href="#">�� ��������ţ���ѧ��Ӣ����У��ѧ�о���</a><br>
				<a href="#">�� "��Ϫ��ѧ�Ի�"�ڶ�ʮ�λ֪ͨ</a><br>
				<a href="#">�� ����2012��ȱ�������������ѧ��Ĺ�</a><br>
        <a href="#">�� "��Ϫ��ѧ�Ի�"��ʮ�Ŵλ֪ͨ  </a><br>
				<a href="#">�� ��������ţ���ѧ��Ӣ����У��ѧ��   </a><br>
        <a href="#">�� "��Ϫ��ѧ�Ի�"��ʮ�˴λ֪ͨ  </a><br>
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
      	<a href="#">�� "��Ϫ��ѧ�Ի�"�ڶ�ʮ�Ĵλ֪ͨ  </a><br>
				<a href="#">�� "��Ϫ��ѧ�Ի�"�ڶ�ʮ���λ֪ͨ  </a><br>
				<a href="#">�� �����޵�������ѧ�������۹������Ρ�  </a><br>
				<a href="#">�� �������ɴ�ѧ��ʿ��ѧ����Ŀ--�㽭��  </a><br>
				<a href="#">�� ����˹�ٴ�ѧ������?����ؽ���ѧ��   </a><br>
				<a href="#">�� "��Ϫ��ѧ�Ի�"�ڶ�ʮ���λ֪ͨ  </a><br>
				<a href="#">�� ������������ѧ������̳��2013�ꡭ  </a><br>
				<a href="#">�� "��Ϫ��ѧ�Ի�"�ڶ�ʮһ�λ֪ͨ  </a><br>
				<a href="#">�� ��������ţ���ѧ��Ӣ����У��ѧ�С� </a><br>
				<a href="#">�� "��Ϫ��ѧ�Ի�"�ڶ�ʮ�λ֪ͨ    </a><br>
				<a href="#">�� ����2012��ȱ�������������ѧ��   </a><br>
				<a href="#">�� "��Ϫ��ѧ�Ի�"�ڶ�ʮһ�λ֪ͨ  </a><br>
				<a href="#">�� ��������ţ���ѧ��Ӣ����У��ѧ��   </a><br>
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
        	<a href="#">>>����ѧ�ڶ�ʮ���ͷ�����ѧ�е�������λ�о�</a><br>
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