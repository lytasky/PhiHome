package userbean;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminUser {

	//标准构造函数
	public AdminUser(){ }
	
	//成员变量
	//必须填写部分
	private int id;
	private String username;
	private String password;

	//成员函数
	//必须填写部分
	public int getId() {                            //用户信息ID
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getUsername() {                   //用户名称
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {                   //登陆密码
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
		
	public void initFromR(ResultSet rs) {
		try {
			
			setUsername(rs.getString("name"));
			setPassword(rs.getString("password"));
			setId(rs.getInt("id"));
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}



}
