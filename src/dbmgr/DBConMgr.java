package dbmgr;


import java.sql.*;

public class DBConMgr {
	
	private  String driverName="com.mysql.jdbc.Driver";      //����������
	private  String userName="root";                         //���ݿ��û���
	private  String userPwd="123";                          //����
    private  String url= "jdbc:mysql://localhost:3306/bbs";      //�����ַ���
    private  Connection conn=null;                                  //���ݿ����Ӷ���
    public Statement sm=null;                                       //���ݿ�������   
    
    // �������ݿ�����
    public void ConnectDB(){
    	 try {
    		 Class.forName("com.mysql.jdbc.Driver");
 			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbs", "root" , "root");
        	 sm=conn.createStatement();
        	 System.out.println("------------------���ݿ����ӳɹ�!");
         } catch(Exception e) {
    		 e.printStackTrace();		 
    		 System.out.println("------------------���ݿ�����ʧ��!");
    	 }
    }
    
    public void CloseDB(){
    	try {
			if (sm != null) {
				sm.close();
			}
			conn.close();
		} catch (SQLException SqlE) {
			SqlE.printStackTrace();
			 System.out.println("-------------------���ݿ�ر�ʧ�ܣ�");
		}
    
   }
}