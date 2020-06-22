package com.demo.service.Designer;

import java.sql.SQLException;
import java.util.List;

import com.demo.entity.Designer.DesignerPojo;


public interface DesignerService {
	
	//获取所有设计师信息
	public List<DesignerPojo> getDesigner() throws SQLException;
	// 通过设计师id查找设计师
    public List<DesignerPojo> getDesignerBydid(int nid) throws SQLException;
    // 添加设计师
    public int addDesigner(DesignerPojo designerPojo) throws SQLException;
    //根据设计师id修改设计师信息
    public int updateDesigner(DesignerPojo designerPojo) throws SQLException;
    // 根据设计师id删除设计师
    public int deleteDesignerBydid(int nid) throws SQLException;
    //分页
    public int getDesignerTotalCount();
    //分页2
	public List<DesignerPojo> getDesignerListByPage(int pageNo,int pageSize);
}
