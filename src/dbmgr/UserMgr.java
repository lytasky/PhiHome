package dbmgr;

import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import userbean.User;

public class UserMgr {
	 //�����������ݿ����������
	DBConMgr db_conn=new DBConMgr(); 
	
	//ͨ���û����ƻ�ȡ�û���Ϣ
	public User get(String username) {
		
		//try {
			//username = new String(username.getBytes("ISO8859-1"), "GB2312");
		//} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		//}
		db_conn.ConnectDB();
		ResultSet rs = null;
		try {
			String sql = "select * from user where name ='"
					+ username + "'";
			//������������
			//sql = new String(sql.getBytes("ISO8859-1"), "GB2312");
			System.out.println(sql);
			rs = db_conn.sm.executeQuery(sql);        // ִ��sql���
			User user = null;
			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(username);
				user.setPassword(rs.getString("password"));
				user.setEmail("email");
				user.setsex(rs.getString("sex"));
				System.out.println("you");
				return user;
			}
			System.out.println("my");
			return user;
		} 
		catch (SQLException SqlE) {
			SqlE.printStackTrace();
			return null;
		} 
		catch (Exception E) {
			E.printStackTrace();
			return null;
		} 
		finally {
			// �ر����ӣ��ͷ����ݿ���Դ��
			db_conn.CloseDB();
		}
	}
	

    //���ע���û�
	public int add(User user) {
		db_conn.ConnectDB();	
		try {
			
			String sql = "insert into user(id,name,password,email,sex) values(null,'" + user.getUsername()
					+ "','" + user.getPassword() + "','" + user.getEmail() 
					+ "','"  + user.getsex()  				
					+ "')";
			//������������
			sql = new String(sql.getBytes("ISO8859-1"), "GB2312");
			//System.out.println(sql);
			int i = db_conn.sm.executeUpdate(sql); // ִ��sql���
			return i;
		} 
		catch (SQLException SqlE){
			SqlE.printStackTrace();
			return -1;
		} 
		catch (Exception E) {
			E.printStackTrace();
			return -2;
		} 
		finally {
			// �ر����ӣ��ͷ����ݿ���Դ��
			db_conn.CloseDB();
		}
	}
	
	public User getName(String username) {//admin
		System.out.println("userMgr  "+username);
		db_conn.ConnectDB();
		ResultSet rs = null;
		try {
			String sql = "select * from adminUse where name ='"
					+ username + "'";
			//������������
			//sql = new String(sql.getBytes("ISO8859-1"), "GB2312");
			System.out.println(sql);
			rs = db_conn.sm.executeQuery(sql);        // ִ��sql���
			User user = null;
			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(username);
				user.setPassword(rs.getString("password"));
				System.out.println("you");
				return user;
			}
			System.out.println("my adm");
			return user;
		} 
		catch (SQLException SqlE) {
			SqlE.printStackTrace();
			return null;
		} 
		catch (Exception E) {
			E.printStackTrace();
			return null;
		} 
		finally {
			// �ر����ӣ��ͷ����ݿ���Դ��
			db_conn.CloseDB();
		}
	}
	

}

	

	