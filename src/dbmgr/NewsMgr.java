package dbmgr;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bjsxt.bbs.News;

public class NewsMgr {
	DBConMgr db_conn=new DBConMgr(); 
	
	public List<News> get(int localkind,int number)
	{
		List<News> listNews = new ArrayList<News>();
		
		db_conn.ConnectDB();
		ResultSet rs = null;
		int i = 0;
		try{
			String sql = "select * from News where kind = localkind";
			rs = db_conn.sm.executeQuery(sql);   
			while(i >= number || rs.next())
			{
				News news = new News();
				
				news.setId(rs.getInt("id"));
				news.setKeyword(rs.getString("keyword"));
				news.setKind(localkind);
				news.setContent(rs.getString("content"));
				news.setNewsfrom(rs.getString("newsfrom"));
				news.setPicurl(rs.getString("picurl"));
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
}
