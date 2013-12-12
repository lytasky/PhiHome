package userbean;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Student {
	
	public Student(){}
	
	private int id; 
	private String name ;
	private String password ;
	private String sex ;
	private String studentID ;
	private String email ;
	private String discipline ;
	private String entryTime ;
	private int degree ;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the sex
	 */
	public String getSex() {
		return sex;
	}
	/**
	 * @param sex the sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}
	/**
	 * @return the studentID
	 */
	public String getStudentID() {
		return studentID;
	}
	/**
	 * @param studentID the studentID to set
	 */
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the discipline
	 */
	public String getDiscipline() {
		return discipline;
	}
	/**
	 * @param discipline the discipline to set
	 */
	public void setDiscipline(String discipline) {
		this.discipline = discipline;
	}
	/**
	 * @return the entryTime
	 */
	public String getEntryTime() {
		return entryTime;
	}
	/**
	 * @param entryTime the entryTime to set
	 */
	public void setEntryTime(String entryTime) {
		this.entryTime = entryTime;
	}
	/**
	 * @return the degree
	 */
	public int getDegree() {
		return degree;
	}
	/**
	 * @param degree the degree to set
	 */
	public void setDegree(int degree) {
		this.degree = degree;
	}
	
	public void initFromR(ResultSet rs)
	{
		try {
			setName(rs.getString("name"));
			setPassword(rs.getString("password"));
			setStudentID(rs.getString("studentID"));
			setSex(rs.getString("sex").equals("1") ? "��" : "Ů");
			setDiscipline(rs.getString("discipline"));
			setDegree(rs.getInt("degree"));
			setEntryTime(rs.getString("entryTime"));
			setEmail(rs.getString("email"));
			setId(rs.getInt("id"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
