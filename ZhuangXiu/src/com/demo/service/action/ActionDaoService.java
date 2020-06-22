package com.demo.service.action;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.demo.entity.action.Action;

public interface ActionDaoService {
	// 获取所有新闻
    public List<Action> findAllNews() throws SQLException;
    
    // 获得新闻总数
    public int findTotalCount() throws SQLException;
    
    // 分页获取新闻
    public List<Action> findPageNews(int pageNo, int pageSize) throws SQLException;
    
    //获取某条新闻
    public Action findNewsByNid(int aid) throws SQLException;
    
    //增加新闻信息
    public boolean addNews(Action action) throws SQLException;
    
    /*//修改新闻信息
    public int updateNew(Action action) throws SQLException;*/
    
    /*//修改新闻信息
    public boolean updateNew(String atopic,Date atime,String author,String awords,int aid);*/
    
    //修改新闻信息
    public boolean updateNew(Action action) throws SQLException;
    
    //删除新闻信息
    public boolean deleteNew(Action action) throws SQLException;
    
}
