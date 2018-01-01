package com.dwl.rep.dao;

import java.util.List;

import com.dwl.rep.pojo.DataInfo;

public interface DataInfoMapper {
    int deleteByPrimaryKey(String id);

    int insert(DataInfo record);

    int insertSelective(DataInfo record);

    DataInfo selectByPrimaryKey(String id);
    
    DataInfo selectWithDbByPrimaryKey(String id);

    int updateByPrimaryKeySelective(DataInfo record);

    int updateByPrimaryKey(DataInfo record);
    
    List<DataInfo> selectInfoList();
    
    List<DataInfo> selectInfoListWithDb();
    
    
}