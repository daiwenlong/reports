package com.dwl.rep.service;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dwl.rep.common.Strings;
import com.dwl.rep.dao.DbInfoMapper;
import com.dwl.rep.pojo.DbInfo;

@Service("dbService")
public class DbService {
	
	@Resource
	private DbInfoMapper dbInfoMapper;
	
	public List<DbInfo> getInfoList(){	
		return dbInfoMapper.getInfoList();		
	}
	
	public DbInfo getInfoById(String Id){
		return dbInfoMapper.selectByPrimaryKey(Id);
	}
	
	public int saveDbInfo(DbInfo dnInfo){
		if(Strings.isEmpty(dnInfo.getId()))
			dnInfo.setId(UUID.randomUUID().toString());
		return dbInfoMapper.insert(dnInfo);
	}
	
	public int updateDbInfo(DbInfo dbInfo){
		return dbInfoMapper.updateByPrimaryKey(dbInfo);
	}

}
