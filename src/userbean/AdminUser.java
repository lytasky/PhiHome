package userbean;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminUser {

	//��׼���캯��
	public AdminUser(){ }
	
	//��Ա����
	//������д����
	private int id;
	private String username;
	private String password;

	//��Ա����
	//������д����
	public int getId() {                            //�û���ϢID
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getUsername() {                   //�û�����
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {                   //��½����
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
