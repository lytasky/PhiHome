package userbean;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User {

	//��׼���캯��
	public User(){ }
	
	//��Ա����
	//������д����
	private int id;
	private String username;
	private String password;
	private String email;
	//ѡ����д����
	private String sex;
	
	
	
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
	
	public String getEmail() {                      //�����ʼ�
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	//ѡ����д����
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
		
	
	public String getsex() {                        //�Ա�
		return sex;
	}
	public void setsex(String sex) {
		this.sex = sex;
	}
	public void initFromR(ResultSet rs) {
		try {
			
			setUsername(rs.getString("name"));
			setPassword(rs.getString("password"));
			setSex(rs.getString("sex").equals("0") ? "��" : "Ů");
			setEmail(rs.getString("email"));
			setId(rs.getInt("id"));
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}



}
