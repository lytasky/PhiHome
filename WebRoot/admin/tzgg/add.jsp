<%@ page language="java" contentType="text/html;charset=gb2312" %>
<% String s=request.getParameter("content");System.out.println(s); %>
<!doctype html>
<html lang="en">
<head>
<title>header</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../../css/main.css" rel="stylesheet" type="text/css" media="all"> 
<title>���԰�</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
<script type="text/javascript" src="../../ckeditor/ckeditor.js"></script>
<script language="JavaScript" type="text/JavaScript">
function check_form(theform)
	{
	    var emailReg = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/; 
		if (theform.abody.value=="")
		{
			alert("������д�������ݣ�");
			theform.abody.focus();
			return false;
		}
		
		if (theform.title.value=="")
		{
			alert("������д�������⣡");
			theform.title.focus();
			return false;
		}
		

        if(theform.mail.value!=""){
			if( emailReg.test(theform.mail.value) ){ 
			   return true; 
			}else{ 
			   alert("�������Email��ַ��ʽ����ȷ��"); 
			   theform.mail.focus();
			   return false; 
			} 
		}
	}
</script>
<script src="../../js/juery.js"></script>
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
<link rel="stylesheet" href="../../css/flexslider.css" type="text/css">
<link rel="stylesheet" href="../../css/diy.css" type="text/css">
<link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/jquery-1.10.2.js"></script>
<script src="../../js/jquery.flexslider.js"></script>
<script type="text/javascript" src="../../js/togglemenu.js"></script>
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
  <div id="head" style="background:url(../../images/headBack.gif);height:230px;width:1180px;margin:0 auto;margin-top:0px;" class="fontColor4">
	<div style="height:30px;width:200px;float:right;margin-right:50px;margin-top:40px;" class="fr">
  	<font color="#fff">
  	<a href="#">�㽭��ѧ</a>&nbsp;|
    <a href="#">����</a>&nbsp;|
    <a href="#">English</a></font>
   </div>
	<div class="row fl" style="width:250px;margin-left:915px;">
  		<div class="col-md-10">
    		<div class="input-group input-group-sm">
              	 <input type="text" class="form-control ">
      					<span class="input-group-btn">
        					<button class="btn btn-default " type="button">����</button>
      					</span>
                
    					</div><!-- /input-group -->
  		</div><!-- /.col-lg-6 -->
		</div><!-- /.row -->
	<div id="column" style="margin-top:100px;margin-left:58px;width:1065px;height:30px;float:left;padding-top:-10px;">
    <div style="text-align:center;line-height:30px;height:30px;background:url(../../images/colomnBack2.gif);">
      <div style="width:195px;height:30px;align:center;" class="fl">
			<span class="menuOn" id="mod0">
			<a href="#" class="white-font "> ��ҳ</a></span>
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
			<a href="#" class="white-font">��ѧ��̳</a></span>
      </div>
      <div style="width:96px;height:30;align:center;" id="mod8" class="fl">
			<span class="menuNo" onMouseOver="switchMod(8);">
			<a href="#" target="_blank" class="white-font">��������</a></span>
      </div>
      <div style="width:102px;height:30;align:center;" id="mod9" class="fl">
      <span class="menuNo" onMouseOver="switchMod(9);">
			<a href="#" target="_blank" class="white-font">��Դ����</a></span>
      </div>
      </div>
  </div><!-- column -->
	<div class="slidingList" id="slidingList1" style="color:#fff;text-align:center;padding-top:5px;height:30px;float:left;margin-left:253px;display:;background:#0f0f0f;"><!-- �������б��� -->
		>>
<a href="#"> ѧԺ�ſ�</a>|
<a href="#">ʦ������</a>

	</div>
  <div class="slidingList" id="slidingList2" style="height:30px;float:left;margin-left:349px;display:none;background:#0f0f0f;padding-top:5px;">
  	>>
