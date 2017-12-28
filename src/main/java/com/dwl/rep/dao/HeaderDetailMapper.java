package com.dwl.rep.dao;

import com.dwl.rep.pojo.HeaderDetail;

public interface HeaderDetailMapper {
    int deleteByPrimaryKey(String id);

    int insert(HeaderDetail record);

    int insertSelective(HeaderDetail record);

    HeaderDetail selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(HeaderDetail record);

    int updateByPrimaryKey(HeaderDetail record);
}