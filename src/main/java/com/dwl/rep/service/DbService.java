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
		return dbInfoMapper.insert(dnInfo);
	}
	
	public int updateDbInfo(DbInfo dbInfo){
		return dbInfoMapper.updateByPrimaryKey(dbInfo);
	}
	
	public int delectInfoById(String Id){
		return dbInfoMapper.deleteByPrimaryKey(Id);
	}
	
	/**
	 * 判断数据源是否被使用
	 * @param Id
	 * @return 使用返回true
	 */
	public boolean isDbUsed(String Id){
		int count = dbInfoMapper.usedCount(Id);
		if(count>0)
			return true;
		return false;
	}
	

}
