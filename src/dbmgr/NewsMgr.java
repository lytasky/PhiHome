package dbmgr;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bjsxt.bbs.News;

public class NewsMgr {
	DBConMgr db_conn=new DBConMgr(); 
	
	public List<News> get(String tableType ,int number)
	{
		List<News> listNews = new ArrayList<News>();
		String sql = "select * from xxzxdh";
		db_conn.ConnectDB("news");
		ResultSet rs = null;
		int i = 0;
		try{
			if(tableType.equalsIgnoreCase("XixiDuihua")){
				
				sql = "select * from xxzxdh";			
			}else if (tableType.equalsIgnoreCase("ZhexueAndDaxue")){
				sql = "select * from zxydx";
			}else if(tableType.equalsIgnoreCase("ZhexueQushi")){
				sql = "select * from zxqw";
			}else if(tableType.equalsIgnoreCase("TongzhiGonggao")){
				sql = "select * from tzgg";
			}else if(tableType.equalsIgnoreCase("XinwenBaodao")){
				sql = "select * from xwbd";
			}
			rs = db_conn.sm.executeQuery(sql);   
			while(i >= number || rs.next())
			{
				News news = new News();
				
				news.setId(rs.getInt("id"));
				news.setContent(rs.getString("content"));
				news.setNewsfrom(rs.getString("newsfrom"));
				news.setTitle(rs.getString("title"));
				news.setPublishtime(rs.getString("publishtime"));
				listNews.add(news);
			}
			return listNews;
		}catch(SQLException SqlE)
		{
			SqlE.printStackTrace();
			return null;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}finally
		{
			db_conn.CloseDB();
		}	
	}
	public News getById(String tableType ,int Id){
		News news = new News();
		String sql = "select * from xxzxdh where id =" + Id;
		System.out.println(sql);
		db_conn.ConnectDB("news");
		ResultSet rs = null;
		try{
			if(tableType.equalsIgnoreCase("XixiDuihua")){
				
				sql = "select * from xxzxdh where id =" + Id;			
			}else if (tableType.equalsIgnoreCase("ZhexueAndDaxue")){
				sql = "select * from zxydx where id =" + Id;
			}else if(tableType.equalsIgnoreCase("ZhexueQushi")){
				sql = "select * from zxqw where id =" + Id;
			}else if(tableType.equalsIgnoreCase("TongzhiGonggao")){
				sql = "select * from tzgg where id =" + Id;
			}else if(tableType.equalsIgnoreCase("XinwenBaodao")){
				sql = "select * from xwbd where id =" + Id;
			}
			rs = db_conn.sm.executeQuery(sql);   
			if(rs.next() != false)
			{
				news.setId(rs.getInt("id"));
				news.setContent(rs.getString("content"));
				news.setNewsfrom(rs.getString("newsfrom"));
				news.setTitle(rs.getString("title"));
				news.setPublishtime(rs.getString("publishtime"));
			}
			return news;
		}catch(SQLException SqlE)
		{
			SqlE.printStackTrace();
			return null;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}finally
		{
			db_conn.CloseDB();
		}	
	}
}
