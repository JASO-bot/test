package com.demo.service.impl.Case;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.dao.impl.Case.CaseDaoImpl;

import com.demo.entity.Case.CasePojo;

import com.demo.service.Case.CaseService;
import com.demo.util.DatabaseUtil;

public class CaseServiceImpl implements CaseService{

	@Override
	public List<CasePojo> getCasePojos() throws SQLException {
		 Connection conn = null;
	        try {
	            conn = DatabaseUtil.getConnection();

	            return new CaseDaoImpl(conn).getCasePojos();
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        } finally {
	            DatabaseUtil.closeAll(conn, null, null);
	        }
	}

	@Override
	public List<CasePojo> getCaseByid(int id) throws SQLException {
		Connection conn = null;
        try {
            conn = DatabaseUtil.getConnection();

            return new CaseDaoImpl(conn).getCaseByid(id);
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            DatabaseUtil.closeAll(conn, null, null);
        }
	}

	@Override
	public int addCase(CasePojo casePojo) throws SQLException {
		 Connection conn = null;
	        int result;
	        try {
	            conn = DatabaseUtil.getConnection();
	            conn.setAutoCommit(false);

	            result = new CaseDaoImpl(conn).addCase(casePojo);

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
	public int updateCase(CasePojo casePojo) throws SQLException {
		Connection conn = null;
        int result;
        try {
            conn = DatabaseUtil.getConnection();
            conn.setAutoCommit(false);
            
            result = new CaseDaoImpl(conn).updateCase(casePojo);
            
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
	public int deleteCaseByid(int id) throws SQLException {
		Connection conn = null;
        int result;
        try {
            conn = DatabaseUtil.getConnection();
            conn.setAutoCommit(false);
            
            result = new CaseDaoImpl(conn).deleteCaseByid(id);
            
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
	public int getCaseTotalCount() {
		Connection conn = null;
		 int result = 0;
	        try {
	            conn = DatabaseUtil.getConnection();

	            result = new CaseDaoImpl(conn).getCaseTotalCount();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            DatabaseUtil.closeAll(conn, null, null);
	        }
	        return result;
	}

	@Override
	public List<CasePojo> getCaseListByPage(int pageNo, int pageSize) {
		 Connection conn = null;
		 List<CasePojo> list = new ArrayList<CasePojo>();
	        try {
	            conn = DatabaseUtil.getConnection();

	            list = new CaseDaoImpl(conn).getCaseListByPage(pageNo, pageSize);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            DatabaseUtil.closeAll(conn, null, null);
	        }
	        return list;
	}

}
