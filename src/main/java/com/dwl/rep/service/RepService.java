package com.dwl.rep.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;
import com.dwl.rep.common.Strings;
import com.dwl.rep.dao.DataInfoMapper;
import com.dwl.rep.dao.HeaderInfoMapper;
import com.dwl.rep.dao.ReportDetailMapper;
import com.dwl.rep.dao.ReportInfoMapper;
import com.dwl.rep.pojo.ReportInfo;

@Service("repService")
public class RepService {
	
	@Resource
	private ReportInfoMapper repMapper;
	
	@Resource
	private ReportDetailMapper reportDetailMapper;
	
	@Resource
	private HeaderInfoMapper headerInfoMapper;
	
	@Resource
	private DataInfoMapper dataInfoMapper;
	
	public List<ReportInfo> getRepList(){
		return repMapper.getInfoList();
	}
	
	public ReportInfo getInfoById(String repId){
		return repMapper.selectByPrimaryKey(repId);
	}
	
	public ReportInfo getInfoWithDataById(String repId){
		ReportInfo reportInfo = repMapper.selectByPrimaryKey(repId);
		String[] dataId = Strings.splitIgnoreBlank(reportInfo.getDataId());
		List<Object> list = new ArrayList<>();
		for(String id :dataId){
			List<Object> map = JSONArray.parseArray(dataInfoMapper.selectByPrimaryKey(id).getResult());
			list.addAll(map);
		}
		reportInfo.setData(list);
		return reportInfo;
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
		reportInfo.init();
		return reportInfo;
	}
	
	
	public int updateRepInfo(ReportInfo reportInfo){
		reportDetailMapper.deleteByRepId(reportInfo.getRepId());
		reportInfo.getDetails().forEach(info->{
			if(!Strings.isEmpty(info.getHeaderId())){
				info.setId(UUID.randomUUID().toString());
				info.setRepId(reportInfo.getRepId());
				reportDetailMapper.insert(info);
			}
		});
		reportInfo.setUpdateTime(new Date());
		return repMapper.updateByPrimaryKey(reportInfo);
	}
	
	public int updateRepInfoOnly(ReportInfo reportInfo){
		reportInfo.setUpdateTime(new Date());
		return repMapper.updateByPrimaryKeySelective(reportInfo);
	}
	
	public int insertRepInfo(ReportInfo reportInfo){
		reportInfo.getDetails().forEach(info->{
			if(!Strings.isEmpty(info.getHeaderId())){
				info.setId(UUID.randomUUID().toString());
				info.setRepId(reportInfo.getRepId());
				reportDetailMapper.insert(info);
			}
		});
		return repMapper.insert(reportInfo);
	}
	
	public int deleteRepInfo(String repId){
		reportDetailMapper.deleteByRepId(repId);
		return repMapper.deleteByPrimaryKey(repId);
	}
}
