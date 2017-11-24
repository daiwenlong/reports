package com.dwl.rep.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dwl.rep.dao.DbInfoMapper;
import com.dwl.rep.pojo.DbInfo;

@Service("dbService")
public class DbService {
	
	@Resource
	private DbInfoMapper dbInfoMapper;
	
	public List<DbInfo> getInfoList(){	
		return dbInfoMapper.getInfoList();		
	}

}
