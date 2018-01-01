package com.dwl.rep.dao;

import com.dwl.rep.pojo.ReportDetail;

public interface ReportDetailMapper {
    int deleteByPrimaryKey(String id);

    int insert(ReportDetail record);

    int insertSelective(ReportDetail record);

    ReportDetail selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(ReportDetail record);

    int updateByPrimaryKey(ReportDetail record);
    
    int deleteByRepId(String repId);
    
    
}