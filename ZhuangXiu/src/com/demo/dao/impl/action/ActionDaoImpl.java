package com.demo.dao.impl.action;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.demo.dao.BaseDao;
import com.demo.dao.action.ActionDao;
import com.demo.entity.action.Action;
import com.demo.util.DatabaseUtil;
import com.mysql.jdbc.PreparedStatement;

public class ActionDaoImpl extends BaseDao implements ActionDao {

	public ActionDaoImpl(Connection conn) {
		super(conn);
	}

	// 获取所有新闻
	public List<Action> getAllnews() throws SQLException {
	    List<Action> list = new ArrayList<Action>();
	    ResultSet rs = null;
	    String sql = "SELECT aid,atopic,atime,author,awords FROM ACTION ORDER BY aid ASC";
	    try {
	        rs = this.executeQuery(sql);
	        Action action = null;
	        while (rs.next()) {
	        	action = new Action();
	        	action.setAid(rs.getInt("aid"));
				action.setAtopic(rs.getString("atopic"));
				action.setAtime(rs.getDate("atime"));
				action.setAuthor(rs.getString("author"));
				action.setAwords(rs.getString("awords"));
	            list.add(action);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        throw e;
	    } finally {
	        DatabaseUtil.closeAll(null, null, rs);
	    }
	    return list;
	}

	// 获得所有新闻的数量
    public int getTotalCount() throws SQLException {
        ResultSet rs = null;
        String sql = "SELECT COUNT(`aid`) FROM `action`";
        int count = -1;
        try {
            rs = this.executeQuery(sql);
            rs.next();
            count = rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            DatabaseUtil.closeAll(null, null, rs);
        }
        return count;
    }
    
    //分页获得新闻
    public List<Action> getPageNewsList(int pageNo, int pageSize)
            throws SQLException {
        List<Action> list = new ArrayList<Action>();
        ResultSet rs = null;
        String sql = "SELECT aid,atopic,atime,author,awords FROM ACTION WHERE 1=1 ORDER BY aid ASC LIMIT ?,?";
        try {
            rs = this.executeQuery(sql, (pageNo-1)*pageSize, pageSize);
            Action action = null;
            while (rs.next()) {
            	action = new Action();
	        	action.setAid(rs.getInt("aid"));
				action.setAtopic(rs.getString("atopic"));
				action.setAtime(rs.getDate("atime"));
				action.setAuthor(rs.getString("author"));
				action.setAwords(rs.getString("awords"));
	            list.add(action);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            DatabaseUtil.closeAll(null, null, rs);
        }
        return list;
    }

	@Override
	//增加新闻方法
	public boolean addNews(Action action) {
		boolean flag=false;
		try {
			String sql="INSERT INTO ACTION(aid,atopic,atime,author,awords) VALUES(?,?,?,?,?)";
			Object[] params={
				action.getAid(),
				action.getAtopic(),
				action.getAtime(),
				action.getAuthor(),
				action.getAwords()
			};
			int i = this.executeUpdate(sql, params);
			if(i>0){
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	/*@Override
	//修改新闻方法
	public boolean updateNew(Action action) {
		boolean flag=false;
		try {
			String sql="UPDATE `action` SET `aid`=?,`atopic`=?,`atime`=?,`author`=?,`awords`=? WHERE aid=?";
			String sql="update action set aid=?,atopic=?,atime=?,author=?,awordds=? where aid=?";
			String sql="UPDATE ACTION SET (aid,atopic,atime,author,awords)=(?,?,?,?,?) WHERE aid=?";
			String sql="update action set aid=\"?\",atopic=\"?\",atime=\"?\",author=\"?\",awordds=\"?\" where aid=\"?\"";
			String sql="update action set aid=\'?\',atopic=\'?\',atime=\'?\',author=\'?\',awordds=\'?\' where aid=\'?\'";
			String sql="UPDATE ACTION SET aid=? WHERE aid=?";
			String sql="update action set atopic=\"?\",atime=\"?\",author=\"?\",awordds=\"?\" where aid=\"?\"";
			String sql="UPDATE `action` SET `atopic`=?,`atime`=?,`author`=?,`awords`=? WHERE aid=?";
			String sql="update action set aid=\'?\',atopic=\'?\',atime=\'?\',author=\'?\',awordds=\'?\' where aid=\'?\'";
			Object[] params={
				action.getAid(),
				action.getAtopic(),
				action.getAtime(),
				action.getAuthor(),
				action.getAwords()
			};
			int i = this.executeUpdate(sql, params);
			if(i>0){
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}*/
	
	//修改方法
	/*public boolean updateNew(String atopic,Date atime,String author,String awords,int aid) {
		Boolean res = false;
		try {
        	String sql="update action set atopic=\"?\",atime=\"?\",author=\"?\",awordds=\"?\" where aid=\"?\"";
        	Connection conn=(Connection) DatabaseUtil.getConnection();
        	
        	PreparedStatement statement=(PreparedStatement) conn.prepareStatement(sql);
        	statement.setString(1, atopic);
        	statement.setDate(2, (java.sql.Date) atime);
        	statement.setString(3, author);
        	statement.setString(4, awords);
        	statement.setInt(5, aid);
        	
        	int result = statement.executeUpdate();
        	if(result>0){
        		res = true;
        	}
        	statement.close();
        	conn.close();
        	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}*/
	
	/*//修改方法
	public boolean updateNew(String atopic,Date atime,String author,String awords,int aid) {
		Boolean res = false;
		try {
        	String sql="UPDATE action SET atopic=?,atime=?,author=?,awords=? WHERE aid=?";
        	DatabaseUtil dUtils = new DatabaseUtil();
        	Connection conn=(Connection) dUtils.getConnection();
        	PreparedStatement statement=(PreparedStatement) conn.prepareStatement(sql);
        	statement.setString(1, atopic);
        	statement.setDate(2, (java.sql.Date) atime);
        	statement.setString(3, author);
        	statement.setString(4, awords);
        	statement.setInt(5, aid);
        	
        	int result = statement.executeUpdate();
        	if(result>0){
        		res = true;
        	}
        	statement.close();
        	conn.close();
        	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}*/
	
	@Override
	//修改新闻方法
	public boolean updateNew(Action action) {
		boolean flag=false;
		try {
			String sql="UPDATE action SET atopic = ? , atime = ? , author = ? , awords = ? WHERE aid = ? ";
			Object[] params={
				action.getAtopic(),
				action.getAtime(),
				action.getAuthor(),
				action.getAwords(),
				action.getAid()
			};
			int i = this.executeUpdate(sql, params);
			if(i>0){
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	//删除新闻
	@Override
	public boolean deleteNew(Action action) {
		boolean flag=false;
		try {
			String sql="DELETE FROM ACTION WHERE aid=?";
			Object[] params={action.getAid()};
			int i = this.executeUpdate(sql, params);
			if (i>0) {
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	// 获取某条新闻
    public Action getNewsByNID(int aid) throws SQLException {
        ResultSet rs = null;
        String sql = "SELECT aid,atopic,atime,author,awords FROM ACTION WHERE aid=?";
        Action action = null;
        try {
            rs = this.executeQuery(sql, aid);
            if (rs.next()) {
            	action = new Action();
	        	action.setAid(rs.getInt("aid"));
				action.setAtopic(rs.getString("atopic"));
				action.setAtime(rs.getDate("atime"));
				action.setAuthor(rs.getString("author"));
				action.setAwords(rs.getString("awords"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            DatabaseUtil.closeAll(null, null, rs);
        }
        return action;
    }
	
}

