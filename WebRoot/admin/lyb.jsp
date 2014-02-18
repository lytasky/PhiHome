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
	intPageSize = 10;
	
	//取得待显示页码
	strPage = request.getParameter("page");
	if(strPage==null){//表明在QueryString中没有page这一个参数，此时显示第一页数据
	  intPage = 1;
	}
	else{//将字符串转换成整型
	  intPage = java.lang.Integer.parseInt(strPage);
	  if(intPage<1) intPage = 1;
	}
  
  String sql = "select * from vlyb order by id desc";    //执行SQL语句
  ResultSet result = sta.executeQuery(sql);
      
	result.last();   //获取记录总数
	intRowCount = result.getRow();
    intPageCount = (intRowCount+intPageSize-1) / intPageSize;   //记算总页数
	if(intPage>intPageCount){intPage = intPageCount;}	//调整待显示的页码
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/main.css" rel="stylesheet" type="text/css" media="all"> 
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
          
          <td width="699" align="center" valign="top"><hr>
            <table width="540" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><a href="lyb.jsp">首页</a> - <a href="leave.jsp">注销</a>
                <hr></td>
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
<td width="384" height="100%" align="center" valign="top" bgcolor="#FFFFFF"><table width="530" height="174" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="105" height="142" align="center" valign="top">
	  <table width="105" border="0" cellpadding="3" cellspacing="0">
	    <tr>
	      <td align="left" valign="bottom">邮箱:</br><%=result.getString("mail")%></td>
	      </tr>
	    <tr>
	      <td align="left" valign="bottom">IP:<%=result.getString("ip")%></td>
	      </tr>
	    <tr>
	      <td align="center" valign="top"><%if("no".equals(result.getString("pb"))){
		      out.print("<a href='pb.jsp?id="+result.getString("id")+"&page="+intPage+"'>屏蔽</a> | <span class='STYLE8'>显示</span>");
			}else{
			  out.print("<a href='npb.jsp?id="+result.getString("id")+"&page="+intPage+"'>显示</a> | <span class='STYLE8'>屏蔽</span>");
			}%>
	        <br>
	        <a href="lyreedit.jsp?id=<%=result.getString("id")%>&page=<%=intPage%>">回复</a> | <a href="lydel.jsp?id=<%=result.getString("id")%>&page=<%=intPage%>">删除</a></td>
	  </tr></table>
	</td>
    <td width="363" align="left" valign="top"><table width="425" border="1" cellpadding="5" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
      <tr>
        <td width="409" height="28" align="left">
		<%
		String re = result.getString("re");
		%>
          <hr></td>
      </tr>
      <tr>
        <td align="left" valign="top">
		<strong>标题：</strong><%=result.getString("title")%>留言时间：<%=result.getString("time")%>〗<br>
		<strong>内容：</strong>
          <%=result.getString("body")%>
		  <br>
		 <%if(!re.equals("")){%><strong>回复：</strong><%=result.getString("re")%><br><%}%>
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
<td width="535" align="right"><a href="lyb.jsp?page=1">首页</a>
<%if(intPage>1){
%>
<a href="lyb.jsp?page=<%=intPage-1%>">上一页</a>
<%}%>
<%if(intPage<intPageCount)
{%>
<a href="lyb.jsp?page=<%=intPage+1%>">下一页</a>
<%}%>
<a href="lyb.jsp?page=<%=intPageCount%>">尾 页</a>
页次：<%=intPage%>/<%=intPageCount%>页 <%=intPageSize%>条/页  
</td>
</tr>
</table>
          </td>
        </tr>
      </table>
	  <%@ include file="end.jsp" %>
    
</body>
</html>
