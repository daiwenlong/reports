package com.dwl.rep.dao;

import java.util.List;

import com.dwl.rep.pojo.HeaderInfo;

public interface HeaderInfoMapper {
    int deleteByPrimaryKey(String headerId);

    int insert(HeaderInfo record);

    int insertSelective(HeaderInfo record);

    HeaderInfo selectByPrimaryKey(String headerId);
    
    HeaderInfo selectWithDetailByPrimaryKey(String headerId);

    int updateByPrimaryKeySelective(HeaderInfo record);

    int updateByPrimaryKey(HeaderInfo record);
    
    List<HeaderInfo> selectInfoList();
}