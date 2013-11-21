<%@ page language="java" contentType="text/html;charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="css/main.css" rel="stylesheet" type="text/css" media="all"> 
<title>留言板</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
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
</head>

<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
	<table width="700" height="283" border="0" cellpadding="0" cellspacing="0">
        <tr>
          </td>
          <td width="540" align="left" valign="top"><table width="540" height="20" border="0" cellpadding="5" cellspacing="0">
            <tr>
              <td><hr>
                <a href="zszx.jsp">首页</a> - <a href="addly.jsp">添加留言</a>
                <hr></td>
            </tr>
          </table>
          <table width="540" height="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="100%" align="center" valign="top">
				<form name="form1" method="post" action="doaddly.jsp" onSubmit="return check_form(this)">
            <table width="500" border="0" cellspacing="0" cellpadding="2">
              <tr>
                <td><label>标题
                    <input name="title" type="text" id="title" size="57">                    
                    <span class="STYLE1">*</span></label></td>
              </tr>
              <tr>
                <td><label>邮箱
                    <input name="mail" type="text" id="Mail" size="30">
                </label></td>
              </tr>
              <tr>
                <td><p>留言内容<br>
                  <label></label>
                  <textarea name="abody" cols="60" rows="8" id="body"></textarea>
                  <span class="STYLE1">*</span></p>                  </td>
              </tr>
              <tr>
                <td><label>
                  <input type="submit" name="Submit" value="提交">
                  <input type="reset" name="Submit2" value="重置">
                </label></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table>
                  </form>
				</td>
              </tr>
            </table></td>
        </tr>
      </table>
	  <%@ include file="end.jsp" %>
    </td>
  </tr>
</table>
</body>
</html>
