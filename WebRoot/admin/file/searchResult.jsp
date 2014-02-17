<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ include file="conn.jspf" %>
<%   
  sta = conn.createStatement();  //创建Statement对象      
  
  	int intPageSize; //一页显示的记录数
	int intRowCount; //记录总数
	int intPageCount; //总页数
	int intPage; //待显示页码
	int layer;
	int idlayer;
	idlayer=1;
	String outtext;
	outtext="";
	String strPage;
	int j;
	int i;
	//设置一页显示的记录数
	intPageSize = 5;
	
	//取得待显示页码
	strPage = request.getParameter("page");
	if(strPage==null){//表明在QueryString中没有page这一个参数，此时显示第一页数据
	  intPage = 1;
	}
	else{//将字符串转换成整型
	  intPage = java.lang.Integer.parseInt(strPage);
	  if(intPage<1) intPage = 1;
	}
  
  String classify = request.getParameter("classify");
  System.out.println(classify);
  String keyword = request.getParameter("keyword");
  String sql = "select * from file where classify="+classify+" and title like '%" + keyword + "%' order by id desc";    //执行SQL语句
  ResultSet result = sta.executeQuery(sql);
      
	result.last();   //获取记录总数
	intRowCount = result.getRow();
    intPageCount = (intRowCount+intPageSize-1) / intPageSize;   //记算总页数
	if(intPage>intPageCount){intPage = intPageCount;}	//调整待显示的页码
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../../css/main.css" rel="stylesheet" type="text/css" media="all"> 
<title>留言板</title>
<style type="text/css">
<!--
.STYLE8 {color: #CCCCCC}
-->
</style>
</head>

<body>

    <table width="699" height="283" border="0" cellpadding="0" cellspacing="0">
        <tr>
          
          <td width="699" align="center" valign="top">
          <div align="center">
					<form action="searchResult.jsp?classify=<%=classify%>" method="post">
					<div class="row" style="margin:5px auto;width:250px;">
  					<div class="col-md-12">
    					<div class="input-group input-group-sm">
      					<input type="text" class="form-control" name="keyword">
      					<span class="input-group-btn">
        					<button class="btn btn-primary" type="submit">搜索</button>
      					</span>
    					</div><!-- /input-group -->
  					</div><!-- /.col-lg-6 -->
					</div><!-- /.row -->
					</form>
				</div>
            <table width="540" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><input type="button" onclick="javascript:window.location.href='add.jsp'" value="上传文件"></input>
                </td>
            </tr>
          </table>
            <table width="540" border="0" cellpadding="0" cellspacing="0">
			<tr><td width="540" align="center" valign="top"><% 
   if(intPageCount>0){
   result.absolute((intPage-1) * intPageSize + 1);
   i = 0;
   while(i<intPageSize && !result.isAfterLast()){ 
%>
<table width="530" height="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFCC">
<tr>
<td width="384" height="100%" align="center" valign="top" bgcolor="#FFFFFF"><table width="530" height="80" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="363" align="left" valign="top"><table width="425" border="1" cellpadding="5" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
      
      <tr>
        <td align="left" valign="top">
		<strong>标题：</strong><%=result.getString("title")%><br>
		<strong>发布时间：</strong>
          <%=result.getString("publishtime").substring(0,10)%>
		  
		<a href="delete.jsp?id=<%=result.getString("id")%>&classify=<%=classify%>">删除  </a>
		</td>
      </tr>
    </table></td>
  </tr>
</table>
  </td>
</tr>
</table>
<%
  result.next();
  i++;
  }
  }
%></td>
			</tr>
</table>
<table width="480" height="28" border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="535" align="right"><a href="display.jsp?classify=<%=classify%>&page=1">首页</a>
<%if(intPage>1){
%>
<a href="display.jsp?classify=<%=classify%>&page=<%=intPage-1%>">上一页</a>
<%}%>
<%if(intPage<intPageCount)
{%>
<a href="display.jsp?classify=<%=classify%>&page=<%=intPage+1%>">下一页</a>
<%}%>
<a href="display.jsp?classify=<%=classify%>&page=<%=intPageCount%>">尾 页</a>
页次：<%=intPage%>/<%=intPageCount%>页 <%=intPageSize%>条/页  
</td>
</tr>
</table>
          </td>
        </tr>
      </table>
	 
    
</body>
</html>
