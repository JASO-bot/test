package com.demo.dao.impl.Firstpage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.dao.BaseDao;
import com.demo.dao.firstpage.FirstpageDao;

import com.demo.entity.Firstpage.FirstpagePojo;
import com.demo.util.DatabaseUtil;

public class FirstpageDaoImpl extends BaseDao implements FirstpageDao {

	public FirstpageDaoImpl(Connection conn) {
		super(conn);
		
	}
	public List<FirstpagePojo> getfirstpage() throws SQLException {
		 List<FirstpagePojo> list = new ArrayList<FirstpagePojo>();
	        String sql = "SELECT * FROM `action`"
	                + " ORDER BY `aid` desc";
	        ResultSet rs = null;
	        try {
	            rs = executeQuery(sql);
	            FirstpagePojo firstpagePojo = null;
	            while (rs.next()) {
	            	firstpagePojo = new FirstpagePojo();
	            	firstpagePojo.setAid(rs.getInt("aid"));
	            	firstpagePojo.setAtopic(rs.getString("atopic"));
	            	firstpagePojo.setAtime(rs.getTime("atime"));
	            	firstpagePojo.setAwords(rs.getString("awords"));
	                
	                list.add(firstpagePojo);
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
	public List<FirstpagePojo> getfirstpageByaid(int aid) throws SQLException {
		List<FirstpagePojo> list = new ArrayList<FirstpagePojo>();
        String sql = "SELECT * FROM `action` WHERE `aid` = ?"
                + " ORDER BY `aid` desc";
        ResultSet rs = null;
        try {
            rs = executeQuery(sql,aid);
            FirstpagePojo firstpagePojo = null;
            while (rs.next()) {
            	firstpagePojo = new FirstpagePojo();
            	firstpagePojo.setAid(rs.getInt("aid"));
            	firstpagePojo.setAtopic(rs.getString("atopic"));
            	firstpagePojo.setAtime(rs.getDate("atime"));
            	firstpagePojo.setAwords(rs.getString("awords"));
                
                list.add(firstpagePojo);
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
	public int addFirstpage(FirstpagePojo firstpagePojo) throws SQLException {
		 String sql = "INSERT INTO `action`(`atopic`, `atime`, `awords`) VALUES(?,?,?)";
//	        System.out.println(comment.getCnid() + ":" + comment.getCcontent()
//	                + ":" + comment.getCdate() + ":" + comment.getCip() + ":"
//	                + comment.getCauthor());
	        Object[] params = new Object[] { firstpagePojo.getAtopic(),
	        		firstpagePojo.getAtime(),firstpagePojo.getAwords()
	                };
	        int result = 0;
	        try {
	            result = executeUpdate(sql, params);
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        }
	        return result;
	}
	@Override
	public int updateFirstpage(FirstpagePojo firstpagePojo) throws SQLException {
		 String sql = "UPDATE `action` SET `atopic` = ?,`atime`=?,`awords`=?,WHERE `aid` = ?";
		        int result = 0;
		        try {
		            result = executeUpdate(sql,firstpagePojo.getAtopic(),
			        		firstpagePojo.getAtime(),firstpagePojo.getAwords());
		        } catch (SQLException e) {
		            e.printStackTrace();
		            throw e;
		        }
		        return result;
	}
	@Override
	public int deleteFirstpageByaid(int aid) throws SQLException {
		 String sql = "DELETE FROM `action` WHERE `aid` = ?";
		 
	        int result = 0;
	        try {
	            result = executeUpdate(sql, aid);
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        }
	        return result;
	}
	
}
