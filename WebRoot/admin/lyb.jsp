<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ include file="conn.jspf" %>
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
	intPageSize = 10;
	
	//ȡ�ô���ʾҳ��
	strPage = request.getParameter("page");
	if(strPage==null){//������QueryString��û��page��һ����������ʱ��ʾ��һҳ����
	  intPage = 1;
	}
	else{//���ַ���ת��������
	  intPage = java.lang.Integer.parseInt(strPage);
	  if(intPage<1) intPage = 1;
	}
  
  String sql = "select * from vlyb order by id desc";    //ִ��SQL���
  ResultSet result = sta.executeQuery(sql);
      
	result.last();   //��ȡ��¼����
	intRowCount = result.getRow();
    intPageCount = (intRowCount+intPageSize-1) / intPageSize;   //������ҳ��
	if(intPage>intPageCount){intPage = intPageCount;}	//��������ʾ��ҳ��
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/main.css" rel="stylesheet" type="text/css" media="all"> 
<title>���԰�</title>
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
	      <td align="left" valign="bottom">����:</br><%=result.getString("mail")%></td>
	      </tr>
	    <tr>
	      <td align="left" valign="bottom">IP:<%=result.getString("ip")%></td>
	      </tr>
	    <tr>
	      <td align="center" valign="top"><%if("no".equals(result.getString("pb"))){
		      out.print("<a href='pb.jsp?id="+result.getString("id")+"&page="+intPage+"'>����</a> | <span class='STYLE8'>��ʾ</span>");
			}else{
			  out.print("<a href='npb.jsp?id="+result.getString("id")+"&page="+intPage+"'>��ʾ</a> | <span class='STYLE8'>����</span>");
			}%>
	        <br>
	        <a href="lyreedit.jsp?id=<%=result.getString("id")%>&page=<%=intPage%>">�ظ�</a> | <a href="lydel.jsp?id=<%=result.getString("id")%>&page=<%=intPage%>">ɾ��</a></td>
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
		<strong>���⣺</strong><%=result.getString("title")%>����ʱ�䣺<%=result.getString("time")%>��<br>
		<strong>���ݣ�</strong>
          <%=result.getString("body")%>
		  <br>
		 <%if(!re.equals("")){%><strong>�ظ���</strong><%=result.getString("re")%><br><%}%>
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
<td width="535" align="right"><a href="lyb.jsp?page=1">��ҳ</a>
<%if(intPage>1){
%>
<a href="lyb.jsp?page=<%=intPage-1%>">��һҳ</a>
<%}%>
<%if(intPage<intPageCount)
{%>
<a href="lyb.jsp?page=<%=intPage+1%>">��һҳ</a>
<%}%>
<a href="lyb.jsp?page=<%=intPageCount%>">β ҳ</a>
ҳ�Σ�<%=intPage%>/<%=intPageCount%>ҳ <%=intPageSize%>��/ҳ  
</td>
</tr>
</table>
          </td>
        </tr>
      </table>
    
</body>
</html>
