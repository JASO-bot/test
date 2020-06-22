package com.demo.service.impl.Firstpage;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;



import com.demo.dao.impl.Firstpage.FirstpageDaoImpl;
import com.demo.entity.Firstpage.FirstpagePojo;
import com.demo.service.Firstpage.FirstpageService;
import com.demo.util.DatabaseUtil;

public class FirstpageServiceImpl implements FirstpageService {

	@Override
	public List<FirstpagePojo> getfirstpage() throws SQLException {
		 Connection conn = null;
	        try {
	            conn = DatabaseUtil.getConnection();

	            return new FirstpageDaoImpl(conn).getfirstpage();
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        } finally {
	            DatabaseUtil.closeAll(conn, null, null);
	        }
	}

	@Override
	public List<FirstpagePojo> getfirstpageByaid(int aid) throws SQLException {
		 Connection conn = null;
	        try {
	            conn = DatabaseUtil.getConnection();

	            return new FirstpageDaoImpl(conn).getfirstpageByaid(aid);
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        } finally {
	            DatabaseUtil.closeAll(conn, null, null);
	        }
	}

	@Override
	public int addFirstpage(FirstpagePojo firstpagePojo) throws SQLException {
		Connection conn = null;
        int result;
        try {
            conn = DatabaseUtil.getConnection();
            conn.setAutoCommit(false);

            result = new FirstpageDaoImpl(conn).addFirstpage(firstpagePojo);

            conn.commit();
        } catch (SQLException e) {
            e.printStackTrace();
            if (conn != null)
                try {
                    conn.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
            throw e;
        } finally {
            DatabaseUtil.closeAll(conn, null, null);
        }
        return result;
	}

	@Override
	public int updateFirstpage(FirstpagePojo firstpagePojo) throws SQLException {
		 Connection conn = null;
	        int result;
	        try {
	            conn = DatabaseUtil.getConnection();
	            conn.setAutoCommit(false);
	            
	            result = new FirstpageDaoImpl(conn).updateFirstpage(firstpagePojo);
	            
	            conn.commit();
	        } catch (SQLException e) {
	            e.printStackTrace();
	            if (conn != null)
	                try {
	                    conn.rollback();
	                } catch (SQLException e1) {
	                    e1.printStackTrace();
	                }
	            throw e;
	        } finally {
	            DatabaseUtil.closeAll(conn, null, null);
	        }
	        return result;
	}

	@Override
	public int deleteFirstpageByaid(int aid) throws SQLException {
		Connection conn = null;
        int result;
        try {
            conn = DatabaseUtil.getConnection();
            conn.setAutoCommit(false);
            
            result = new FirstpageDaoImpl(conn).deleteFirstpageByaid(aid);
            
            conn.commit();
        } catch (SQLException e) {
            e.printStackTrace();
            if (conn != null)
                try {
                    conn.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
            throw e;
        } finally {
            DatabaseUtil.closeAll(conn, null, null);
        }
        return result;
	}

	

}
