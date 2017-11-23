package com.dwl.rep.common;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;

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
	
	private static Map<String, BasicDataSource> dbMap = new HashMap<>();
	
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
	public BasicDataSource createDataSource(DbInfo dbInfo){
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName(dbInfo.getDbType());
		dataSource.setUrl(dbInfo.getDbAddress());
		dataSource.setUsername(dbInfo.getUserId());
		dataSource.setPassword(dbInfo.getPassword());
		if("1".equals(dbInfo.getLevel())){
			dataSource.setInitialSize(5);
			dataSource.setMinIdle(5);
	        dataSource.setMaxActive(10);
	        dataSource.setMaxIdle(20);
	        dataSource.setMaxWait(1000);
		}else if("2".equals(dbInfo.getLevel())){
			dataSource.setInitialSize(10);
			dataSource.setMinIdle(10);
	        dataSource.setMaxActive(20);
	        dataSource.setMaxIdle(40);
	        dataSource.setMaxWait(1000);
		}else{
			dataSource.setInitialSize(20);
			dataSource.setMinIdle(20);
	        dataSource.setMaxActive(50);
	        dataSource.setMaxIdle(100);
	        dataSource.setMaxWait(1000);
		}
		return dataSource;
		
	}
	
	
	/**
	 * 移除数据源
	 * @param dbInfo
	 */
	public void removeDataSource(DbInfo dbInfo){
		BasicDataSource dataSource = dbMap.get(dbInfo.getId());
		if(dataSource != null){
			try {
				dataSource.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		dbMap.remove(dbInfo.getId());
		
	}
	

}
