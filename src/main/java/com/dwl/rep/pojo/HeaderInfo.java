package com.dwl.rep.pojo;

import java.io.Serializable;
import java.util.List;

/**
 * 表头实体
 * @author dwl
 *
 */
public class HeaderInfo implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * 主键
     */
    private String headerId;

    /**
     * 表头代码
     */
    private String headerDm;

    /**
     * 表头名称
     */
    private String headerName;

    /**
     * 表头详情
     */
    private List<HeaderDetail> details;

    public List<HeaderDetail> getDetails() {
		return details;
	}

	public void setDetails(List<HeaderDetail> details) {
		this.details = details;
	}
	
	public String getHeaderId() {
	    return headerId;
    }

	public void setHeaderId(String headerId) {
        this.headerId = headerId;
    }
	
    public String getHeaderDm() {
        return headerDm;
    }

    public void setHeaderDm(String headerDm) {
        this.headerDm = headerDm;
    }

    public String getHeaderName() {
        return headerName;
    }

    public void setHeaderName(String headerName) {
        this.headerName = headerName;
    }
}