package com.demo.dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.dao.user.UserDao;
import com.demo.entity.user.Userpojo;
import com.demo.util.DatabaseUtil;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class UserDaoImpl implements UserDao {

	@Override
	public int userLogin(String name, String password) {
		int result = -1;
		try {
        	String sql="select * from user where username=? and userpwd=?";
        	DatabaseUtil dUtils = new DatabaseUtil();
        	Connection conn=(Connection) dUtils.getConnection();
        	
        	PreparedStatement statement=(PreparedStatement) conn.prepareStatement(sql);
        	statement.setString(1, name);
        	statement.setString(2, password);
        	
        	ResultSet rs=statement.executeQuery();
        	if(rs.next()){
        		System.out.println("鐧诲綍鎴愬姛锛屾杩庝綘 锛�"+name);
        		result = rs.getInt("utypeID");
        	}else{
        		System.out.println("鐧诲綍澶辫触锛屽瘑鐮佹垨鐢ㄦ埛鍚嶉敊璇紝璇烽噸鏂扮櫥褰�.");
        	}
        	
        	rs.close();
        	statement.close();
        	conn.close();
        	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<Userpojo> findUserList() {
		List<Userpojo> userList = new ArrayList();
		try {
        	String sql="select * from user";
        	DatabaseUtil dUtils = new DatabaseUtil();
        	Connection conn=(Connection) dUtils.getConnection();
        	
        	PreparedStatement statement=(PreparedStatement) conn.prepareStatement(sql);
        	
        	ResultSet rs=statement.executeQuery();
        	while(rs.next()){
        		Userpojo user = new Userpojo();
        		user.setUserid(rs.getInt("usrid"));
        		user.setUsername(rs.getString("username"));
        		user.setUserpwd(rs.getString("userpwd"));
        		user.setUtypeID(rs.getInt("utypeID"));
        		userList.add(user);
        	}
        	rs.close();
        	statement.close();
        	conn.close();
        	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

	@Override
	public Boolean addUser(String name, String password, Integer userType) {
		Boolean res = false;
		try {
        	String sql="INSERT INTO user (username,userpwd,utypeID) VALUES(?,?,?)";
        	DatabaseUtil dUtils = new DatabaseUtil();
        	Connection conn=(Connection) dUtils.getConnection();
        	
        	PreparedStatement statement=(PreparedStatement) conn.prepareStatement(sql);
        	statement.setString(1, name);
        	statement.setString(2, password);
        	statement.setInt(3, userType);
        	
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
	}
	
	@Override
	public Boolean editUser(String name, String password, Integer userType,Integer userId) {
		Boolean res = false;
		try {
        	String sql="UPDATE user SET username=?,userpwd=?,utypeID=? WHERE usrid=?";
        	DatabaseUtil dUtils = new DatabaseUtil();
        	Connection conn=(Connection) dUtils.getConnection();
        	
        	PreparedStatement statement=(PreparedStatement) conn.prepareStatement(sql);
        	statement.setString(1, name);
        	statement.setString(2, password);
        	statement.setInt(3, userType);
        	statement.setInt(4, userId);
        	
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
	}

	@Override
	public Boolean deleteUser(Integer userId) {
		Boolean res = false;
		try {
        	String sql="DELETE FROM user WHERE usrid=?";
        	DatabaseUtil dUtils = new DatabaseUtil();
        	Connection conn=(Connection) dUtils.getConnection();
        	
        	PreparedStatement statement=(PreparedStatement) conn.prepareStatement(sql);
        	statement.setInt(1, userId);
        	
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
	}

	@Override
	public List findUserById(Integer userId) {
		Userpojo user = null;
		List list = new ArrayList();
		try {
        	String sql="select * from user where usrid = ?";
        	DatabaseUtil dUtils = new DatabaseUtil();
        	Connection conn=(Connection) dUtils.getConnection();
        	
        	PreparedStatement statement=(PreparedStatement) conn.prepareStatement(sql);
        	statement.setInt(1, userId);
        	ResultSet rs=statement.executeQuery();
        	if(rs.next()){
        		user = new Userpojo();
        		user.setUserid(rs.getInt("usrid"));
        		user.setUsername(rs.getString("username"));
        		user.setUserpwd(rs.getString("userpwd"));
        		user.setUtypeID(rs.getInt("utypeID"));
        		list.add(user);
        		
        	}
        	rs.close();
        	statement.close();
        	conn.close();
        	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	

	

}
