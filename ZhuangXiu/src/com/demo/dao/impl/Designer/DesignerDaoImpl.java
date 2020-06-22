package com.demo.dao.impl.Designer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.dao.BaseDao;
import com.demo.dao.Designer.DesignerDao;
import com.demo.entity.Designer.DesignerPojo;
import com.demo.util.DatabaseUtil;



public class DesignerDaoImpl extends BaseDao implements DesignerDao{
	public DesignerDaoImpl(Connection conn) {
        super(conn);
    }

	@Override
	public List<DesignerPojo> getDesigner() throws SQLException {
		 List<DesignerPojo> list = new ArrayList<DesignerPojo>();
	        String sql = "SELECT * FROM `designer`"
	                + " ORDER BY `did` desc";
	        ResultSet rs = null;
	        try {
	            rs = executeQuery(sql);
	            DesignerPojo designerPojo = null;
	            while (rs.next()) {
	            	designerPojo = new DesignerPojo();
	                designerPojo.setDid(rs.getInt("did"));
	                designerPojo.setDimg(rs.getString("dimg"));
	                designerPojo.setDname(rs.getString("dname"));
	                designerPojo.setDlevel(rs.getString("dlevel"));
	                designerPojo.setDworks(rs.getInt("dworks"));
	                designerPojo.setDtime(rs.getInt("dtime"));
	                designerPojo.setDstyle(rs.getString("dstyle"));
	                designerPojo.setSchool(rs.getString("school"));
	                designerPojo.setDworkname(rs.getString("dworkname"));
	                designerPojo.setPrinciple(rs.getString("principle"));
	                designerPojo.setWorking(rs.getInt("working"));
	                list.add(designerPojo);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        } finally {
	            DatabaseUtil.closeAll(null, null, rs);
	        }
	        return list;
	}
	
	@Override//通过输入id查找设计师信息
	public List<DesignerPojo> getDesignerBydid(int did) throws SQLException {
	    List<DesignerPojo> list = new ArrayList<DesignerPojo>();
        String sql = "SELECT * FROM `designer` WHERE `did` = ?"
                + " ORDER BY `did` desc";
        ResultSet rs = null;
        try {
            rs = executeQuery(sql,did);
            DesignerPojo designerPojo = null;
            while (rs.next()) {
            	designerPojo = new DesignerPojo();
                designerPojo.setDid(rs.getInt("did"));
                designerPojo.setDimg(rs.getString("dimg"));
                designerPojo.setDname(rs.getString("dname"));
                designerPojo.setDlevel(rs.getString("dlevel"));
                designerPojo.setDworks(rs.getInt("dworks"));
                designerPojo.setDtime(rs.getInt("dtime"));
                designerPojo.setDstyle(rs.getString("dstyle"));
                designerPojo.setSchool(rs.getString("school"));
                designerPojo.setDworkname(rs.getString("dworkname"));
                designerPojo.setPrinciple(rs.getString("principle"));
                designerPojo.setWorking(rs.getInt("working"));
                list.add(designerPojo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            DatabaseUtil.closeAll(null, null, rs);
        }
        return list;
	}

	@Override//添加设计师信息
	public int addDesigner(DesignerPojo designerPojo) throws SQLException {
		 String sql = "INSERT INTO `designer`(`dimg`, `dname`, `dlevel`," +
	        		"`dworks`,`dtime`,`dstyle`, `school`, `dworkname`," +
	        		"`principle`,`working`) VALUES(?,?,?,?,?,?,?,?,?,?)";
//	        System.out.println(comment.getCnid() + ":" + comment.getCcontent()
//	                + ":" + comment.getCdate() + ":" + comment.getCip() + ":"
//	                + comment.getCauthor());
	        Object[] params = new Object[] { designerPojo.getDimg(),
	        		designerPojo.getDname(),designerPojo.getDlevel(),designerPojo.getDworks(),
	        		designerPojo.getDtime(),designerPojo.getDstyle(),
	        		designerPojo.getSchool(),designerPojo.getDworkname(),designerPojo.getPrinciple(),
	        		designerPojo.getWorking()
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

	@Override//修改设计师信息
	public int updateDesigner(DesignerPojo designerPojo) throws SQLException {
		
//		String sql = "INSERT INTO `designer`(`dimg`, `dname`, `dlevel`," +
//        		"`dworks`,`dtime`,`dstyle`, `school`, `dworkname`," +
//        		"`principle`,`working`) VALUES(?,?,?,?,?,?,?,?,?,?)";
		
		  String sql = "UPDATE `designer` SET `dimg` = ?,`dname`=?,`dlevel`=?,`dworks`=?,"
		  		+ "`dtime`=?,`dstyle`=?,`school`=?,`dworkname`=?,`principle`=?,`working`=? WHERE `did` = ?";
	        int result = 0;
	        try {
	            result = executeUpdate(sql,designerPojo.getDimg(),
		        		designerPojo.getDname(),designerPojo.getDlevel(),designerPojo.getDworks(),
		        		designerPojo.getDtime(),designerPojo.getDstyle(),
		        		designerPojo.getSchool(),designerPojo.getDworkname(),designerPojo.getPrinciple(),
		        		designerPojo.getWorking(),designerPojo.getDid());
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        }
	        return result;
	}

	@Override//删除设计师信息
	public int deleteDesignerBydid(int did) throws SQLException {
		 String sql = "DELETE FROM `designer` WHERE `did` = ?";
		 
	        int result = 0;
	        try {
	            result = executeUpdate(sql, did);
	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        }
	        return result;
	}

	@Override//分页
	public int getDesignerTotalCount() {
		int result = 0;
		String sql = "select count(did) from designer";
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
	public List<DesignerPojo> getDesignerListByPage(int pageNo, int pageSize) {
		List<DesignerPojo> list = new ArrayList<DesignerPojo>();
		String sql = "select * from designer where 1=1 order by did desc limit ?,?";
		Object[] params = {pageNo,pageSize};
		try {
			 ResultSet rs = this.executeQuery(sql, params);
			 DesignerPojo designerPojo = null;
			while(rs.next()){

				designerPojo = new DesignerPojo();
                designerPojo.setDid(rs.getInt("did"));
                designerPojo.setDimg(rs.getString("dimg"));
                designerPojo.setDname(rs.getString("dname"));
                designerPojo.setDlevel(rs.getString("dlevel"));
                designerPojo.setDworks(rs.getInt("dworks"));
                designerPojo.setDtime(rs.getInt("dtime"));
                designerPojo.setDstyle(rs.getString("dstyle"));
                designerPojo.setSchool(rs.getString("school"));
                designerPojo.setDworkname(rs.getString("dworkname"));
                designerPojo.setPrinciple(rs.getString("principle"));
                designerPojo.setWorking(rs.getInt("working"));
                list.add(designerPojo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
