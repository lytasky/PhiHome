<%@ page language="java" contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ include file="conn.jspf" %>
<%
	sta = conn.createStatement();  //����Statement���� 
	request.setCharacterEncoding("gb2312");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String sql="select * from user where name='"+name+"'";
	ResultSet result = sta.executeQuery(sql);
	result.last();
	int num = result.getRow();
	if(num<=0){
		//û�и��û�
		out.print("�û��������ڣ�<a href='index.jsp'>���ص�½����</a>��");	
	}else{
		//�и��û����˶�����
		if(pwd.equals(result.getString("pwd"))){
			//ͨ��
			session.setAttribute("login","passed");
			response.sendRedirect("lyb.jsp");
		}else{
			//�������
			out.print("�������<a href='index.jsp'>���ص�½����</a>��");
		}
	}
%>
<%
    sta.close();
    conn.close();
%>