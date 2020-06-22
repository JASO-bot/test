package com.demo.dao.action;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import com.demo.entity.action.Action;

public interface ActionDao {
	//获取所有新闻
    public List<Action> getAllnews() throws SQLException;
	//获得新闻总数
	public int getTotalCount() throws SQLException;
    //分页获得新闻
    public List<Action> getPageNewsList(int pageNo, int pageSize) throws SQLException;
    
    //获取某条新闻
    public Action getNewsByNID(int aid) throws SQLException;
    
    //增加新闻信息
    public boolean addNews(Action action);
    
    /*//修改新闻信息
    public boolean updateNew(String atopic,Date atime,String author,String awords,int aid);*/
    
    //修改新闻信息
    public boolean updateNew(Action action);
    
    //删除新闻信息
    public boolean deleteNew(Action action);
}
