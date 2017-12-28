package com.dwl.rep.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dwl.rep.dao.HeaderDetailMapper;
import com.dwl.rep.dao.HeaderInfoMapper;
import com.dwl.rep.pojo.HeaderInfo;

@Service("headerService")
public class HeaderService {
	
	@Resource
	private HeaderInfoMapper headerInfoMapper;
	
	
	@Resource
	private HeaderDetailMapper headerDetailMapper;
	
	public HeaderInfo getHeaderWithDetail(String id){
		return headerInfoMapper.selectWithDetailByPrimaryKey(id);
	}
	
	public List<HeaderInfo> getHeadList(){
		return headerInfoMapper.selectInfoList();
	}
	

}
