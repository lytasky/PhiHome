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
  
  String classify = request.getParameter("classify");
  //System.out.println(classify);
  String sql = "select * from file where classify="+classify+"order by id desc";    //ִ��SQL���
  ResultSet result = sta.executeQuery(sql);
      
	result.last();   //��ȡ��¼����
	intRowCount = result.getRow();
    intPageCount = (intRowCount+intPageSize-1) / intPageSize;   //������ҳ��
	if(intPage>intPageCount){intPage = intPageCount;}	//��������ʾ��ҳ��
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../../css/main.css" rel="stylesheet" type="text/css" media="all"> 
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
          
          <td width="699" align="center" valign="top">
            <table width="540" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><input type="button" onclick="javascript:window.location.href='add.jsp'" value="�ϴ��ļ�"></input>
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
		<strong>���⣺</strong><%=result.getString("title")%><br>
		<strong>���ݣ�</strong>
          <%=result.getString("content")%>
		  
		<a href="delete.jsp?id=<%=result.getString("id")%>&classify=<%=classify%>">ɾ��  </a>
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
<td width="535" align="right"><a href="display.jsp?classify=<%=classify%>&page=1">��ҳ</a>
<%if(intPage>1){
%>
<a href="display.jsp?classify=<%=classify%>&page=<%=intPage-1%>">��һҳ</a>
<%}%>
<%if(intPage<intPageCount)
{%>
<a href="display.jsp?classify=<%=classify%>&page=<%=intPage+1%>">��һҳ</a>
<%}%>
<a href="display.jsp?classify=<%=classify%>&page=<%=intPageCount%>">β ҳ</a>
ҳ�Σ�<%=intPage%>/<%=intPageCount%>ҳ <%=intPageSize%>��/ҳ  
</td>
</tr>
</table>
          </td>
        </tr>
      </table>
	 
    
</body>
</html>
