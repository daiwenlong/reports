package com.dwl.rep.dao;

import java.util.List;

import com.dwl.rep.pojo.DbInfo;

public interface DbInfoMapper {
    int deleteByPrimaryKey(String id);

    int insert(DbInfo record);

    int insertSelective(DbInfo record);

    DbInfo selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(DbInfo record);

    int updateByPrimaryKey(DbInfo record);
    
    List<DbInfo> getInfoList();
    
    int usedCount(String id);
}