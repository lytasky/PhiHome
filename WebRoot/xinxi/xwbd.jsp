<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ include file="../admin/news/conn.jspf" %>
<%   
  sta = conn.createStatement();  //����Statement����      
  
  	int intPageSize; //һҳ��ʾ�ļ�¼��
	int intRowCount; //��¼����
	int intPageCount; //��ҳ��
	int intPage; //����ʾҳ��
	int layer;
	int idlayer;
	idlayer=1;
	String outtext;
	outtext="";
	String strPage;
	int j;
	int i;
	//����һҳ��ʾ�ļ�¼��
	intPageSize = 5;
	
	//ȡ�ô���ʾҳ��
	strPage = request.getParameter("page");
	if(strPage==null){//������QueryString��û��page��һ����������ʱ��ʾ��һҳ����
	  intPage = 1;
	}
	else{//���ַ���ת��������
	  intPage = java.lang.Integer.parseInt(strPage);
	  if(intPage<1) intPage = 1;
	}
  
  //String classify = request.getParameter("classify");
  //System.out.println(classify);

  String sql = "select * from xwbd order by id desc";    //ִ��SQL���
  ResultSet result = sta.executeQuery(sql);
      
	result.last();   //��ȡ��¼����
	intRowCount = result.getRow();
    intPageCount = (intRowCount+intPageSize-1) / intPageSize;   //������ҳ��
	if(intPage>intPageCount){intPage = intPageCount;}	//��������ʾ��ҳ��
%>
<!doctype html>
<html lang="en">
<head>
<title>���ű���</title>
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
  	<a href="http://www.zju.edu.cn">�㽭��ѧ</a>&nbsp;|
    <a href="../index.jsp">����</a>&nbsp;|
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
    <div style="text-align:center;line-height:30px;height:30px;background:url(../images/colomnBack2.gif);">
      <div style="width:195px;height:30px;align:center;" class="fl">
			<span class="menuOn" id="mod0">
			<a href="../index.jsp" class="white-font "> ��ҳ</a></span>
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
<a href="../jianjie/xygk.jsp"> ѧԺ�ſ�</a>|
<a href="../jianjie/szll.jsp">ʦ������</a>

	</div>
  <div class="slidingList" id="slidingList2" style="height:30px;float:left;margin-left:349px;display:none;background:#0f0f0f;padding-top:5px;">
  	>>

<a href="../xinxi/tzgg.jsp"> ֪ͨ����</a>|