<a href="#"> ֪ͨ����</a>|
<a href="#">���ű���</a>
		
	</div>
  <div class="slidingList" id="slidingList3" style="height:30px;float:left;margin-left:445px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> ��������</a>|
			<a href="#">���ƿγ�</a>
      |
			<a href="#">˶���γ�</a>
      |
			<a href="#">ѧ�ڿα�</a>
      |
			<a href="#">�γ�����</a>
		
	</div>
  <div class="slidingList" id="slidingList4" style="height:30px;float:left;margin-left:541px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> ������Ϣ</a>
			|
			<a href="#">��������</a>
      |
			<a href="#">������ѯ</a>
		
	</div>
  <div class="slidingList" id="slidingList5" style="height:30px;float:left;margin-left:637px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> ���гɹ�</a>
			|
			<a href="#">��ѧ�ɹ�</a>
      |
			<a href="#">������Ŀ</a>
      |
			<a href="#">����Ϣ</a>
		
	</div>
  <div class="slidingList" id="slidingList6" style="height:30px;float:left;margin-left:733px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> ѧ����¼</a>
			|
			<a href="#">ѧ���</a>
      |
			<a href="#">ѧ����Ʒ</a>
		
	</div>
  <div class="slidingList" id="slidingList7" style="height:30px;float:left;margin-left:780px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> �γ�����</a>
			|
			<a href="#">�����</a>
      |
			<a href="#">��ѧɳ��</a>
		
	</div>
  <div class="slidingList" id="slidingList8" style="height:30px;float:left;margin-left:870px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="#"> ��ѧȤ��</a>
			|
			<a href="#">У԰����</a>
      |
			<a href="#">У�ѷ��</a>
		
	</div>
  <div class="slidingList" id="slidingList9" style="height:30px;float:left;margin-left:921px;display:none;background:#0f0f0f;padding-top:5px;">
  		>>
			<a href="#"> У����վ</a>
			|
			<a href="#">У����Դ</a>
      |
			<a href="#">������Դ</a>
		
	</div><!-- �������б��� -->
</div>
	<div style="height:500px;width:1180px;margin-top:50px;padding-left:50px;font-family:'΢���ź�';" >
  	
    <div id="jive-flatpage" style="margin:15px auto;width:1000px;padding-left:0px;">
			<div id="jive-message-holder">
				<div class="jive-message-list">									

											<form name="form1" method="post" action="doaddly.jsp" onSubmit="return check_form(this)">
												<input type="hidden" name="action" value="post" />
												<div class="col-md-10 " style="margin-top:10px;">
													<div class="fl">���⣺
                        	</div>
                        	<div class="fl" style="margin-top:-5px;"><input type="text" id="title" name="title" class="form-control" style="width:600px;">
                          </div>
												</div>
												<div class="col-md-10" style="margin-top:10px;width:900px;">
													<div class="fl" style="width:40px;">���ݣ�
                          </div>
													<div class="fl gray-border" style="margin-left:0px;width:800px;"><textarea cols="80" id="content" name="content">
      </textarea> <script type="text/javascript">
      	CKEDITOR.replace('content',{filebrowserUploadUrl : 'ckeditor/uploader?Type=File',
filebrowserImageUploadUrl : 'ckeditor/uploader?Type=Image',
filebrowserFlashUploadUrl : 'ckeditor/uploader?Type=Flash'
      	});
</script>
													</div>
                        <br>
												</div>
                        <div class="col-md-10 " style="margin-top:10px;">
													
                          <div class="fl" style="margin-left:40px;">
                            <button class="btn btn-primary" type="submit" style="width:120px;" name="Submit">����</button>
                          </div>
                          
												</div>
                        
											</form>
								
								</div>
			</div>
		</div>
	</div>
  <div id="root" style="margin-top:15px;width:1181px;height:187px;z-index:-1;background:url(../../images/root.gif);">
  </div>
</div>
</body>
</html>





