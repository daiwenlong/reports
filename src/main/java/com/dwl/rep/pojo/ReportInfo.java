package com.dwl.rep.pojo;

import java.util.Date;
import java.util.List;

/**
 * 报表实体
 * @author dwl
 *
 */
public class ReportInfo {
	
    /**
     * 主键
     */
    private String repId;

    /**
     * 报表名称
     */
    private String repName;

    /**
     * 行求和
     */
    private String rowSum;

    /**
     * 列求和
     */
    private String colSum;

    /**
     * 是否缓存
     */
    private String isCache;

    /**
     * corn表达式
     */
    private String cornTime;

    /**
     * 更新时间
     */
    private Date updateTime;

    /**
     * 初始化模板
     */
    private String templet;
    
    /**
     * 行列相关信息
     */
    private List<ReportDetail> details;

    public String getRepId() {
        return repId;
    }

    public void setRepId(String repId) {
        this.repId = repId;
    }

    public String getRepName() {
        return repName;
    }

    public void setRepName(String repName) {
        this.repName = repName;
    }

    public String getRowSum() {
        return rowSum;
    }

    public void setRowSum(String rowSum) {
        this.rowSum = rowSum;
    }

    public String getColSum() {
        return colSum;
    }

    public void setColSum(String colSum) {
        this.colSum = colSum;
    }

    public String getIsCache() {
        return isCache;
    }

    public void setIsCache(String isCache) {
        this.isCache = isCache;
    }

    public String getCornTime() {
        return cornTime;
    }

    public void setCornTime(String cornTime) {
        this.cornTime = cornTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getTemplet() {
        return templet;
    }

    public void setTemplet(String templet) {
        this.templet = templet;
    }

	public List<ReportDetail> getDetails() {
		return details;
	}

	public void setDetails(List<ReportDetail> details) {
		this.details = details;
	}
    
}