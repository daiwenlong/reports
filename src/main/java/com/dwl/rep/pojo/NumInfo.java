package com.dwl.rep.pojo;

/**
 * 取号
 * @author dwl
 *
 */
public class NumInfo {
    /**
     * 主键
     */
    private String numId;

    /**
     * 前缀
     */
    private String numPre;

    /**
     * 补位
     */
    private Integer numLen;

    /**
     * 当前序号
     */
    private Integer numNow;

    public String getNumId() {
        return numId;
    }

    public void setNumId(String numId) {
        this.numId = numId;
    }

    public String getNumPre() {
        return numPre;
    }

    public void setNumPre(String numPre) {
        this.numPre = numPre;
    }

    public Integer getNumLen() {
        return numLen;
    }

    public void setNumLen(Integer numLen) {
        this.numLen = numLen;
    }

    public Integer getNumNow() {
        return numNow;
    }

    public void setNumNow(Integer numNow) {
        this.numNow = numNow;
    }
}