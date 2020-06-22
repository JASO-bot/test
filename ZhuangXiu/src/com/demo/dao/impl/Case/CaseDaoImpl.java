package com.demo.dao.impl.Case;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.dao.BaseDao;
import com.demo.dao.Case.CaseDao;
import com.demo.entity.Case.CasePojo;

import com.demo.util.DatabaseUtil;

public class CaseDaoImpl extends BaseDao implements CaseDao {

	public CaseDaoImpl(Connection conn) {
		super(conn);
		
	}

	@Override
	public List<CasePojo> getCasePojos() throws SQLException {
		List<CasePojo> list = new ArrayList<CasePojo>();
        String sql = "SELECT * FROM `worklist`"
                + " ORDER BY `id` desc";
        ResultSet rs = null;
        try {
            rs = executeQuery(sql);
            CasePojo casePojo = null;
            while (rs.next()) {
            	casePojo = new CasePojo();
            	casePojo.setId(rs.getInt("id"));
            	casePojo.setImg(rs.getString("img"));
            	casePojo.setTime(rs.getDate("time"));
                
                list.add(casePojo);
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
	public List<CasePojo> getCaseByid(int id) throws SQLException {
		List<CasePojo> list = new ArrayList<CasePojo>();
		String sql = "SELECT * FROM `worklist` WHERE `id` = ?"
                + " ORDER BY `id` desc";
		 ResultSet rs = null;
	        try {
	            rs = executeQuery(sql,id);
	            CasePojo casePojo = null;
	            while (rs.next()) {
	            	casePojo = new CasePojo();
	            	casePojo.setId(rs.getInt("id"));
	            	casePojo.setImg(rs.getString("img"));
	            	casePojo.setTime(rs.getDate("time"));
	                
	                list.add(casePojo);
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
	public int addCase(CasePojo casePojo) throws SQLException {
		 String sql = "INSERT INTO `worklist`(`id`, `img`, `time`) VALUES(?,?,?)";
		 Object[] params = new Object[] { casePojo.getId(),
				 casePojo.getImg(),casePojo.getTime()
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
	public int updateCase(CasePojo casePojo) throws SQLException {
		String sql = "UPDATE `worklist` SET `img` = ?,`time`=? WHERE `id` = ?";
	        int result = 0;
	        try {
	            result = executeUpdate(sql,casePojo.getImg(),
	            		casePojo.getTime(),casePojo.getId());
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        }
	        return result;
	}

	@Override
	public int deleteCaseByid(int id) throws SQLException {
		 String sql = "DELETE FROM `worklist` WHERE `id` = ?";
		 
	        int result = 0;
	        try {
	            result = executeUpdate(sql, id);
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        }
	        return result;
	}

	@Override
	public int getCaseTotalCount() {
		int result = 0;
		String sql = "select count(id) from worklist";
		Object[] params = {};

		try {
			ResultSet rs = this.executeQuery(sql, params);
			while(rs.next()){
				
				result=rs.getInt(1);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<CasePojo> getCaseListByPage(int pageNo, int pageSize) {
		List<CasePojo> list = new ArrayList<CasePojo>();
		String sql = "select * from worklist where 1=1 order by id desc limit ?,?";
		Object[] params = {pageNo,pageSize};
		try {
			 ResultSet rs = this.executeQuery(sql, params);
			 CasePojo casePojo = null;
			while(rs.next()){

				casePojo = new CasePojo();
				casePojo.setId(rs.getInt("id"));
				casePojo.setImg(rs.getString("img"));
				casePojo.setTime(rs.getDate("time"));
                
                list.add(casePojo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
