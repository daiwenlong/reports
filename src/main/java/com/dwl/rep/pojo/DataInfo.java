package com.dwl.rep.pojo;

import java.util.Date;

/**
 * 数据项实体
 * @author dwl
 *
 */
public class DataInfo {
    /**
     * 主键
     */
    private String id;

    /**
     * 数据源id
     */
    private String dbId;

    /**
     * 数据名称
     */
    private String dataName;

    /**
     * sql串
     */
    private String sql;

    /**
     * 数据结果
     */
    private String result;

    /**
     * 更新时间
     */
    private Date updateTime;
    
    /**
     * 数据源
     */
    private DbInfo dbInfo;
    
    /**
     * 参数
     */
    private String params;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDbId() {
        return dbId;
    }

    public void setDbId(String dbId) {
        this.dbId = dbId;
    }

    public String getDataName() {
        return dataName;
    }

    public void setDataName(String dataName) {
        this.dataName = dataName;
    }

    public String getSql() {
        return sql;
    }

    public void setSql(String sql) {
        this.sql = sql;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

	public DbInfo getDbInfo() {
		return dbInfo;
	}

	public void setDbInfo(DbInfo dbInfo) {
		this.dbInfo = dbInfo;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}
	
	
    
    
}