package com.dwl.rep.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.dwl.rep.pojo.DataInfo;
import com.dwl.rep.pojo.DbInfo;


/**
 * sql执行类
 * @author dwl
 *
 */
public class SqlEexecuter {
	
	private SqlEexecuter(){
		
	}
	
	private static Logger logger = Logger.getLogger(SqlEexecuter.class);
	
	private static SqlEexecuter sqlEexecuter = null;
	
	
	/**
	 * 获取单例
	 * @return
	 */
	public static SqlEexecuter getInstance(){
		if(sqlEexecuter == null){
			synchronized (SqlEexecuter.class) {
				if(sqlEexecuter == null)
					sqlEexecuter = new SqlEexecuter();
			}
		}
		return sqlEexecuter;			
	}
	
	
	
	/**
	 * 获取数据项结果
	 * @param dataInfo
	 * @return
	 */
	public Map<String, Object> getResult(DataInfo dataInfo){
		String[] params = Strings.splitIgnoreBlank(dataInfo.getParams());
		Map<String, Object> data = executeQuery(dataInfo.getSql(), params, dataInfo.getDbInfo());
		return data;
	}
	
	/**
	 * 执行sql
	 * @param sql
	 * @param params
	 * @param dbInfo
	 * @return
	 */
	public Map<String, Object> executeQuery(String sql,String[] params,DbInfo dbInfo){
		Map<String, Object> result = new HashMap<>();
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		ResultSet resultSet = null;
		Connection connection = null;
		PreparedStatement pstat = null;
		try {
			connection = DbUtil.getInstance().getConnection(dbInfo);
			pstat = connection.prepareStatement(sql);
			for(int i=0;i<params.length;i++){
				pstat.setString(i+1, params[i]);
			}
			resultSet = pstat.executeQuery();
		    logger.info(sql+" - 执行完毕");
		    ResultSetMetaData metaData = resultSet.getMetaData();
			int cols_len = metaData.getColumnCount();
			StringBuilder builder = new StringBuilder();
			for(int i = 1; i < cols_len; i++){
				builder.append(metaData.getColumnLabel(i)).append("+");
	    	}
			builder.deleteCharAt(builder.length()-1);
		    while(resultSet.next()){
		    	Map<String, Object> map = new HashMap<>();
		    	String colName;
		    	for(int i = 0; i < cols_len; i++){
		    		map.put(colName = metaData.getColumnLabel(i + 1), resultSet.getString(colName));
		    	}
		    	list.add(map);
		    }
		    result.put(builder.toString(), list);
		    result.put(Constants.KEY, builder.toString());
		} catch (SQLException e) {
			logger.info(sql+" - 执行异常");
			e.printStackTrace();
		} finally {
			if(resultSet != null){
				try {resultSet.close();} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(pstat != null){
				try {pstat.close();} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(connection != null){
				try {connection.close();} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
		
	}
	
	
	

}
