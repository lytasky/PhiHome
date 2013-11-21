<%@ page language="java" contentType="text/html;charset=gb2312" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/main.css" rel="stylesheet" type="text/css" media="all"> 
<title>留言板</title>
</head>

<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" height="100%" align="center" valign="middle"><table width="280" height="70" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="75" align="center" valign="middle"><img src="../images/banzhu.gif" width="48" height="48"></td>
          <td width="205"><form name="form1" method="post" action="login.jsp">
            <table width="205" height="75" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="205" height="25" valign="middle"><label>帐号
                    <input type="text" name="name">
                </label></td>
              </tr>
              <tr>
                <td height="25" valign="middle"><label>密码
                    <input type="password" name="pwd">
                </label></td>
              </tr>
              <tr>
                <td height="25"><label>
                  <input type="submit" name="Submit" value="提交">
                </label></td>
              </tr>
            </table>
          </form></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
