package com.dwl.rep.dao;

import java.util.List;

import com.dwl.rep.pojo.ReportInfo;

public interface ReportInfoMapper {
    int deleteByPrimaryKey(String repId);

    int insert(ReportInfo record);

    int insertSelective(ReportInfo record);

    ReportInfo selectByPrimaryKey(String repId);
    
    ReportInfo selectWithDetailById(String repId);

    int updateByPrimaryKeySelective(ReportInfo record);

    int updateByPrimaryKey(ReportInfo record);
    
    List<ReportInfo> getInfoList();
    
    List<ReportInfo> selectCacheRepInfo();
}