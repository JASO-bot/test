package com.demo.entity.user;

/**
 * 用户�?
 */
public class Userpojo {

    private Integer userid;

    private String username;

    private String userpwd;

    private Integer utypeID;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

    public Integer getUtypeID() {
        return utypeID;
    }

    public void setUtypeID(Integer utypeID) {
        this.utypeID = utypeID;
    }

    @Override
    public String toString() {
        return "User{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", userpwd='" + userpwd + '\'' +
                ", utypeID=" + utypeID +
                '}';
    }
}
