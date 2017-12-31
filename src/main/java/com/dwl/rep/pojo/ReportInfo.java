package com.dwl.rep.pojo;

import java.util.Date;
import java.util.List;

public class ReportInfo {
    private String repId;

    private String repName;

    private String templet;

    private String result;

    private String isCache;

    private String cornTime;

    private Date updateTime;
    
    private String hasSecHead1;
    
    private String hasSecHead2;
    
    private List<ReportDetail> details;

    public List<ReportDetail> getDetails() {
		return details;
	}

	public void setDetails(List<ReportDetail> details) {
		this.details = details;
	}

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

    public String getTemplet() {
        return templet;
    }

    public void setTemplet(String templet) {
        this.templet = templet;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
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

	public String getHasSecHead1() {
		return hasSecHead1;
	}

	public void setHasSecHead1(String hasSecHead1) {
		this.hasSecHead1 = hasSecHead1;
	}

	public String getHasSecHead2() {
		return hasSecHead2;
	}

	public void setHasSecHead2(String hasSecHead2) {
		this.hasSecHead2 = hasSecHead2;
	}

    
    
}