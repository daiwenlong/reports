package com.dwl.rep.pojo;

public class DbInfo {
    /**
     * 主键
     */
    private String id;

    /**
     * 数据源名称
     */
    private String dbName;

    /**
     * 数据库类型
     */
    private String dbType;

    /**
     * 数据库地址
     */
    private String dbAddress;

    /**
     * 用户名
     */
    private String userId;

    /**
     * 密码
     */
    private String password;

    /**
     * 
     */
    private String level;

    /**
     * 状态
     */
    private String status;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

    public String getDbType() {
        return dbType;
    }

    public void setDbType(String dbType) {
        this.dbType = dbType;
    }

    public String getDbAddress() {
        return dbAddress;
    }

    public void setDbAddress(String dbAddress) {
        this.dbAddress = dbAddress;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}