package com.demo.entity.action;

import java.util.Date;

public class Action {
	private int aid;	//编号
	private String atopic;//标题
	private Date atime;//时间
	private String author;//作者
	private String awords;//内容
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAtopic() {
		return atopic;
	}
	public void setAtopic(String atopic) {
		this.atopic = atopic;
	}
	public Date getAtime() {
		return atime;
	}
	public void setAtime(Date atime) {
		this.atime = atime;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getAwords() {
		return awords;
	}
	public void setAwords(String awords) {
		this.awords = awords;
	}
	

}
