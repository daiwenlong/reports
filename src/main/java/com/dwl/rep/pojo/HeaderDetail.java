package com.dwl.rep.pojo;

/**
 * 表头详细实体
 * @author dwl
 *
 */
public class HeaderDetail {
    /**
     * 主键
     */
    private String id;

    /**
     * 外键
     */
    private String headerId;

    /**
     * 数据映射key
     * （可为空）
     */
    private String key;

    /**
     * 表头显示名称
     */
    private String value;

    /**
     * 顺序
     */
    private Integer orders;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHeaderId() {
        return headerId;
    }

    public void setHeaderId(String headerId) {
        this.headerId = headerId;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }
}