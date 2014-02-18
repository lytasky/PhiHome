package dbmgr;


import java.sql.*;

public class DBConMgr {
	
	private  String driverName="com.mysql.jdbc.Driver";      //驱动程序名
	private  String userName="root";                         //数据库用户名
	private  String userPwd="root";                          //密码
    private  String url= "jdbc:mysql://localhost:3306/";      //连接字符串
    private  Connection conn=null;                                  //数据库连接对象
    public Statement sm=null;                                       //数据库语句对象   
    
    // 建立数据库连接
    public void ConnectDB(String databaseName){
    	 try {
    		 Class.forName("com.mysql.jdbc.Driver");
 			conn = DriverManager.getConnection(url+databaseName, "root" , "root");
        	 sm=conn.createStatement();
        	 System.out.println(url+databaseName+"------------------数据库连接成功!");
         } catch(Exception e) {
    		 e.printStackTrace();		 
    		 System.out.println("------------------数据库连接失败!");
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
			 System.out.println("-------------------数据库关闭失败！");
		}
    
   }
}