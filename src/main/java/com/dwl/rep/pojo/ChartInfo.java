package com.dwl.rep.pojo;

import java.util.Date;

/**
 * 图表实体类
 * @author dwl
 *
 */
public class ChartInfo {
    private String chartId;

    private String chartName;

    private String chartType;

    private String result;

    private String isCache;

    private String cornTime;

    private Date updateTime;

    private String dataId;

    public String getChartId() {
        return chartId;
    }

    public void setChartId(String chartId) {
        this.chartId = chartId;
    }

    public String getChartName() {
        return chartName;
    }

    public void setChartName(String chartName) {
        this.chartName = chartName;
    }

    public String getChartType() {
        return chartType;
    }

    public void setChartType(String chartType) {
        this.chartType = chartType;
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

    public String getDataId() {
        return dataId;
    }

    public void setDataId(String dataId) {
        this.dataId = dataId;
    }
}