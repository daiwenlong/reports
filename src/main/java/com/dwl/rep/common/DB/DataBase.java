package com.dwl.rep.common.DB;

import org.apache.commons.dbcp.BasicDataSource;

import com.dwl.rep.pojo.DbInfo;

/**
 * 数据源
 * @author dwl
 *
 */
public interface DataBase {
	
	/**
	 * 返回驱动
	 * @return
	 */
	String getDriver();
	
	/**
	 * 返回测试连接sql
	 * @return
	 */
	String getLinkSql();
	
	/**
	 * 返回数据库类型
	 * @return
	 */
	String getDbType();
	
	/**
	 * 返回数据源
	 * @return
	 */
	default BasicDataSource getDataSource(DbInfo dbInfo){
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName(this.getDriver());
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

}
