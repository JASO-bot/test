package com.demo.entity.Firstpage;

import java.util.Date;

public class FirstpagePojo {
	 private int aid;   
     private String atopic;   /*标题*/
     private Date atime;   /* 时间*/
     private String awords;   /*内容*/
		
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
		public String getAwords() {
			return awords;
		}
		public void setAwords(String awords) {
			this.awords = awords;
		}
     
     
}
