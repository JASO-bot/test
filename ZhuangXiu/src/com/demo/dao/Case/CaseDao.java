package com.demo.dao.Case;

import java.sql.SQLException;
import java.util.List;

import com.demo.entity.Case.CasePojo;



public interface CaseDao {
	//显示所有案例信息
		public List<CasePojo> getCasePojos() throws SQLException;
		// 通过设计师id查找案例
	    public List<CasePojo> getCaseByid(int id) throws SQLException;
	    // 添加案例
	    public int addCase(CasePojo casePojo) throws SQLException;
	    //根据设计师id修改案例信息
	    public int updateCase(CasePojo casePojo) throws SQLException;
	    // 根据设计师id删除案例
	    public int deleteCaseByid(int id) throws SQLException;
	    //分页
	    public int getCaseTotalCount();
	    //分页2
		public List<CasePojo> getCaseListByPage(int pageNo,int pageSize);
}
