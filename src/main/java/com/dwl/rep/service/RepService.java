package com.dwl.rep.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dwl.rep.common.Strings;
import com.dwl.rep.dao.HeaderInfoMapper;
import com.dwl.rep.dao.ReportInfoMapper;
import com.dwl.rep.pojo.ReportInfo;

@Service("repService")
public class RepService {
	
	@Resource
	private ReportInfoMapper repMapper;
	
	@Resource
	private HeaderInfoMapper headerInfoMapper;
	
	public List<ReportInfo> getRepList(){
		return repMapper.getInfoList();
	}
	
	public ReportInfo getInfoById(String repId){
		return repMapper.selectByPrimaryKey(repId);
	}
	
	public ReportInfo getInfoWithDeal(String repId){
		ReportInfo reportInfo = repMapper.selectWithDetailById(repId);
		reportInfo.setHasSecHead1("0");
		reportInfo.setHasSecHead2("0");
		reportInfo.getDetails().forEach(info->{
			info.setHeaderInfo(headerInfoMapper.selectWithDetailByPrimaryKey(info.getHeaderId()));
			if(!Strings.isEmpty(info.getSecHeaderId())){
				info.setSecHeaderInfo(headerInfoMapper.selectWithDetailByPrimaryKey(info.getSecHeaderId()));
				if("0".equals(info.getType()))
					reportInfo.setHasSecHead1("1");//拥有2级横表头
				else
					reportInfo.setHasSecHead2("1");//拥有2级竖表头		
			}
		});
		return reportInfo;
	}
	
	public ReportInfo getInfoWithDetail(String repId){
		ReportInfo reportInfo = repMapper.selectWithDetailById(repId);
		reportInfo.getDetails().forEach(info->{
			info.setHeaderInfo(headerInfoMapper.selectWithDetailByPrimaryKey(info.getHeaderId()));
			if(!Strings.isEmpty(info.getSecHeaderId())){
				info.setSecHeaderInfo(headerInfoMapper.selectWithDetailByPrimaryKey(info.getSecHeaderId()));		
			}
		});
		return reportInfo;
	}
	
	
	public int updateRepInfo(ReportInfo reportInfo){
		return repMapper.updateByPrimaryKey(reportInfo);
	}
}
