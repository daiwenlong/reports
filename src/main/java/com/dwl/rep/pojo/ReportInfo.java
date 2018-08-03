package com.dwl.rep.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.dwl.rep.common.Strings;

public class ReportInfo implements Serializable{
    
	private static final long serialVersionUID = 1L;

	private String repId;

    private String repName;

    private String templet;

    private String result;
    
    private String dataId;

    private String isCache;

    private String cornTime;

    private Date updateTime;
    
    private String hasSecHead1;
    
    private String hasSecHead2;
    
    private List<ReportDetail> details;
    
    private List<Object> data;
    
    private String dataList;
    
    public void init(){
    	Map<String, String> data = new HashMap<>();
    	String[] array = Strings.splitIgnoreBlank(dataId);
    	for(String item:array){
    		data.put(item, "1");
    	}
    	this.dataList = JSON.toJSONString(data);
    	
    }
    
    
    public List<Object> getData() {
		return data;
	}


	public void setData(List<Object> data) {
		this.data = data;
	}


	public List<ReportDetail> getDetails() {
		return details;
	}

	public void setDetails(List<ReportDetail> details) {
		this.details = details;
	}
	

	public String getDataList() {
		return dataList;
	}

	public void setDataList(String dataList) {
		this.dataList = dataList;
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

	public String getDataId() {
		return dataId;
	}

	public void setDataId(String dataId) {
		this.dataId = dataId;
	}

    
    
}