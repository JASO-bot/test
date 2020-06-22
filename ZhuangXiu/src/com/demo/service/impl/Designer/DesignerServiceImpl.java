package com.demo.service.impl.Designer;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.dao.impl.Designer.DesignerDaoImpl;
import com.demo.entity.Designer.DesignerPojo;
import com.demo.service.Designer.DesignerService;
import com.demo.util.DatabaseUtil;

public class DesignerServiceImpl implements DesignerService{

	
	@Override
	public List<DesignerPojo> getDesigner() throws SQLException {
		 Connection conn = null;
	        try {
	            conn = DatabaseUtil.getConnection();

	            return new DesignerDaoImpl(conn).getDesigner();
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        } finally {
	            DatabaseUtil.closeAll(conn, null, null);
	        }
	}
	
	@Override
	public List<DesignerPojo> getDesignerBydid(int did) throws SQLException {
		 Connection conn = null;
	        try {
	            conn = DatabaseUtil.getConnection();

	            return new DesignerDaoImpl(conn).getDesignerBydid(did);
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        } finally {
	            DatabaseUtil.closeAll(conn, null, null);
	        }
	}

	@Override
	public int addDesigner(DesignerPojo designerPojo) throws SQLException {
		   Connection conn = null;
	        int result;
	        try {
	            conn = DatabaseUtil.getConnection();
	            conn.setAutoCommit(false);

	            result = new DesignerDaoImpl(conn).addDesigner(designerPojo);

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
	public int updateDesigner(DesignerPojo designerPojo) throws SQLException {
		  Connection conn = null;
	        int result;
	        try {
	            conn = DatabaseUtil.getConnection();
	            conn.setAutoCommit(false);
	            
	            result = new DesignerDaoImpl(conn).updateDesigner(designerPojo);
	            
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
	public int deleteDesignerBydid(int did) throws SQLException {
		  Connection conn = null;
	        int result;
	        try {
	            conn = DatabaseUtil.getConnection();
	            conn.setAutoCommit(false);
	            
	            result = new DesignerDaoImpl(conn).deleteDesignerBydid(did);
	            
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
	public int getDesignerTotalCount(){
		 Connection conn = null;
		 int result = 0;
	        try {
	            conn = DatabaseUtil.getConnection();

	            result = new DesignerDaoImpl(conn).getDesignerTotalCount();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            DatabaseUtil.closeAll(conn, null, null);
	        }
	        return result;
	}

	@Override
	public List<DesignerPojo> getDesignerListByPage(int pageNo, int pageSize) {
		 Connection conn = null;
		 List<DesignerPojo> list = new ArrayList<DesignerPojo>();
	        try {
	            conn = DatabaseUtil.getConnection();

	            list = new DesignerDaoImpl(conn).getDesignerListByPage(pageNo, pageSize);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            DatabaseUtil.closeAll(conn, null, null);
	        }
	        return list;
		}
	}