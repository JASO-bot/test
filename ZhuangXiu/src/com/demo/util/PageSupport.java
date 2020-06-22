package com.demo.util;

public class PageSupport {//ҳ�湤����

	//��ǰҳ��
	private int pageNo;
	//������������(������������)
	private int totalCount;
	//ҳ������ ҳ���С
	private int pageSize;
	//��ҳ��
	private int totalCountPage;
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		if (totalCount>0) {
			this.totalCount = totalCount;
			//������ҳ��
			//��ҳ��������������
			//100/10=10 50/10=5
			this.setTotalCountPageByResult();
		}
	}
	
	public void setTotalCountPageByResult(){
		if(this.totalCount%this.pageSize==0){
			//���������ȡ��ҳ������=0������ɱ�����
			this.totalCountPage=this.totalCount/this.pageSize;//������������/ҳ������
		}else if(this.totalCount%this.pageSize>0){
			this.totalCountPage=this.totalCount/this.pageSize+1;
		}
	}
	
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCountPage() {
		return totalCountPage;
	}
	public void setTotalCountPage(int totalCountPage) {
		this.totalCountPage = totalCountPage;
	}
	
	
}
