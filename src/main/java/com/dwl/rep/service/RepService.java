package com.dwl.rep.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dwl.rep.dao.ReportInfoMapper;
import com.dwl.rep.pojo.ReportInfo;

@Service("repService")
public class RepService {
	
	@Resource
	private ReportInfoMapper repMapper;
	
	public List<ReportInfo> getRepList(){
		return repMapper.getInfoList();
	}
}
