package com.demo.dao.firstpage;

import java.sql.SQLException;
import java.util.List;

import com.demo.entity.Firstpage.FirstpagePojo;

public interface FirstpageDao {
   
	
	//显示所有轮播图信息
		public List<FirstpagePojo> getfirstpage() throws SQLException;
		// 通过aid查找轮播图信息
	    public List<FirstpagePojo> getfirstpageByaid(int aid) throws SQLException;
	    // 添加轮播图信息
	    public int addFirstpage(FirstpagePojo firstpagePojo) throws SQLException;
	    //根据aid修改轮播图信息
	    public int updateFirstpage(FirstpagePojo firstpagePojo) throws SQLException;
	    // 根据aid删除轮播图信息
	    public int deleteFirstpageByaid(int aid) throws SQLException;
}
