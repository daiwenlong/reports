package com.dwl.rep.common;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import com.dwl.rep.pojo.DbInfo;

/**
 * 数据源工具
 * @author dwl
 *
 */
public class DbUtil {
	
	private DbUtil(){
		
	}
	
	private static DbUtil dbUtil= null;
	
	private static Map<String, DataSource> dbMap = new HashMap<>();
	
	
	/**
	 * 获取单例
	 * @return
	 */
	public static DbUtil getInstance(){
		if(dbUtil == null){
			synchronized (DbUtil.class) {
				if(dbUtil == null)
					dbUtil = new DbUtil();
			}
		}
		return dbUtil;			
	}
	
	/**
	 * 获取数据库连接
	 * @param dbInfo
	 * @return
	 * @throws SQLException
	 */
	public Connection getConnection(DbInfo dbInfo) throws SQLException{
		if(!dbMap.containsKey(dbInfo.getId())){
			addDataSource(dbInfo);
		}
		return dbMap.get(dbInfo.getId()).getConnection();
	}
	
	/**
	 * 添加数据源
	 * @param dbInfo
	 */
	public void addDataSource(DbInfo dbInfo){
		synchronized (DbUtil.class) {
			if(!dbMap.containsKey(dbInfo.getId())){
				dbMap.put(dbInfo.getId(), createDataSource(dbInfo));
			}
		}
	}
	
	/**
	 * 创建数据源
	 * @param dbInfo
	 * @return
	 */
	public DataSource createDataSource(DbInfo dbInfo){
		return null;
		
	}
	

}
