package userbean;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User {

	//标准构造函数
	public User(){ }
	
	//成员变量
	//必须填写部分
	private int id;
	private String username;
	private String password;
	private String email;
	//选择填写部分
	private String sex;
	
	
	
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
	
	public String getEmail() {                      //电子邮件
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	//选择填写部分
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
		
	
	public String getsex() {                        //性别
		return sex;
	}
	public void setsex(String sex) {
		this.sex = sex;
	}
	public void initFromR(ResultSet rs) {
		try {
			
			setUsername(rs.getString("name"));
			setPassword(rs.getString("password"));
			setSex(rs.getString("sex").equals("0") ? "男" : "女");
			setEmail(rs.getString("email"));
			setId(rs.getInt("id"));
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}



}
