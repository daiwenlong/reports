package com.dwl.rep.dao;

import com.dwl.rep.pojo.NumInfo;

public interface NumInfoMapper {
    int deleteByPrimaryKey(String numId);

    int insert(NumInfo record);

    int insertSelective(NumInfo record);

    NumInfo selectByPrimaryKey(String numId);

    int updateByPrimaryKeySelective(NumInfo record);

    int updateByPrimaryKey(NumInfo record);
}