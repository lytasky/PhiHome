package dbmgr;

import java.sql.ResultSet;
import java.sql.SQLException;

import userbean.AdminUser;
import userbean.Student;
import userbean.Teacher;

public class UserMgr {
	 //�����������ݿ����������
	DBConMgr db_conn=new DBConMgr(); 
	
	//ͨ��ѧ�Ż�ȡѧ����Ϣ
	public Student getByStudentId(String studentID)
	{
		db_conn.ConnectDB();
		ResultSet rs = null;
		try {
			String sql = "select * from student where studentID ='"
					+ studentID + "'";
			//������������
			//sql = new String(sql.getBytes("ISO8859-1"), "GB2312");
			System.out.println(sql);
			rs = db_conn.sm.executeQuery(sql);        // ִ��sql���
			Student student = null;
			if (rs.next()) {
				student = new Student();
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setPassword(rs.getString("password"));
				student.setStudentID(studentID);
				student.setEmail("email");
				student.setSex(rs.getString("sex"));
				student.setDiscipline(rs.getString("discipline"));
				student.setDegree(rs.getInt("degree"));
				student.setEntryTime(rs.getString("entryTime"));
				return student;
			}
			return student;
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
	
	public Teacher getByTeacherId(String teacherID)
	{
		db_conn.ConnectDB();
		ResultSet rs = null;
		try {
			String sql = "select * from teacher where teacherID ='"
					+ teacherID + "'";
			//������������
			//sql = new String(sql.getBytes("ISO8859-1"), "GB2312");
			System.out.println(sql);
			rs = db_conn.sm.executeQuery(sql);        // ִ��sql���
			Teacher teacher = null;
			if (rs.next()) {
				teacher = new Teacher();
				teacher.setId(rs.getInt("id"));
				teacher.setName(rs.getString("name"));
				teacher.setPassword(rs.getString("password"));
				teacher.setTeacherID(teacherID);
				teacher.setEmail("email");
				teacher.setSex(rs.getString("sex"));
				teacher.setDiscipline(rs.getString("discipline"));
				teacher.setDegree(rs.getInt("degree"));
				teacher.setEntryTime(rs.getString("entryTime"));
				return teacher;
			}
			return teacher;
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
	
    //���ע��ѧ���û�
	public int addStudent(Student student) {
		db_conn.ConnectDB();	
		try {
			
			String sql = "insert into student(id,name,password,email,sex,studentID,discipline,entryTime,degree) values(null,'" + student.getName()
					+ "','" + student.getPassword() + "','" + student.getEmail() + "','" + student.getSex()+ "','" + student.getStudentID()+ "','" 
					+ student.getDiscipline()+ "','" + student.getEntryTime()+ "','" + student.getDegree()				
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
	
	 //���ע���ʦ�û�
		public int addTeacher(Teacher teacher) {
			db_conn.ConnectDB();	
			System.out.println("ddsdsdds"+teacher);
			try {
				
				String sql = "insert into teacher(id,name,password,email,sex,teacherID,discipline,entryTime,degree) values(null,'" + teacher.getName()
						+ "','" + teacher.getPassword() + "','" + teacher.getEmail() + "','" + teacher.getSex()+ "','" + teacher.getTeacherID()+ "','" 
						+ teacher.getDiscipline()+ "','" + teacher.getEntryTime()+ "','" + teacher.getDegree()				
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
	
	//��ù���Ա�û���Ϣ
	public AdminUser getByName(String username) {//admin
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
			AdminUser adminUser = null;
			if (rs.next()) {
				adminUser = new AdminUser();
				adminUser.setId(rs.getInt("id"));
				adminUser.setUsername(username);
				adminUser.setPassword(rs.getString("password"));
				return adminUser;
			}
			System.out.println("my adm");
			return adminUser;
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

	

	