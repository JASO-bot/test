package com.demo.service.impl.action;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.demo.dao.action.ActionDao;
import com.demo.dao.impl.action.ActionDaoImpl;
import com.demo.entity.action.Action;
import com.demo.service.action.ActionDaoService;
import com.demo.util.DatabaseUtil;

public class ActionDaoServiceImpl implements ActionDaoService {

	//获取所有新闻
	@Override
	public List<Action> findAllNews() throws SQLException {
        Connection conn = null;
        conn = DatabaseUtil.getConnection();
        return new ActionDaoImpl(conn).getAllnews();
    }

	@Override
	//获取新闻总和
	public int findTotalCount() throws SQLException {
		Connection conn = null;
		conn = DatabaseUtil.getConnection();
		return new ActionDaoImpl(conn).getTotalCount();
	}
	
	// 分页获取新闻
    public List<Action> findPageNews(int pageNo, int pageSize) throws SQLException {
        Connection conn = null;
        conn = DatabaseUtil.getConnection();
        return new ActionDaoImpl(conn).getPageNewsList(pageNo, pageSize);
    }
    
    @Override
    //根据id获取某条新闻
    public Action findNewsByNid(int aid) throws SQLException {
        Connection conn = null;
        try {
            conn = DatabaseUtil.getConnection();
            return new ActionDaoImpl(conn).getNewsByNID(aid);
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            DatabaseUtil.closeAll(conn, null, null);
        }
    }
    
	@Override
	//添加新闻方法
	public boolean addNews(Action action) throws SQLException {
		Connection conn = null;
        conn = DatabaseUtil.getConnection();
		return new ActionDaoImpl(conn).addNews(action);
	}

	
	/*//修改新闻方法
	public int updateNew(Action action) throws SQLException {
		Connection conn = null;
        conn = DatabaseUtil.getConnection();
		return new ActionDaoImpl(conn).updateNew(action);
	}*/
	
	//修改方法
	/*@Override
	public boolean updateNew(String atopic, Date atime, String author,
			String awords, int aid) {
		Connection conn = null;
        try {
			conn = DatabaseUtil.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ActionDaoImpl(conn).updateNew(atopic, atime, author, awords, aid);
	}*/
	
	/*//修改方法
	@Override
	public boolean updateNew(String atopic, Date atime, String author,
			String awords, int aid) {
		Connection conn = null;
        try {
			conn = DatabaseUtil.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ActionDaoImpl(conn).updateNew(atopic, atime, author, awords, aid);
	}*/
	
	@Override
	//修改新闻方法
	public boolean updateNew(Action action) throws SQLException {
		Connection conn = null;
        conn = DatabaseUtil.getConnection();
		return new ActionDaoImpl(conn).updateNew(action);
	}
	
	@Override
	//删除新闻方法
	public boolean deleteNew(Action action) throws SQLException {
		Connection conn = null;
        conn = DatabaseUtil.getConnection();
		return new ActionDaoImpl(conn).deleteNew(action);
	}

	

}
