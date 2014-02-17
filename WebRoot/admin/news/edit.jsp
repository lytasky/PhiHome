<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<%@ include file="conn.jspf" %>
<% 
sta = conn.createStatement();
  request.setCharacterEncoding("gb2312");
  String classify = request.getParameter("classify");
  String id=request.getParameter("id");
  String sql = "select * from "+classify+" where id="+id;
  ResultSet result = sta.executeQuery(sql);
  result.absolute(1);
  System.out.println(result.getString("title"));
  //String classify = "tzgg";
  //String content="src";
%>
<!doctype html>
<html lang="en">
<head>
<title>header</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../../css/main.css" rel="stylesheet" type="text/css" media="all"> 
<title>留言板</title>
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
<script src="../../js/jquery.js"></script>
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

  
	<div style="height:500px;width:1180px;margin-top:50px;padding-left:50px;font-family:'微软雅黑';" >
  	
    <div id="jive-flatpage" style="margin:15px auto;width:1000px;padding-left:0px;">
			<div id="jive-message-holder">
				<div class="jive-message-list">									

											<form name="form1" method="post" action="doedit.jsp?classify=<%=classify %>&id=<%=id %>" onSubmit="return check_form(this)">
												<input type="hidden" name="action" value="post" />
												<div class="col-md-10 " style="margin-top:10px;">
													<div class="fl">标题：
                        	</div>
                        	<div class="fl" style="margin-top:-5px;"><input type="text" id="title" name="title" class="form-control" style="width:600px;">
                          	<script type="text/javascript">
                          		function changeTitle(){
                          			var title=document.getElementById("title");
                          			var a='<%=result.getString("title")%>';
                          			title.value=a;
                          			//alert(a);
                          		}
                          		changeTitle();
                          		
                          		//SetContents();
                          	</script>
                          </div>
												</div>
                        <div class="col-md-10 " style="margin-top:10px;">
													<div class="fl">来源：
                        	</div>
                        	<div class="fl" style="margin-top:-5px;">
                          	<select class="selectpicker" name="classify" id="classify" value=" <%=result.getString("newsfrom") %>">
  <option value ="本站">本站</option>
  <option value="外国哲学研究所">外国哲学研究所</option>
  <option value="中国思想文化研究所">中国思想文化研究所</option>
  <option value="宗教学研究所">宗教学研究所</option>
  <option value="科技与社会发展研究所">科技与社会发展研究所</option>
  <option value="逻辑与认知研究所">逻辑与认知研究所</option>
  <option value="亚太休闲教育研究中心">亚太休闲教育研究中心</option>
                            </select>
                          </div>
												</div>
												<div class="col-md-10" style="margin-top:10px;width:900px;">
													<div class="fl" style="width:40px;">内容：
                          </div>
								<div class="fl gray-border" style="margin-left:0px;width:800px;">
									<textarea cols="80" id="content" name="content">
      <%=result.getString("content") %><%System.out.println(result.getString("content")); %></textarea> <script type="text/javascript">
      	CKEDITOR.replace('content',{filebrowserUploadUrl : '../../ckeditor/uploader?Type=File',
filebrowserImageUploadUrl : '../../ckeditor/uploader?Type=Image',
filebrowserFlashUploadUrl : '../../ckeditor/uploader?Type=Flash'
      	});
</script>
													</div>
                        <br>
												</div>
                        <div class="col-md-10 " style="margin-top:10px;">
													
                          <div class="fl" style="margin-left:40px;">
                            <button class="btn btn-primary" type="submit" style="width:120px;" name="Submit">发表</button>
                          </div>
                          
												</div>
                        
											</form>
								
								</div>
			</div>
		</div>
	</div>
  

</body>
</html>





