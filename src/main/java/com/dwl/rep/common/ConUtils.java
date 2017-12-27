package com.dwl.rep.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

/**
 * 常用工具类
 * @author dwl
 *
 */
public class ConUtils {
	
	/**
	 * 分页方法
	 * @param request
	 */
	public static <E> Page<E> setPage(HttpServletRequest request){
		int pageNum = Integer.valueOf(request.getParameter("page")==null?"1":request.getParameter("page"));
		Page<E> page =PageHelper.startPage(pageNum, 10);
		return page;
	}
	
	/**
	 * 处理数据项数据
	 * @return
	 */
	public static String dataToJson(Map<String, Object> data){
		String key = (String) data.get(Constants.KEY);
		@SuppressWarnings("unchecked")
		List<Map<String, Object>>  result = (List<Map<String, Object>>) data.get(key);
		String[] columns = Strings.splitIgnoreBlank(key,"\\+"); 
		Map<String, Object> kvData = new HashMap<>();
		result.forEach(item->{
			StringBuilder builder = new StringBuilder();
			for(int i = 0; i < columns.length; i++){
				builder.append(item.get(columns[i])).append("+");
	    	}
			builder.deleteCharAt(builder.length()-1).toString();
			kvData.put(builder.toString(), item.get(Constants.VALUE));
		});
		return JSON.toJSONString(kvData);
	}

}
