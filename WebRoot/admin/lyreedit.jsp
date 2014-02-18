<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<<<<<<< HEAD
=======

>>>>>>> 4a3d6a56f4ec35fd9be283334d594ae00938fc66
<% 
  request.setCharacterEncoding("gb2312");
  String id = request.getParameter("id"); 
  String apage = request.getParameter("page");  
%>
<%@ include file="conn.jspf" %>
<%
  sta = conn.createStatement();  //创建Statement对象    
  String sql = "select * from vlyb where id="+id;    //执行SQL语句
  ResultSet result = sta.executeQuery(sql);  
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/main.css" rel="stylesheet" type="text/css" media="all"> 
<title>留言板</title>
</head>

<body>

      <table width="700" height="283" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="540" align="center" valign="top"><table width="540" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><hr>                
              <a href="lyb.jsp">首页</a> - <a href="pwdedit.jsp">修改密码</a>
                  - 
                  <a href="leave.jsp">注销</a>
                  <hr></td>
            </tr>
          </table>
            <table width="540" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center" valign="top">
				<%while (result.next()){%>
				<form name="form1" method="post" action="doedit.jsp" >
            <table width="500" border="0" cellspacing="0" cellpadding="2">
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><label>标题:
                    <%=result.getString("title")%>
                    <input type="hidden" name="id" value="<%=id%>">
                </label></td>
              </tr>
              <tr>
                <td><label>邮箱:
                    <%=result.getString("mail")%>
                </label></td>
              </tr>            
              <tr>
                <td><p>留言内容:<br>
                  <label></label>
                  <%=result.getString("body")%>
                </p>                  </td>
              </tr>
              <tr>
                <td><label>回复:<br>
                    
                    <textarea name="re" cols="60" rows="4"><%=result.getString("re")%></textarea>
                    <input type="hidden" name="page" value="<%=apage%>">
                </label></td>
              </tr>
              <tr>
                <td><label>
                  <input type="submit" name="Submit" value="提交">
                </label></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table>
                  </form><%}%></td>
              </tr>
            </table></td>
        </tr>
      </table>
	  <%@ include file="end.jsp" %>
   

</body>
</html>
