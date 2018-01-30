package com.dwl.rep.common.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.log4j.Logger;

import com.dwl.rep.common.db.impl.MySQLBase;
import com.dwl.rep.common.db.impl.OracleBase;
import com.dwl.rep.common.db.impl.PostgreSQLBase;
import com.dwl.rep.common.db.impl.SQLServerBase;
import com.dwl.rep.common.db.impl.SQLiteBase;
import com.dwl.rep.pojo.DbInfo;

public class DataBaseFactory {
	
	private DataBaseFactory(){
		
	}
	
	private static DataBaseFactory dataBaseFactory = null;
	
	private static Map<String, BasicDataSource> dbMap = new HashMap<>();
	
	private static Logger logger = Logger.getLogger(DataBaseFactory.class);
	
	public enum BaseType{
		
		MySQL,Oracle,PostgreSQL,SQLite,SQLServer
		
	}
	
	/**
	 * 获取单例
	 * @return
	 */
	public static DataBaseFactory getInstance(){
		if(dataBaseFactory == null){
			synchronized(DataBaseFactory.class){
				if(dataBaseFactory == null)
					dataBaseFactory = new DataBaseFactory();
			} 
		}
		return dataBaseFactory;
	}
	
	
	/**
	 * 获取数据库信息
	 * @param dbInfo
	 * @return
	 */
	public DataBase getDataBase(DbInfo dbInfo){
		DataBase dataBase = null;
		BaseType type =BaseType.valueOf(dbInfo.getDbType());
		switch (type) {
		case MySQL:
			dataBase = new MySQLBase();
			break;
		case Oracle:
			dataBase = new OracleBase();
			break;
		case PostgreSQL:
			dataBase = new PostgreSQLBase();
			break;
		case SQLite:
			dataBase = new SQLiteBase();
			break;
		case SQLServer:
			dataBase = new SQLServerBase();
			break;
		default:
			break;
		}
		return dataBase;
	}
	
	/**
	 * 获取数据库连接
	 * @param dbInfo
	 * @return
	 * @throws SQLException
	 */
	public Connection getConnection(DbInfo dbInfo){
		Connection connection = null;
		if(!dbMap.containsKey(dbInfo.getId()))
			addDataSource(dbInfo);
		try {
			connection = dbMap.get(dbInfo.getId()).getConnection();
		} catch (SQLException e) {
			removeDataSource(dbInfo);
			logger.info(dbInfo.getDbName()+" -无法获取连接！");
			e.printStackTrace();
		}
		return connection;
	}
	
	/**
	 * 添加数据源
	 * @param dbInfo
	 */
	public void addDataSource(DbInfo dbInfo){
		synchronized (DataBaseFactory.class) {
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
		logger.info("创建数据源："+dbInfo.getDbName());
		BasicDataSource dataSource =getDataBase(dbInfo).getDataSource(dbInfo);
		logger.info(dbInfo.getDbName()+" - 创建成功");
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
				dbMap.remove(dbInfo.getId());
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		logger.info(dbInfo.getDbName()+" - 移除成功");
	}
	
	
	/**
	 * 测试连接
	 * @param dbInfo
	 * @throws SQLException
	 */
	public boolean testConnection(DbInfo dbInfo){
		Connection conn = getConnection(dbInfo);
		if(conn == null)
			return false;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(getDataBase(dbInfo).getLinkSql());
			if(rs.next())
				logger.info(getDataBase(dbInfo).getLinkSql() + " ----> " + rs.getString(1));
			return true;
		} catch (SQLException e) {
			return false;
		} finally {
			if(rs != null){
				try {rs.close();} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt != null){
				try {stmt.close();} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null){
				try {conn.close();} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

	}
	

}
