package dbmgr;

import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import userbean.User;

public class UserMgr {
	 //创建公用数据库连接类对象
	DBConMgr db_conn=new DBConMgr(); 
	
	//通过用户名称获取用户信息
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
			//中文乱码问题
			//sql = new String(sql.getBytes("ISO8859-1"), "GB2312");
			System.out.println(sql);
			rs = db_conn.sm.executeQuery(sql);        // 执行sql语句
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
			// 关闭连接，释放数据库资源：
			db_conn.CloseDB();
		}
	}
	

    //添加注册用户
	public int add(User user) {
		db_conn.ConnectDB();	
		try {
			
			String sql = "insert into user(id,name,password,email,sex) values(null,'" + user.getUsername()
					+ "','" + user.getPassword() + "','" + user.getEmail() 
					+ "','"  + user.getsex()  				
					+ "')";
			//中文乱码问题
			sql = new String(sql.getBytes("ISO8859-1"), "GB2312");
			//System.out.println(sql);
			int i = db_conn.sm.executeUpdate(sql); // 执行sql语句
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
			// 关闭连接，释放数据库资源：
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
			//中文乱码问题
			//sql = new String(sql.getBytes("ISO8859-1"), "GB2312");
			System.out.println(sql);
			rs = db_conn.sm.executeQuery(sql);        // 执行sql语句
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
			// 关闭连接，释放数据库资源：
			db_conn.CloseDB();
		}
	}
	

}

	

	