<a href="../xinxi/xwbd.jsp">���ű���</a>
		
	</div>
  <div class="slidingList" id="slidingList3" style="height:30px;float:left;margin-left:445px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../kecheng/pyfa.jsp"> ��������</a>|
			<a href="../kecheng/bkkc.jsp">���ƿγ�</a>
      |
			<a href="../kecheng/sbkc.jsp">˶���γ�</a>
      |
			<a href="../kecheng/xqkb.jsp">ѧ�ڿα�</a>
      |
			<a href="../kecheng/kczl.jsp">�γ�����</a>
		
	</div>
  <div class="slidingList" id="slidingList4" style="height:30px;float:left;margin-left:541px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../zhaosheng/zsxx.jsp"> ������Ϣ</a>
			|
			<a href="../zhaosheng/lnzt.jsp">��������</a>
      |
			<a href="../zhaosheng/zszx.jsp">������ѯ</a>
		
	</div>
  <div class="slidingList" id="slidingList5" style="height:30px;float:left;margin-left:637px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../chengguo/kycg.jsp"> ���гɹ�</a>
			|
			<a href="../chengguo/jxcg.jsp">��ѧ�ɹ�</a>
      |
			<a href="../chengguo/kyxm.jsp">������Ŀ</a>
      |
			<a href="../chengguo/hjxx.jsp">����Ϣ</a>
		
	</div>
  <div class="slidingList" id="slidingList6" style="height:30px;float:left;margin-left:733px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../xuesheng/xsml.jsp"> ѧ����¼</a>
			|
			<a href="../xuesheng/xshd.jsp">ѧ���</a>
      |
			<a href="../xuesheng/xszp.jsp">ѧ����Ʒ</a>
		
	</div>
  <div class="slidingList" id="slidingList7" style="height:30px;float:left;margin-left:780px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../uselogin.jsp"> �γ�����</a>
			|
			<a href="../uselogin.jsp">�����</a>
      |
			<a href="../uselogin.jsp">��ѧɳ��</a>
		
	</div>
  <div class="slidingList" id="slidingList8" style="height:30px;float:left;margin-left:870px;display:none;background:#0f0f0f;padding-top:5px;">
			>>
			<a href="../gushi/zxqw.jsp"> ��ѧȤ��</a>
			|
			<a href="../gushi/xygs.jsp">У԰����</a>
      |
			<a href="../gushi/xyfc.jsp">У�ѷ��</a>
		
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

	<div id="main-content" class="gray-border" style="margin-top:50px;margin-left:58px;width:1065px;height:700px;">
		<div id="left-nav" style="width:200px;align:center;padding:0 auto;float:left;font-size:14px;line-height:0.49;float:left;">
     <div class="panel-group" id="accordion" style=""><!--��վ��ͼ-->
  		<div class="panel panel-default">
    		<div class="panel-heading">
      			<h4 class="panel-title">
        		<a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-th-list"></span> ����ͨ��</a>
      			</h4>
    		</div>
    		<div id="collapseOne" class="panel-collapse collapse in">
      			<div class="panel-body" style="display:block;">
        			<a href="../xinxi/tzgg.jsp" style="color:#000;" class="panel-item">֪ͨ����</a>
      			</div>
      			<div class="panel-body">

        			<a href="../xinxi/xwbd.jsp" style="color:#000;" class="panel-item">���ű���</a>

      			</div>
    		</div>
  		</div> 
	   </div><!-- panel-group -->
     
	</div>

		<div class="gray-border" style="margin-left:15px;width:840px;height:650px;float:right;"><!--��ҳ��ʾ����-->
		<div class="round-border deep-blue" style="height:37px;padding-top:10px;padding-left:15px;font-size:14px;"><!--��ǰλ��-->
         <span style="color:#fff;"><span class="glyphicon glyphicon-hand-right"></span> ��ǰλ�ã�</span>
         <a style="color:#fff;" href="../index.jsp">��ҳ</a>
         <span style="color:#fff;">->����ͨ��</span>	
      <span style="color:#fff;">->���ű���</span>	
		</div>
    
    <div class="gray-border round-border" style="width:840px;height:600px;background-color:#FFF;margin-top:15px;font-size:14px;padding-top:15px;">  

      <% 
   if(intPageCount>0){
   result.absolute((intPage-1) * intPageSize + 1);
   i = 0;
   while(i<intPageSize && !result.isAfterLast()){ 
%>
      <div class="" style="height:25px;line-height:1.5;border-bottom:1px dashed #d3d7da;">

      	<div class="" style="width:600px;float:left;margin-left:25px;letter-spacing:2px;"><a href="jtxx.jsp?classify=xwbd&id=<%=result.getString("id")%>" style="color:#000;"><%=result.getString("title")%></a></div>

        <div class="" style="width:200px;float:right;"><span><%=result.getString("publishtime").substring(0,10)%></span></div>
      </div>
      <%
  result.next();
  i++;
  }
  }
%>
      
      
      <div class="" style="line-height:1.5;width:300px;margin:auto;margin-top:15px;">

      	<a href="xwbd.jsp?classify='xwbd'&page=1">��ҳ</a>
<%if(intPage>1){
%>
<a href="xwbd.jsp?classify='xwbd'&page=<%=intPage-1%>">��һҳ</a>
<%}%>
<%if(intPage<intPageCount)
{%>
<a href="xwbd.jsp?classify='xwbd'&page=<%=intPage+1%>">��һҳ</a>
<%}%>
<a href="xwbd.jsp?classify='xwbd'&page=<%=intPageCount%>">β ҳ</a>

ҳ�Σ�<%=intPage%>/<%=intPageCount%>ҳ <%=intPageSize%>��/ҳ  
      </div>
  	</div>
  </div>
	</div>
  
  <div id="root" style="width:1181px;height:187px;z-index:-1;background:url(../images/root.gif);float:left;">
  </div>
</div>
</body>
</html>